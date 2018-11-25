class AddJournalIdToTodos < ActiveRecord::Migration[5.2]
  def change
    add_column :todos, :journal_id, :string
  end
end
