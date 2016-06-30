class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.belongs_to :drink, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
