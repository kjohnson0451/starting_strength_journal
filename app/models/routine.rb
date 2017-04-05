class Routine < ApplicationRecord
  belongs_to :user, optional: true

  has_many :weeks, -> { order(position: :asc) }, dependent: :destroy
  has_many :exercises, through: :weeks

  accepts_nested_attributes_for :exercises
end
