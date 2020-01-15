class CreateAssignBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :assign_books do |t|
      t.references :store, foreign_key: true
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
