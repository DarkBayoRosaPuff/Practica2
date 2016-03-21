class CreateDonaciones < ActiveRecord::Migration
  def change
    create_table :donaciones do |t|
      t.string :nombre
      t.integer :telefono
      t.string :correo
      t.string :nombre_hospital
      t.text :direccion_hospital
      t.integer :tel_hospital
      t.string :sangre
      t.integer :donadores

      t.timestamps
    end
  end
end
