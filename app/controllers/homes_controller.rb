class HomesController < ApplicationController
  def index
    @recent_listings = Listing.all.last(5)
  end
end
