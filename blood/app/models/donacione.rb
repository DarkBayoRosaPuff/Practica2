# -*- coding: utf-8 -*-
class Donacione < ActiveRecord::Base
  belongs_to :user
  validates :nombre_hospital, presence: true
end
