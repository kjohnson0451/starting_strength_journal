class Routine < ApplicationRecord
  has_many :weeks, -> { order(position: :asc) }
  has_many :exercises, through: :weeks

  accepts_nested_attributes_for :exercises
end
