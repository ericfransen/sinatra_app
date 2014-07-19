require 'sinatra'
require 'sinatra/reloader' if development?
require 'slim'

get '/' do
  @title = "Songs By Sinatra"
  slim :home
end

get '/about' do
  @title = "All About This Awesome Website"
  slim :about
end

get '/contact' do
  @title = "Get at me"
  slim :contact
end

not_found do
  @title = "404"
  slim :not_found
end
