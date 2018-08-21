require 'sinatra'
set :session_secret, 'super secret'


get('/') {"HELO GOODBYE"}
get('/secret') { 'Here is a secret page'}
get('/apple') { 'Here is yet another page'}
get('/pear') { 'Today is monday'}
get('/orange') { 'Tomorrow is Tuesday'}
get('/blueberry') { 'The day after tomorrow is Wednesday'}
get('/random-cat') {
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb :index
  }
post('/named-cat') {
  p params
  @name = params[:name]
  erb :index
  }
get('/cat-naming-form') {
  erb :cat_naming
}
