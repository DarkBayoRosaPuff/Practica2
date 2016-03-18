class AddNombreToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nombre, :string
    add_column :users, :sangre, :string
    add_column :users, :telefono, :integer
  end
end
