class Roadmap < ActiveRecord::Base
  belongs_to :course
  has_many :topics, -> { order(position: :asc) }
  has_many :concepts
end
