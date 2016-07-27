MyApp.get "/" do
  @current_page = "Quiz"
  erb :"/layout"
end

MyApp.get '/server/:string' do
  @string = params['string']
  @responsesArray = Quiz.makeArray(@string)
  @q1Result = Quiz.evaluateAnswer1(@responsesArray)
  @q2Result = Quiz.evaluateAnswer2(@responsesArray)
  @q3Result = Quiz.evaluateAnswer3(@responsesArray)
  @resultsHash = Quiz.makeHash(@q1Result, @q2Result, @q3Result)
  require pry
  binding.pry
  require 'json'
  puts JSON.generate(@resultsHash)

  erb :"/layout"
end