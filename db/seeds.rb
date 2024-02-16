# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.destroy_all
user = User.create(email: "anahiheru@gmail.com", password: "111111")
Capsule.create!(name: "Nap Nook Capsule", description: "A cozy space for quick relaxation.", price: 15, user_id: user.id)
Capsule.create!(name: "Futuristic Escape Capsule", description: "Step into different time periods for a unique experience.", price: 25, user_id: user.id)
Capsule.create!(name: "Zen Oasis Capsule", description: "Tranquil space for meditation and relaxation.", price: 20, user_id: user.id)
Capsule.create!(name: "Artistic Retreat Capsule", description: "Unleash creativity in a mini art studio.", price: 30, user_id: user.id)
