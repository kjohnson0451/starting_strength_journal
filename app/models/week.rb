class Week < ApplicationRecord
  belongs_to :routine
  has_many :days
end
