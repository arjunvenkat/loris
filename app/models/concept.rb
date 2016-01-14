class Concept < ActiveRecord::Base
  belongs_to :roadmap
  acts_as_list scope: :roadmap
  has_many :exercises, -> { order(position: :asc) }
end
