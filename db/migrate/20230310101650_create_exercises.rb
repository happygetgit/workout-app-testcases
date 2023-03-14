class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.references :user, null: true, foreign_key: true
      t.integer :duration_in_min
      t.text :workout
      t.datetime :workout_date
      t.timestamps
    end
  end
end
