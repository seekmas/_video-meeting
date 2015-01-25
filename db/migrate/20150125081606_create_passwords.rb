class CreatePasswords < ActiveRecord::Migration
  def change
    create_table :passwords do |t|
      t.integer :room_id
      t.integer :user_id
      t.string :password

      t.timestamps
    end
  end
end
