class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :track_id
      t.string :image
      t.string :level
      t.text :short_desc
      t.text :long_desc
      t.text :end_goal_desc
      t.string :end_goal_image
      t.string :end_goal_link
      t.text :timeline

      t.timestamps null: false
    end
  end
end
