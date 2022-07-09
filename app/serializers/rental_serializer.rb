class RentalSerializer < ActiveModel::RentalSerializer
  attributes :title, :owner, :city, :location, :category, :image, :bedrooms, :description
  
  def location
    location = "#{object.latitude},#{object.longitude}"
  end
end
