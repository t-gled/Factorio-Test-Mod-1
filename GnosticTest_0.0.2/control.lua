function foo(tableIn) -- this command adds a command "/test_message" that says some stuff in the chat

    local player = game.get_player(tableIn.player_index)
    local color = {r=0, g=0, b=1, a=1}

    player.print("This is a private test message to " .. player.name, color)
    game.print("This is a global test message")

end

commands.add_command("test_message", "This is a test command that sends a message", foo)

function iron(tableIn) --this command adds a command "/give_iron_plates" that gives the player 100 iron plates

    local player = game.get_player(tableIn.player_index)
    local ironplatestack = {name="iron-plate", count = 100}
    
    player.insert(ironplatestack)

end

commands.add_command("give_iron_plates", "This command gives a stack of iron plates", iron)