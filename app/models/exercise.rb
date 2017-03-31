class Exercise < ApplicationRecord
  belongs_to :day
  acts_as_list scope: :day

end
