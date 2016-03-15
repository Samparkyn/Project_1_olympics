require_relative('../models/athlete')
require_relative('../models/nation')
require_relative('../models/event')

get '/events' do
  @events = Event.all()
  @page_background = '../images/events.jpg'
  erb :"events/index"
end

get '/events/new' do
  erb :"events/new"
end

post '/events' do
  @event = Event.new(params)
  @event.save()
  redirect to ("/events/#{params['id']}")
end

get '/events/:id' do
  @event = Event.find(params[:id])
  erb :"events/show"
end