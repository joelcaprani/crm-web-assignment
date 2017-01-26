  require 'sinatra'

get '/' do # '/' means homepage
  "hello dave!"
end

get '/ goodbye' do
  "goodbye dave"
end

# get '/movies/lotr' do
#   "lord of the rings"
# end
#
# get '/movies/hp1' do
#   "harry potter and the sorcerers stone"
# end
#

get '/movies/:title/actors/:actor' do # :title= placeholder called paramater (paramater/hash) params[:title]

  puts params

  @title = params[:title]

  erb :movie
  end
