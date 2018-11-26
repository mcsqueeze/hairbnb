class CreateWigs < ActiveRecord::Migration[5.2]
  def change
    create_table :wigs do |t|
      t.string :title
      t.string :description
      t.string :photo
      t.string :location
      t.string :policies
      t.string :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
