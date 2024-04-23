class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
  # Replace all words 5 characters or longer with marklar, then replace all (inclusive of uppercase) 5 character+ words that aren't 'marklar' with Marklar
   str.gsub!(/\b[a-z0-9]{5,}\b/, 'marklar')
   str.gsub!(/\b[a-zA-Z0-9]{5,}\b(?<!marklar)/, 'Marklar')
   return str

  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    a = 1
    b = 0
    sum = 0
    x = 0

    # For 'nth' amount - 1 times, run this loop
    (nth-1).times do
      x = a + b
      sum = sum + x if x.even?
      b = a
      a = x 
    end 
    return sum
  end

end
