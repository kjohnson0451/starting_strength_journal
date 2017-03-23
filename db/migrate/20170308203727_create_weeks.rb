class CreateWeeks < ActiveRecord::Migration[5.0]
  def change
    create_table :weeks do |t|
      t.belongs_to :routine, index: true

      t.timestamps
    end
  end
end
