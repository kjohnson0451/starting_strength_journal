class CreateDays < ActiveRecord::Migration[5.0]
  def change
    create_table :days do |t|
      t.belongs_to :week, index: true
      t.string :name

      t.timestamps
    end
  end
end
