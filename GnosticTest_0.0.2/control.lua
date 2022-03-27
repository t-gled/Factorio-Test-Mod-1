function foo(tableIn)

    local player = game.get_player(tableIn.player_index)
    local color = {r=0, g=0, b=1, a=1}

    player.print("This is a private test message to " .. player.name, color)
    game.print("This is a global test message")

end

commands.add_command("test_message", "This is a test command that sends a message", foo)