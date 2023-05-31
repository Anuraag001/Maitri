class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    
    create_table :rooms do |t|
      t.string :name
      t.string :senderid
      t.string :receiverid

      t.timestamps
    end
  end
end
