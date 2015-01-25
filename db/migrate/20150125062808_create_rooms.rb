class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :subject
      t.string :password
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
