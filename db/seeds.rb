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
 
 puts "Seed finished"
 puts "#{posts.count} posts created"
 puts "#{comments.count} comments created"