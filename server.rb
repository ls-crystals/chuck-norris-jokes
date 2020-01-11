require 'sinatra'
#require './chuck.rb' # means file is in the same directory
require 'chucknorris'
set :port, 3000


#puts ChuckNorris.random


get '/' do
  erb :index

end

get '/joke/:id'do
  joke_id = params['id'].to_i

  @found_joke = ChuckNorris::JokeFinder.find_joke(joke_id)
end
get '/'do
  puts params
  puts params['name']
  @chuck = ChuckNorris.new
  @chuck.jokes
  @chuck.jokes@chuck.personal(params['name'], '')
end

post '/:name' do
  puts 'Hello' + params['name']
end
