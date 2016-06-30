require 'bundler'
Bundler.require

class App < Sinatra::Base
  get '/' do
    erb :new
  end

  get '/artists' do
    binding.pry
  end

  post '/artists' do
    binding.pry
  end
end

run App
