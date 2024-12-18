class PagesController < ApplicationController
  before_action :authenticate_user!
  def home
    @tweets = Tweet.timeline(current_user.following)
                   .or(Tweet.timeline(current_user))
                    .order(created_at: :desc)
    console
  end
end
