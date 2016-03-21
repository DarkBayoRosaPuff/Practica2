# -*- coding: utf-8 -*-
class Donacione < ActiveRecord::Base
  validates :nombre, presence: true
  validates :telefono, presence: true, numericality: { only_integer: true }
  validates :correo, presence: true
  validates :nombre_hospital, presence: true
  validates :sangre, presence: true, inclusion: { in: %w(O-, O+, A-, A+, B-, B+, AB-, AB+), message: "%{value} no es un tipo de sangre válido. Los tipos de sangre válidos son: O-, O+, A-, A+, B-, B+, AB- y AB+" }
  
end
