class Topic < ActiveRecord::Base
  belongs_to :roadmap
  acts_as_list scope: :roadmap
  has_many :concepts, -> { order(position: :asc) }
end
