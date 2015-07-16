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

unique_post = {title: 'My unique Post Title', body: 'My super unique post.'}
unless Post.where(unique_post).count > 0
  p = Post.create(unique_post)
  p.comments.create(body: 'My comment on my super unique post.')
  puts "Unique Post with unique comment Created"
end



 
 puts "Seed finished"
 puts "#{posts.count} posts created"
 puts "#{comments.count} comments created"