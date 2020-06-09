# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(email: 'whitney@email.com', password: 'aishuia', admin: false )

# Resource.create(title: 'A new resource', added_resource_id: user1.id)
resource1 = Resource.create(title: 'This is a test')

Vote.create(user_id: user1.id, resource_id: resource1.id, vote: 'upvote')

puts 'done'
