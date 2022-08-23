class CreateChefs < ActiveRecord::Migration[7.0]
  def change
    create_table :chefs do |t|
      t.string :genre
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
