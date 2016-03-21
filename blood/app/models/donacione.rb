class Donacione < ActiveRecord::Base
  validates :nombre, presence: true
  validates :telefono, presence: true
  validates :correo, presence: true
  validates :nombre_hospital, presence: true
  validates :sangre, presence: true
  
end
