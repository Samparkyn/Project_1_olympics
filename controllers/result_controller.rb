require_relative('../models/nation')
require_relative('../models/athlete')
require_relative('../models/event')
require_relative('../models/result')

get '/result' do
  options = {'nations' => Nation.all, 'athletes' => Athlete.all, 'events' => Event.all}
  @result = Result.new(options)
  erb :"results/index"
end

get '/result' do
  "Hello World"
end