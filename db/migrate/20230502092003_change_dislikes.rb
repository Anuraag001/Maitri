class ChangeDislikes < ActiveRecord::Migration[7.0]
  def change
    remove_column :blogs, :dislikes
    add_column :blogs, :dislikes, :integer
  end
end
