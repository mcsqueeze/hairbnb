class RemoveWigFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_reference :users, :wig
  end
end
