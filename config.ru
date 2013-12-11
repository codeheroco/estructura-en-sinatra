require 'sinatra/base'
Dir.glob('./app/{helpers,controllers}/*.rb').each { |file| require file }

map("/users") { run UsersController }
map("/")        { run ApplicationController }
