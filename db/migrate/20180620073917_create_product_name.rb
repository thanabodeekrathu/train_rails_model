class CreateProductName < ActiveRecord::Migration[5.2]
  def change
    create_table :product_names do |t|
      t.references :product, foreign_key: true
      t.string :lang
      t.string :name
    end
  end
end
