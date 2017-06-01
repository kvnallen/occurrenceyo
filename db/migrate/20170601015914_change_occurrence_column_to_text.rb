class ChangeOccurrenceColumnToText < ActiveRecord::Migration[5.0]
  def change
     change_column :occurrences, :description, :text
  end
end
