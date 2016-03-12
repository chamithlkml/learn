class CreateAssets < ActiveRecord::Migration
  def self.up
    create_table :assets do |t|
      t.column :asset_type_id, :integer
      t.column :name, :string
      t.column :description, :string
    end
  end

  def self.down
    drop_table :assets
  end
end
