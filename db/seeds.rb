# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


User.create(name: "Nathaniel", email: "nathaniel@email.com", password_digest: "password", image_url: "https://scontent-iad3-1.xx.fbcdn.net/v/t39.30808-6/427971800_1102841000846756_6910868494923997282_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=ibHF3yXDygsQ7kNvwHeRoLE&_nc_oc=AdkZAW0GEH3CD00nOrpNN4_M9DKJisE9i8BK9pDzU9PeCx36Mou2N7Lb_4dDXoJnu5yzqO0GLu5VH_coSoyqeiIJ&_nc_zt=23&_nc_ht=scontent-iad3-1.xx&_nc_gid=r6KeWxMTPuLsCvY62CD6Pw&oh=00_AYHKtVAhDthVNFEhaZOf3sDXMhKxkO7-BoJK1BTrxGBgpA&oe=67F4D53C")

Plant.create(name: "palm tree", description: "A palm tree is a tropical plant known for its tall, slender trunk and crown of large, fan-like or feathery fronds. Found in warm climates, palms thrive in sandy soils and are often seen along beaches, deserts, and urban landscapes. Some species, like the coconut palm, produce edible fruits, while others are valued for their ornamental beauty. Palms symbolize relaxation and exotic destinations, commonly associated with tropical islands and vacation spots. They are resilient, with deep roots that help them withstand strong winds and harsh conditions.", amount_of_sun: 100, days_to_water: 7)
