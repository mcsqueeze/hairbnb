class AddElementsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :usertype, :string
    add_reference :users, :wig, foreign_key: true
  end
end
