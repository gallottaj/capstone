class AddEntryTitleToJournal < ActiveRecord::Migration[5.2]
  def change
    add_column :journals, :entry_title, :string
  end
end
