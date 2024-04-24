# frozen_string_literal: true

module Spina
  module Blog
    # Spina::Blog::Comment
    class Comment < ApplicationRecord
      belongs_to :post, inverse_of: :comments
      validates :content, presence: true
    end
  end
end