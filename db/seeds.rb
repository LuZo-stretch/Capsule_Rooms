
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# # User.destroy_all
# user = User.create(email: "anahiheru@gmail.com", password: "111111")
Capsule.create!(name: "Nap Nook Capsule", description: "A cozy space for quick relaxation.", price: 15, address: '123 Main Street, YourCity, YC', user_id: user.id)
Capsule.create!(name: "Futuristic Escape Capsule", description: "Step for a unique experience.", price: 25, address: "123 Main St, Springfield, IL 62701", user_id: user.id)
Capsule.create!(name: "Zen Oasis Capsule", description: "Tranquil space for meditation and relaxation.", price: 20, address: "456 Elm St, Rivertown, NY 10001", user_id: user.id)
Capsule.create!(name: "Artistic Retreat Capsule", description: "Unleash creativity in a mini art studio.", price: 30, address: "789 Oak St, Lakeside, CA 92040", user_id: user.id)
Capsule.create!(name: "Ocean Serenity Capsule", description: "Find peace and tranquility by the virtual ocean.", price: 18, address: "321 Pine St, Mountainview, CO 80302", user_id: user.id)
Capsule.create!(name: "Sky High Capsule", description: "Experience the sensation of floating among the clouds.", price: 22, address: "987 Cedar St, Seaville, FL 33000", user_id: user.id)

# file1 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
# capsule1 = Capsule.new(name: "Nap Nook Capsule", description: "A cozy space for quick relaxation.", price: 15, user_id: user.id)
# capsule1.photo.attach(io: file1, filename: "nes.png", content_type: "image/png")
# capsule1.save
