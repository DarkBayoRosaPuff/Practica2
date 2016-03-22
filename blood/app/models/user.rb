# -*- coding: utf-8 -*-
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :donaciones, dependent: :destroy
  validates :nombre, presence: true
  validates :telefono, presence: true, numericality: { only_integer: true }
  validates :sangre, presence: true, inclusion: { in: %w(O- O+ A- A+ B- B+ AB- AB+), message: "%{value} no es un tipo de sangre válido. Los tipos de sangre válidos son: O-, O+, A-, A+, B-, B+, AB- y AB+" }
  validates :email, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
