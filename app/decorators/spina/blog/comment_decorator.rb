# frozen_string_literal: true

module Spina
  module Blog
    # Spina::Blog::CommentDecorator
    class CommentDecorator < Draper::Decorator
      delegate_all

      def user_display_name
        self.user&.respond_to?(:display_name) ? user.display_name : 'Anonymous'
      end
    end
  end
end