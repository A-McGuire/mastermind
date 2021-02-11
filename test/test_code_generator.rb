require 'minitest/autorun'
require 'minitest/pride'
require './log/code_generator'

class CodeGeneratorTest < Minitest::Test
  def test_it_exists
    code = CodeGenerator.new
    assert_instance_of CodeGenerator, code
  end

  def test_it_has_four_pegs
    code = CodeGenerator.new
    assert_equal 4, code.secret_code.length
  end
end
