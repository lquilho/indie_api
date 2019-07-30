class Api::V1::PointOfInterestsController < ActionController::API


  def highlights
    start = Geocoder.search(params[:start]).first.coordinates
    finish = Geocoder.search(params[:finish]).first.coordinates
    geo_center = Geocoder::Calculations.geographic_center([start, finish])
    distance = Geocoder::Calculations.distance_between(start, finish)
    @poi = PointOfInterest.near(geo_center, distance)
  end

  def closest_highlight
    @poi = PointOfInterest.near([params[:lat], params[:long]], 50).first
  end
end
