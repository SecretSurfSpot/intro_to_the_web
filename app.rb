require 'sinatra'

get '/' do
  "Hello World"
end

get '/secret' do
  "Welcome to the secret world"
end

get '/cat' do
  "<div style='border: 3px dashed red'>
    <img src='http://bit.ly/1eze8aE'>
  </div>"

end
