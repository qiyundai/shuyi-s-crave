class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :main_ingredient

      t.timestamps
    end
  end
end
