class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.string :name
      t.integer :reps
      t.integer :sets
      t.string :day
      t.references :schedule, foreign_key: true

      t.timestamps
    end
  end
end
