class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.references :user
      t.boolean :viewable
      t.text :instructions
      t.text :url
      t.timestamps null: false
    end
  end
end
