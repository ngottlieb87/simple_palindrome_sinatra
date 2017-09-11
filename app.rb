require ('sinatra')
require ('sinatra/reloader')
also_reload('./lib/**/*.rb')
require ('./lib/prac')

get('/') do
  @description = "Lets check your word and see if its a palindrome"
  erb(:input)
end

get('/output') do
  @word1 = params.fetch("word1")
  palindrome = Palindrome.new(@word1)
  if palindrome.check?
    @display = "Thats a palindrome"
  else
    @display = "Not a palindrome"
  end
  erb(:output)
end
