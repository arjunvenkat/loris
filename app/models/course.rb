class Course < ActiveRecord::Base
  has_many :sections
  belongs_to :track
  has_many :roadmaps

  def roadmap
    roadmaps.order('created_at asc').last
  end
end
