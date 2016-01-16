class Concept < ActiveRecord::Base
  belongs_to :roadmap
  belongs_to :topic
  acts_as_list scope: :topic
  has_many :exercises, -> { order(position: :asc) }
end
