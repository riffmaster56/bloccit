class SummariesController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @topic = @post.topic
    @summary = Summary.new
  end

  def create
    @post = Post.find(params[:post_id])
    @topic = @post.topic
    summary = Summary.new(summary_params)
    summary.post_id = params[:post_id]
    if summary.save
      flash[:notice] = "Summary was saved."
      redirect_to [@topic, @post]
    else
      flash[:error] = "There was an error saving the summary. Please try again."
      render :new
    end
  end

  def edit
  end

  def update
  end

  private

  def summary_params
    params.require(:summary).permit(:body)
  end
end
