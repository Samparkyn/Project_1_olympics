require_relative('../models/nation')
require_relative('../models/athlete')

get '/nations' do
  @nations = Nation.all()
  erb :"nations/index"
end

get '/nations/new' do
  erb :"nations/new"
end

post '/nations' do
  @nation = Nation.new(params)
  @nation.save()
  redirect to '/nations'
end

get '/nations/:id' do
  @nation = Nation.find(params[:id])
  @athletes = @nation.athletes()
  erb :"nations/show"
end

get '/nations/:id/edit' do
  @nation = Nation.find(params[:id])
  erb :"nations/edit"
end

post '/nations/:id' do
@nation = Nation.new(params)
@nation.update()
redirect to("/nations/#{params['id']}")
end
