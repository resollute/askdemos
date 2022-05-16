User.all.destroy_all
# Inbox.destroy_all
# Message.destroy_all

user1 = User.create(email: "user1@gmail.com", 
                    password: "111111")
user2 = User.create(email: "user2@gmail.com",
                    password: "111111")


4.times do
  faker_name1 = Faker::Games::Witcher.quote[0..99]
  inbox1 = Inbox.create!(name: faker_name1,
                        user: user1)
  rand(1..5).times do
    message_body1 = Faker::Games::Witcher.character + '!!!'
    Message.create!(body: message_body1,
                  inbox: inbox1,
                  user: [user1, user2].sample)
  end 
  faker_name2 = Faker::Movies::HarryPotter.quote[0..99]
  inbox2 = Inbox.create!(name: faker_name2,
                        user: user2)
  rand(1..5).times do
    message_body2 = Faker::Movies::HarryPotter.character + '!!!'
    Message.create!(body: message_body2,
                  inbox: inbox2,
                  user: [user1, user2].sample)
  end
end
