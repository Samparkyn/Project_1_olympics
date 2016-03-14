require_relative('../models/athlete')
require_relative('../models/nation')
require_relative('../models/event')

get '/athletes' do
  #INDEX
  @athletes = Athlete.all()
  erb :"athletes/index"
end

get '/athletes/new' do
  erb :"athletes/new"
end

post '/athletes' do
  @athlete = Athlete.new(params)
  @athlete.save()
  redirect to("/nations/#{params['nation_id']}")
end

get '/athletes/:id' do
  @athlete = Athlete.find(params[:id])
  @nations = @athlete.nations()
  erb :"athletes/show"
end