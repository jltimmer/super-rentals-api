class SerializableRental < JSONAPI::Serializable::Resource
  type 'rentals'
  attribute :title
  attribute :owner
  attribute :city
  attribute :latitude
  attribute :longitude
  attribute :category
  attribute :image
  attribute :bedrooms
  attribute :description
  attribute :created_at
  attribute :updated_at
end
