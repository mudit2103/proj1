class PokemonsController < ApplicationController




	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer_id = current_trainer.id
		@pokemon.save
		redirect_to root_path
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health = @pokemon.health - 10

		if @pokemon.health <= 0
			@pokemon.destroy
		else
			@pokemon.save
		end
		redirect_to trainer_path(@pokemon.trainer_id)
	end



	def create
		@pokemon = Pokemon.new post_params
		@pokemon.trainer_id = current_trainer.id
		@pokemon.health = 100
		@pokemon.level = 1

		if @pokemon.save == true
			@pokemon.save
			redirect_to trainer_path(@pokemon.trainer_id)
		else
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			redirect_to new_pokemon_path
		end
	end
	def new 
		@pokemon = Pokemon.new
	end


	private

	def post_params
		params.require(:pokemon).permit(:name)
	end

end
