class StaticPagesController < ApplicationController
  def home
  	@review = current_critic.reviews.build if signed_in?
  end
end
