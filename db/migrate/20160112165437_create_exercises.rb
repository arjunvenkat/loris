class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.integer :concept_id
      t.string :url
      t.integer :position

      t.timestamps null: false
    end
  end
end
