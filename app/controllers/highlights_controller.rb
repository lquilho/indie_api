class HighlightsController < ApplicationController
  def highlights
    results = Geocoder.search(params[:start])
    results.first.coordinates

  end

  def closest_highlight
  end
end
