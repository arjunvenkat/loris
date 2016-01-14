class Roadmap < ActiveRecord::Base
  belongs_to :course
  has_many :concepts, -> { order(position: :asc) }
end
