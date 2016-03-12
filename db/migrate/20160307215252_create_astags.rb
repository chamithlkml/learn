class CreateAstags < ActiveRecord::Migration
  def self.up
    create_table :astags do |t|
      t.column :name, :string
    end
  end

  def self.down
    drop_table :astags
  end

end
