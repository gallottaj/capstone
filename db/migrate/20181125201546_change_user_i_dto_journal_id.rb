class ChangeUserIDtoJournalId < ActiveRecord::Migration[5.2]
  def change
    rename_column :goals, :user_id, :journal_id
  end
end
