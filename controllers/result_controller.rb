require_relative('../models/nation')
require_relative('../models/athlete')
require_relative('../models/event')
require_relative('../models/result')

get '/result' do
  options = {'nations' => Nation.all, 'athletes' => Athlete.all, 'events' => Event.all}
  @result = Result.new(options)
  @page_background = '../images/rio.jpg'
  erb :"results/index"
end
