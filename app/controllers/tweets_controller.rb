class TweetsController < ApplicationController
  def new
    @accounts = User.where_by_provider_and_user('twitter', current_user.id)
  end
  
  def create
    provider = User.find_by_provider_and_name('twitter', current_user.name)
    @twitter = Twitter::Client.new(:oauth_token => provider.token, :oauth_token_secret => provider.secret)
    @twitter.update("I'm tweeting with @gem!")
    #@twitter.update(params[:twitter][:tweet])
    #redirect_to loans_path
    #TODO add flash message
  end
end
