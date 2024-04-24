# frozen_string_literal: true

# Addition of SEO fields
class AddComments < ActiveRecord::Migration[5.2]
  def change
    create_table :spina_blog_comments do |t|
      t.references :user
      t.references :post, foreign_key: { to_table: :spina_blog_posts }
      t.text :content
      t.timestamps
    end
  end
end
