class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :score
      t.references :grill, index: true

      t.timestamps null: false
    end
    add_foreign_key :results, :grills
  end
end
