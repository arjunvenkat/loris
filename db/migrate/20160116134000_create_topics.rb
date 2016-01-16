class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :name
      t.integer :roadmap_id
      t.integer :position

      t.timestamps null: false
    end
  end
end
