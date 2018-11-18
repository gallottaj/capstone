class RenameTextInJournal < ActiveRecord::Migration[5.2]
  def change
    rename_column :journals, :text, :entry_body
  end
end
