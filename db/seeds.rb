require 'faker'

def string_generator(length)
  result = ""
  length.times do
    result << ('a'..'z').to_a.sample
  end
  result
end

5.times do
  User.create!(email: "#{string_generator(4)}@gmail.com", password: "password")
end

20.times do
  Tag.create(name: Faker::Lorem.word)
end

100.times do
  Post.create!(title: Faker::Lorem.sentence, body: Faker::Lorem.paragraphs(3).join("</p><p>"))
end

posts = Post.all

100.times do 
  Post.all.sample.tags << Tag.all.sample
end
