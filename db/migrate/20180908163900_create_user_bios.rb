class CreateUserBios < ActiveRecord::Migration[5.2]
  def change
    create_table :user_bios do |t|
      t.string :first_name
      t.string :last_name
      t.string :location
      t.string :phone
      t.string :email
      t.text :bio
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
