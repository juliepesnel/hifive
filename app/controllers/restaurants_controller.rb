class RestaurantsController < ApplicationController
  def show
    @restaurant = Restaurant.find(params[:id])
    @restaurant_coordinates = { lat: @restaurant.latitude, lng: @restaurant.longitude }
  end

   def index
    @restaurants = Restaurant.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@restaurants) do |restaurant, marker|
      marker.lat flat.latitude
      marker.lng flat.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

end
