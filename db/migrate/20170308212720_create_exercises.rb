class CreateExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises do |t|
      t.belongs_to :day, index: true

      t.string :description
      t.integer :load, optional: true

      t.timestamps
    end
  end
end
