require'sinatra'
require_relative'./models/game'
also_reload'./models/*'

get '/' do
  erb(:home)
end

get '/game/:p1/:p2' do
  @winning = Game.run(params[:p1], params[:p2])
  erb(:result)
end
