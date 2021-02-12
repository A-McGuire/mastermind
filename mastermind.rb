require './log/menu'
menu = Menu.new
code = CodeGenerator.new
game = GameFlow.new(code.secret_code)

menu.intro
menu.receive_input
game.test_secret_code
game.game_intro
game.game_runner
