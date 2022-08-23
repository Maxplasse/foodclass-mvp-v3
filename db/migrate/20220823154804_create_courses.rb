class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.integer :duration
      t.string :difficulty
      t.string :category
      t.string :ingredients
      t.datetime :starts_at
      t.datetime :ends_at
      t.integer :level_points
      t.integer :participants_total
      t.references :chef, null: false, foreign_key: true

      t.timestamps
    end
  end
end
