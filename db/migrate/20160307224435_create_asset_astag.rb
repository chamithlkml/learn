class CreateAssetAstag < ActiveRecord::Migration
  def self.up
    create_table :assets_astags do |t|
      t.column :asset_id, :integer
      t.column :astag_id, :integer
    end
  end

  def self.down
    drop_table :assets_astags
  end
end
