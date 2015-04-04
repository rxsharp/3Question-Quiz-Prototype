class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :q1
      t.string :q1a
      t.string :q1b
      t.string :q1c
      t.string :q1d
      t.string :q1correct
      t.string :q2
      t.string :q2a
      t.string :q2b
      t.string :q2c
      t.string :q2d
      t.string :q2correct
      t.string :q3
      t.string :q3a
      t.string :q3b
      t.string :q3c
      t.string :q3d
      t.string :q3correct

      t.timestamps null: false
    end
  end
end
