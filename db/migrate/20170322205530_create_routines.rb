class CreateRoutines < ActiveRecord::Migration[5.0]
  def change
    create_table :routines do |t|
      t.belongs_to :user, index: true
      t.integer :phase, :default => PHASE_PRESS_BENCH

      t.timestamps
    end
  end
end
