class CreateMedicines < ActiveRecord::Migration
  def change
    create_table :medicines do |t|
      t.string :name
      t.text :description
      t.text :time

      t.timestamps
    end
  end
end
