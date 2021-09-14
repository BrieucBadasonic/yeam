# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.new(password: "123456",
                 email: "brieuc@gmail.com",
                 first_name: "Brieuc",
                 last_name: "Labiouse",
                 telephone: "0479378074")
user1.save

benevole1 = Benevole.new(first_name: "Adrien",
                         last_name: "Ducobu",
                         telephone: "0473457612",
                         email: "Adrien@gmail.com")
benevole1.save

client1 = Client.new(first_name: "Bastien",
                     last_name: "Boulouze",
                     telephone: "0498784532",
                     email: "bastien@gmail.com",
                     residency: "Tournai")
client1.save

binome1 = Binome.new(user_id: user1.id,
                     benevole_id: benevole1.id,
                     client_id: client1.id)
binome1.save
