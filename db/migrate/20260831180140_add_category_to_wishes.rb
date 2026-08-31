class AddCategoryToWishes < ActiveRecord::Migration[8.1]
  def change
    add_column :wishes, :category, :string
  end
end
