class CreateRoadmaps < ActiveRecord::Migration
  def change
    create_table :roadmaps do |t|
      t.integer :course_id
      t.string :name

      t.timestamps null: false
    end
  end
end
