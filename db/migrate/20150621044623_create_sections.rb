class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.integer :course_id
      t.datetime :start_date_time

      t.timestamps null: false
    end
  end
end
