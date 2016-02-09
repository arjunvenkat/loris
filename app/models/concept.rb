class Concept < ActiveRecord::Base
  belongs_to :roadmap
  belongs_to :topic
  acts_as_list scope: :topic
  has_many :exercises, -> { order(position: :asc) }

  def prev
    topic.concepts.find_by(position: position - 1)
  end

  def next
    topic.concepts.find_by(position: position + 1)
  end
end
