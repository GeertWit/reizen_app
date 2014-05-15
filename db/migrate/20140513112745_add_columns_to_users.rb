class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :age, :integer
    add_column :users, :gender, :string
    add_column :users, :information, :text
    add_column :users, :destination, :text
    add_column :users, :future, :text
    add_column :users, :home, :string
   end
end

