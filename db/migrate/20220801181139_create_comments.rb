class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :content
      t.datetime :published_on
      t.integer :user_id
      t.integer :blog_id

      t.timestamps
    end
  end
end
