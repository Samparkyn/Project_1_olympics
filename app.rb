require( 'sinatra' )
require( 'pry-byebug' )
require_relative('controllers/athlete_controller')
require_relative('controllers/nation_controller')
require_relative('controllers/event_controller')
require_relative('controllers/result_controller')
require 'sinatra/contrib/all' if development?

get '/results' do
  erb :"home"
end
