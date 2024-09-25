class CreateAnimals < ActiveRecord::Migration[7.0]
  def change
    create_table :animals do |t|
      t.string :name, null: false
      t.string :comment

      t.timestamps
    end
  end
end
