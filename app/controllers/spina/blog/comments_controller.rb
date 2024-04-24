# frozen_string_literal: true

module Spina
  module Blog
    # Spina::Blog::CommentsController
    class CommentsController < ::Spina::ApplicationController
      def create
        @comment = Spina::Blog::Comment.create comment_params
        if @comment.save
          redirect_to spina.blog_post_url(@comment.post)
        end
      end

      def update
        if @comment.update comment_params
          redirect_to spina.blog_post_url(@comment.post)
        end
      end

      def destroy
        @comment.destroy
        redirect_to spina.blog_posts_path(@comment.post)
      end

      private

      def comment_params
        params.require(:comment).permit(:user_id, :spina_blog_post_id, :content)
      end
    end
  end
end