require "rspec"
require "pry"
require "prac"

describe("#prac") do
  it("see if word is a palindrome") do
    palindrome = Palindrome.new("dad")
    expect(palindrome.check?).to(eq(true))
  end
end
