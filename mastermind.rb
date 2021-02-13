require './log/menu'
require './log/code_generator'
require './log/game_flow'
require './log/turn'
require './log/evaluator'
menu = Menu.new
code = CodeGenerator.new
game = GameFlow.new(code.secret_code)
turn = Turn.new
# evaluator = Evaluator.new


menu.intro
menu.receive_input
game.test_secret_code
game.game_intro
turn.user_input
# evaluator = Evaluator.new(turn_input.to_s.split(""))
# evaluator.has_won?
# evaluator.check_color
# evaluator.position
# evaluator.guess_hint
