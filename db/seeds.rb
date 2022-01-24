# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create({name: "Benedict Cumberpatch", email: "benedict.cumberpatch@gmail.com"})
user2 = User.create({name: "Butterfree Catinahat", email: "butterfree.catinahat@gmail.com"})
user3 = User.create({name: "Buffalo Custardpath", email: "buffalo.custardpath@gmail.com"})
user4 = User.create({name: "Benadryl Slumbercatch", email: "benadryl.slumbercatch@gmail.com"})
user5 = User.create({name: "Benedoctor Strangebatch", email: "benedoctor.strangebatch@gmail.com"})
tweet1 = Tweet.create({text: "Hey its me the og", user_id: 1})
tweet2 = Tweet.create({text: "big docor suess fan", user_id: 2})
tweet3 = Tweet.create({text: "i love me creamy desserts", user_id: 3})
tweet4 = Tweet.create({text: "insomnia is a terrible affliction", user_id: 4})
tweet5 = Tweet.create({text: "marvel movies are overrated", user_id: 5})
tweet6 = Tweet.create({text: "i really wish people would stop making fun of my name", user_id: 1})
tweet7 = Tweet.create({text: "its very hurtful to be bullied", user_id: 1})
tweet8 = Tweet.create({text: "i sure hope dr suess was a good person irl", user_id: 2})
tweet9 = Tweet.create({text: "zzzzz", user_id: 4})


