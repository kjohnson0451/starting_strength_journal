class Week < ApplicationRecord
  belongs_to :routine
  has_many :days
  has_many :exercises, through: :days
end
