class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :name
      t.string :designation
      t.string :content
      t.integer :likes
      t.string :dislikes

      t.timestamps
    end
  end
end
