class Day < ApplicationRecord
  belongs_to :week
  has_many :exercises, -> { order(position: :asc) }, dependent: :destroy
end
