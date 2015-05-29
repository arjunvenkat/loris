class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :course
      t.string :section
      t.string :student_first_name
      t.string :student_last_name
      t.string :student_email
      t.string :parent_name
      t.string :parent_email
      t.string :phone
      t.string :reference
      t.text :experience

      t.timestamps null: false
    end
  end
end
