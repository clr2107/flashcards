class CreateGuesses < ActiveRecord::Migration[5.0]
  def change
    create_table :guesses do |t|
      t.string :text, null: false
      t.integer :correct, null: false
      t.references :round, foreign_key: true
      t.references :card, foreign_key: true

      t.timestamps
    end
  end
end
