class TweetsController < ApplicationController

  def show
    @test = params[:id]
  end

end
