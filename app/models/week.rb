class Week < ApplicationRecord
  belongs_to :routine
  acts_as_list scope: :routine
  has_many :days, dependent: :destroy
  has_many :exercises, through: :days
end
