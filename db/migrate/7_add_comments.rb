# frozen_string_literal: true

# Addition of SEO fields
class AddComments < ActiveRecord::Migration[5.2]
  def change
    create_table :spina_blog_comments do |t|
      t.reference :user_id
      t.reference :spina_blog_post
      t.text :content
      t.timestamps
    end
  end
end
