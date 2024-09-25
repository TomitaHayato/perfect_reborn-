class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :title, null: false

      t.timestamps
    end
    add_index :questions, :title, unique: true
  end
end
