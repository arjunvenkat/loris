class CreateCourseIdeas < ActiveRecord::Migration
  def change
    create_table :course_ideas do |t|
      t.string :email
      t.text :content

      t.timestamps null: false
    end
  end
end
