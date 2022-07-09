rentals = JSON.parse(File.read(Rails.root.join('db/rentals.json')))

rentals['data'].each do |rental|
  rental = rental['attributes']
  Rental.create(
    title: rental['title'],
    owner: rental['owner'],
    city: rental['city'],
    latitude: rental['location']['lat'],
    longitude: rental['location']['lng'],
    category: rental['category'],
    image: rental['image'],
    bedrooms: rental['bedrooms'],
    description: rental['description']
  )
end
