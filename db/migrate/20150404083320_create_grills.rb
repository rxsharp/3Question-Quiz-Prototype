class CreateGrills < ActiveRecord::Migration
  def change
    create_table :grills do |t|
      t.string :ans1
      t.string :ans2
      t.string :ans3
      t.references :question, index: true

      t.timestamps null: false
    end
    add_foreign_key :grills, :questions
  end
end
