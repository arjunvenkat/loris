class Course < ActiveRecord::Base
  has_many :sections
  belongs_to :track
end
