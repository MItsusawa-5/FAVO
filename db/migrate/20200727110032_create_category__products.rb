class CreateCategoryProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :category__products do |t|

      t.timestamps
    end
  end
end
