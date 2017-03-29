class Routine < ApplicationRecord
  has_many :weeks
  has_many :exercises, through: :weeks

  accepts_nested_attributes_for :exercises
end
