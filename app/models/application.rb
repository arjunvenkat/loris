class Application < ActiveRecord::Base
  validates :student_first_name,
            :student_last_name,
            :student_email, presence: true

  validates :student_email,
            :parent_email, format: { :with => /@/ }, allow_blank: true
end
