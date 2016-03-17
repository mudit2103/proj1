# Q0: Why is this error being thrown?
no pokemons exist yet

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
.sample returns a random element
common factor: trainer needs to be nil

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
button to takes arguments: the label on the button, the link (this can be found on rake routes and capture_path needs an id, so the id is that of the current pokemon), the class is a bootstrap thing and the method is which request (in this case patch)

# Question 3: What would you name your own Pokemon?
Swagmaster

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
redirect to was a path and it needed the id of the current trainer (or of the pokemon’s trainer)

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
at the bottom of application.html.er, error messages are shown using ‘render layouts/messages’. When we use flash[:error], an error message is created that exists only once. 


# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
