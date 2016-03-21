class RemoveUnnecessaryAttributesFromDonaciones < ActiveRecord::Migration
  def change
    remove_column :donaciones, :nombre, :string
    remove_column :donaciones, :telefono, :integer
    remove_column :donaciones, :correo, :string
    remove_column :donaciones, :sangre, :string
  end
end
