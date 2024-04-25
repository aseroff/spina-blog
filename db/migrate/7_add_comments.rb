# frozen_string_literal: true

# Addition of comments to posts
class AddComments < ActiveRecord::Migration[5.2]
  def change
    create_table :spina_blog_comments do |t|
      t.references :user
      t.references :post, index: true, null: false, foreign_key: { to_table: :spina_blog_posts }
      t.text :content, null: false
      t.timestamps
    end
  end
end
