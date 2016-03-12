class CreateAssetTypes < ActiveRecord::Migration
  def self.up
    create_table :asset_types do |t|
      t.column :name, :string
    end
  end

  def self.down
    drop_table :asset_types
  end

end
