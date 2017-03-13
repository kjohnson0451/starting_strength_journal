class Exercise < ApplicationRecord
  belongs_to :day

  attr_reader :description
  attr_accessor :load

end
