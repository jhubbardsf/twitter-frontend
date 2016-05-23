class TweetsController < ApplicationController
  include HTTParty

  def show
    topic = params[:id]

    url = NurelmFront::Application.config.twitter_service + "/tweets/#{topic}.json"
    response = HTTParty.get(url)
    @tweets = response.parsed_response
  end
end
