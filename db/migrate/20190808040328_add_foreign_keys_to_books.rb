class AddForeignKeysToBooks < ActiveRecord::Migration[5.2]
  def change
    add_reference :books, :category, foreign_key: true
    add_reference :books, :author, foreign_key: true
    add_reference :books, :publishhouse, foreign_key: true
  end
end
