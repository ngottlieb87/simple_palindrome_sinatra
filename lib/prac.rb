class Palindrome
  def initialize(word1)
    @word1 = word1
  end

  def check?
    if @word1.reverse === @word1
      true
    else
      false
    end
  end
end
