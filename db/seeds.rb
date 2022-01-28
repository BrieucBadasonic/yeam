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
user1.full_name = user1.first_name + " " + user1.last_name
user1.save

user2 = User.new(password: "belgacom11",
                 email: "olivier.beernaert@gmail.com",
                 first_name: "Olivier",
                 last_name: "Beernaert",
                 telephone: "0489542334")
user2.full_name = user2.first_name + " " + user2.last_name
user2.save
    
user3 = User.new(password: "123456",
                 email: "michel@gmail.com",
                 first_name: "Michel",
                 last_name: "Duchateau",
                 telephone: "0474672341")
user3.full_name = user3.first_name + " " + user3.last_name
user3.save

user4 = User.new(password: "123456",
                email: "Ines@gmail.com",
                first_name: "Ines",
                last_name: "Durban",
                telephone: "0490756744")
user4.full_name = user4.first_name + " " + user4.last_name
user4.save

benevole1 = Benevole.new(first_name: "Adrien",
                         last_name: "Ducobu",
                         telephone: "0473457612",
                         email: "Adrien@gmail.com")
benevole1.full_name = benevole1.first_name + " " + benevole1.last_name
benevole1.save

benevole2 = Benevole.new(first_name: "Chris",
                         last_name: "Laplante",
                         telephone: "0448613853",
                         email: "Chris@gmail.com")
benevole2.full_name = benevole2.first_name + " " + benevole2.last_name
benevole2.save

benevole3 = Benevole.new(first_name: "Thomas",
                         last_name: "Verrati",
                         telephone: "0473908944",
                         email: "Thomas@gmail.com")
benevole3.full_name = benevole3.first_name + " " + benevole3.last_name
benevole3.save

benevole4 = Benevole.new(first_name: "Lora",
                         last_name: "Friquet",
                         telephone: "0497115632",
                         email: "Adrien@gmail.com")
benevole4.full_name = benevole4.first_name + " " + benevole4.last_name
benevole4.save

client1 = Client.new(first_name: "Michel",
                     last_name: "Gondry",
                     telephone: "0498784532",
                     email: "Michel@gmail.com",
                     residency: "Forest")
client1.full_name = client1.first_name + " " + client1.last_name
client1.save

client2 = Client.new(first_name: "Johan",
                     last_name: "Mate",
                     telephone: "0498784532",
                     email: "Johan@gmail.com",
                     residency: "Tournai")
client2.full_name = client2.first_name + " " + client2.last_name
client2.save

client3 = Client.new(first_name: "Santi",
                     last_name: "Logic",
                     telephone: "0498784532",
                     email: "Santi@gmail.com",
                     residency: "Schaerbeek")
client3.full_name = client3.first_name + " " + client3.last_name
client3.save

client4 = Client.new(first_name: "Adam",
                     last_name: "Nagelne",
                     telephone: "0498784532",
                     email: "Adam4@gmail.com",
                     residency: "Jette")
client4.full_name = client4.first_name + " " + client4.last_name
client4.save

binome1 = Binome.new(user: user1,
                     benevole: benevole1,
                     client: client1,
                     request_status: "A SUIVRE")

binome1.save

binome2 = Binome.new(user: user2,
                     benevole: benevole2,
                     client: client2,
                     request_status: "RAS")

binome2.save

binome3 = Binome.new(user: user3,
                     benevole: benevole3,
                     client: client3,
                     request_status: "CONTACT PERDU")

binome3.save

binome4 = Binome.new(user: user4,
                     benevole: benevole4,
                     client: client4,
                     request_status: "DOSSIER CLOTURE")

binome4.save
