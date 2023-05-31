class CreateConfessions < ActiveRecord::Migration[7.0]
  def change
    create_table :confessions do |t|
      t.string :title
      t.integer :likes
      t.integer :dislikes

      t.timestamps
    end
  end
end
