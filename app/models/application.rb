class Application < ActiveRecord::Base
  validates :student_first_name,
            :student_last_name,
            :student_email, presence: true
end
