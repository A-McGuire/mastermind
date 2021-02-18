class CodeGenerator

  def secret_code
    colors = ["r", "r", "r", "r", "g", "g", "g", "g",
              "b", "b", "b", "b", "y", "y", "y", "y"]

    @secret_code = colors.shuffle
    @secret_code[1..4]
  end
end
