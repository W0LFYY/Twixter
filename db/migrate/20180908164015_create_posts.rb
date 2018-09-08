class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :body
      t.belongs_to :user_bio, foreign_key: true

      t.timestamps
    end
  end
end
