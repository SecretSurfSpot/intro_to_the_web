require 'sinatra'

get '/' do
  "Hello World"
end

get '/secret' do
  "Welcome to the secret world"
end

get '/cat' do
  @random_name = ['Amigo', 'Oscar', 'Viking'].sample
  erb(:index)
end
