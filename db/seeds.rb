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
                 full_name: "Brieuc Labiouse",
                 telephone: "0479378074")
user1.save

user2 = User.new(password: "belgacom11",
                 email: "olivier.beernaert@gmail.com",
                 first_name: "Olivier",
                 last_name: "Beernaert",
                 full_name: "Olivier Beernaert",
                 telephone: "0489542334")
user2.save

user3 = User.new(password: "123456",
                 email: "michel@gmail.com",
                 first_name: "Michel",
                 last_name: "Duchateau",
                 full_name: "Michel Duchateau",
                 telephone: "0474672341")
user3.save

user4 = User.new(password: "123456",
                 email: "Ines@gmail.com",
                 first_name: "Ines",
                 last_name: "Durban",
                 full_name: "Ines Durban",
                 telephone: "0490756744")
user4.save

benevole1 = Benevole.new(first_name: "Adrien",
                         last_name: "Ducobu",
                         full_name: "Adrien Ducobu",
                         telephone: "0473457612",
                         email: "Adrien@gmail.com")
benevole1.save

benevole2 = Benevole.new(first_name: "Chris",
                         last_name: "Laplante",
                         full_name: "Chris Laplante",
                         telephone: "0448613853",
                         email: "Chris@gmail.com")
benevole2.save

benevole3 = Benevole.new(first_name: "Thomas",
                         last_name: "Verrati",
                         telephone: "0473908944",
                         full_name: "Thomas Verrati",
                         email: "Thomas@gmail.com")
benevole3.save

benevole4 = Benevole.new(first_name: "Lora",
                         last_name: "Friquet",
                         full_name: "Lora Friquet",
                         telephone: "0497115632",
                         email: "Adrien@gmail.com")
benevole4.save

client1 = Client.new(first_name: "Client 1",
                     last_name: "Client 1",
                     full_name: "Client 1",
                     telephone: "0498784532",
                     email: "Client1@gmail.com",
                     residency: "Forest")
client1.save

client2 = Client.new(first_name: "client 2",
                     last_name: "Client 2",
                     full_name: "Client 2",
                     telephone: "0498784532",
                     email: "client2@gmail.com",
                     residency: "Tournai")
client2.save

client3 = Client.new(first_name: "Client 3",
                     last_name: "Client 3",
                     full_name: "Client 3",
                     telephone: "0498784532",
                     email: "client3@gmail.com",
                     residency: "Schaerbeek")
client3.save

client4 = Client.new(first_name: "Client 4",
                     last_name: "Client 4",
                     full_name: "Client 4",
                     telephone: "0498784532",
                     email: "client4@gmail.com",
                     residency: "Jette")
client4.save

binome1 = Binome.new(user: user1,
                     benevole: benevole1,
                     client: client1)

binome1.save
