class ChangeCourseToCourseIdInApplications < ActiveRecord::Migration
  def change
    remove_column :applications, :course, :string
    add_column :applications, :course_id, :integer
  end
end
