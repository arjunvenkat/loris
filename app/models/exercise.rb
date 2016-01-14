class Exercise < ActiveRecord::Base
  belongs_to :concept
  acts_as_list scope: :concept
end
