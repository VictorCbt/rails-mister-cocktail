class CreateCocktails < ActiveRecord::Migration[6.0]
  def change
    create_table :cocktails do |t|
      t.text :name
      t.references :reviews, null: false, foreign_key: true
      t.references :ingredients, null: false, foreign_key: true
      t.references :doses, null: false, foreign_key: true

      t.timestamps
    end
  end
end
