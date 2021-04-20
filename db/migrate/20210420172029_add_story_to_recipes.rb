class AddStoryToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :story, :text
  end
end
