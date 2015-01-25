class SetRoomNameUnique < ActiveRecord::Migration
  def change
    add_index :rooms , :subject , :unique => true
  end
end
