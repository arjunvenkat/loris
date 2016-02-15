class Enrollment < ActiveRecord::Base
  belongs_to :user
  belongs_to :section

  def roadmap
    section.roadmap
  end
end
