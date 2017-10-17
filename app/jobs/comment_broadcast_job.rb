class CommentBroadcastJob < ApplicationJob
  queue_as :default
  
  def perform(comment)
    ActionCable.server.broadcast "blogs_#{comment.blog.id}_channel", comment: render_comment(comment)
  end
  
  private
  
  def render_comment(comment)
    
    # The error was on this line. You had comment spelt coment. I changed that and it made the comments post without page refresh.
    
    CommentsController.render partial: 'comments/comment', locals: {comment: comment }
  end
end