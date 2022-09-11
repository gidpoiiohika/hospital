class AddCategoryIdToDoctors < ActiveRecord::Migration[7.0]
  def change
    add_column :doctors, :category_id, :bigint, null: false, foreign_key: true
  end
end
