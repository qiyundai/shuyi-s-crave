class RemoveUnitFromRecipeIngredient < ActiveRecord::Migration[6.1]
  def change
    remove_reference :recipe_ingredients, :unit
  end
end
