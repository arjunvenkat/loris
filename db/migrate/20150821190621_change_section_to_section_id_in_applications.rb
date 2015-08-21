class ChangeSectionToSectionIdInApplications < ActiveRecord::Migration
  def change
    remove_column :applications, :section, :string
    add_column :applications, :section_id, :integer
  end
end
