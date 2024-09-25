class CreateOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :options do |t|
      t.string :content
      t.integer :love_point
      t.integer :diligence_point
      t.integer :freedom_point
      t.integer :adventure_point
      
      t.references :question, foreign_key: true

      t.timestamps
    end
    add_index :options, [:question_id, :content], unique: true
  end
end
