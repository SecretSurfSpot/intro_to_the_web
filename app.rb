require 'sinatra'

get '/' do
  "Hello World"
end

get '/secret' do
  "Welcome to the secret world"
end

get '/random-cat' do
  @name = ['Amigo', 'Oscar', 'Viking'].sample
  erb(:index)
end

get '/named-cat' do
  p params[:name]
  @name = params[:name]
  erb:index
end
