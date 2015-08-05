require('sinatra')
require('sinatra/reloader')
require './lib/find_and_replace'

get('/') do
  erb(:index)
end

get '/string' do
  @string = params['string'].find_and_replace(params['old_word'], params['new_word'])
  erb :string
end
