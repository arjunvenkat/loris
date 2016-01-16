class AddTopicIdToConcept < ActiveRecord::Migration
  def change
    add_column :concepts, :topic_id, :integer
  end
end
