class CreateDatabase < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.column :name, :string, :limit => 80
      t.column :description, :string
    end

    create_table(:categories_products, :id => false) do |t|
      t.column :category_id, :integer
      t.column :product_id, :integer
    end

    create_table :categories do |t|
      t.column :name, :string, :limit => 80
    end
  end

  def self.down
    drop_table :categories_products
    drop_table :products
    drop_table :categories
  end

end
