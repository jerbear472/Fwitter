require './config/environment'
require './app/models/tweet'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    
    @tweets=Tweet.all
    erb :tweets
  end

post '/tweets' do
  new_tweet = Tweet.new(params[:user], params[:message])
  redirect ('/')
  end
end