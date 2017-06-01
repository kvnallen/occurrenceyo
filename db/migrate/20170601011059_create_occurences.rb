class CreateOccurences < ActiveRecord::Migration[5.0]
  def change
    create_table :occurrences do |t|
      t.string :description
      t.date :end
      t.boolean :solved
      t.references :user, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
