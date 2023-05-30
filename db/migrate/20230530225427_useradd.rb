class Useradd < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :designation,:string
    add_column :users, :noofblog, :string
    add_column :users, :noofconfession, :string
  end
end
