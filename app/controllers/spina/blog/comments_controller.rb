# frozen_string_literal: true

module Spina
  module Blog
    # Spina::Blog::CommentsController
    class CommentsController < ::Spina::ApplicationController
      def create
        @comment = Spina::Blog::Comment.new comment_params
        @comment.post_id = params[:post_id]
        if @comment.save
          redirect_to spina.blog_post_url(@comment.post)
        end
      end
      private

      def comment_params
        params.require(:comment).permit(:user_id, :post_id, :content)
      end
    end
  end
end