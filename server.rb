require 'sinatra'
#require './chuck.rb' # means file is in the same directory
require 'chucknorris'
set :port, 3000


#puts ChuckNorris.random


get '/' do
  erb :index

end

get ''
