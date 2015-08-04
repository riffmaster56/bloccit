 require 'faker'
 
 # Create Posts
 posts = []
 50.times do
   posts << Post.create!(
     title:  Faker::Lorem.sentence,
     body:   Faker::Lorem.paragraph
   )
 end
 # posts = Post.all
 
 # Create Comments
 comments = []
 100.times do
   comments << Comment.create!(
     post: posts.sample,
     body: Faker::Lorem.paragraph
   )
 end

  # Create Posts
 advertisements = []
 50.times do
   advertisements << Advertisement.create!(
     title:  Faker::Lorem.sentence,
     copy:   Faker::Lorem.paragraph,
     price: (1..100).to_a.sample
   )
 end
 
 puts "Seed finished"
 puts "#{posts.count} posts created"
 puts "#{comments.count} comments created"
 puts "#{advertisements.count} advertisements created"