class FavoritesController < ApplicationController

  def create
    post = Post.find(params[:post_id])
    favorite = current_user.favorites.build(post: post)
  authorize favorite
    if favorite.save
      # Add code to generate a success flash and redirect to post
      # Remember the path shortcut: [post.topic, post]
    else
      # Add code to generate a failure flash and redirect to post
    end
  end
  def destroy
   # Get the post from the params
   # Find the current user's favorite with the ID in the params
  authorize favorite
    if favorite.destroy
     # Flash success and redirect to @post
    else
     # Flash error and redirect to @post
    end
  end
end
