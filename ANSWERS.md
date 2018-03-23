# Q0: Why is this error being thrown?

There's no Pokemon class yet! So it doesn't know what Pokemon is. :(

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

In the Home Controller, the index method randomly selects a wild pokemon (where the trainer associated to that pokemon is nil!)

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

The button makes it so when you click on it, it routes to the PATCH capture_path which is the capture method in the Pokemons controller while appending the id of the controller to the path. We can access this parameter in the controller with params[:id].

# Question 3: What would you name your own Pokemon?

Unclear

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

I passed in trainer_path(current_trainer.id)


# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

Flash is an dictionary that stores different error messages. If there is an error, it will retrieve the message! wow.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
