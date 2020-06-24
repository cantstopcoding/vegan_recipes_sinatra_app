class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :image_url
      t.text :recipe
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
