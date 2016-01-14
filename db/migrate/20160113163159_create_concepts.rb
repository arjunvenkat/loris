class CreateConcepts < ActiveRecord::Migration
  def change
    create_table :concepts do |t|
      t.integer :roadmap_id
      t.integer :position
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
