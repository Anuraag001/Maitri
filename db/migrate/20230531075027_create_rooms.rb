class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    drop_table :rooms
    create_table :rooms do |t|
      t.string :name
      t.string :senderid
      t.string :receiverid

      t.timestamps
    end
  end
end
