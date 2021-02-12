secret_code = ['r', 'g', 'b', 'y']

guess = ['r', 'g', 'y', 'y']

big_guess = secret_code - guess

pairs = secret_code.zip(guess)
# p pairs
count = pairs.count do |pair|
  pair[0] == pair[1]
end

colors = secret_code.length - big_guess.length
puts "'#{guess}' has #{colors} of the correct elements with #{count} in the correct positions. "
