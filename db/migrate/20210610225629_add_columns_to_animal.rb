class AddColumnsToAnimal < ActiveRecord::Migration[6.1]
  def change
    add_column :animals, :name, :string 
    add_column :animals, :latinname, :string 
    add_column :animals, :kingdom, :string 
  end
end
