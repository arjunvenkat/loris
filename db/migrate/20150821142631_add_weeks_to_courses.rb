class AddWeeksToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :weeks, :integer
  end
end
