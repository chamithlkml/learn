class CreateGallery < ActiveRecord::Migration
  def self.up
    create_table :photographers do |t|
      t.column :name, :string
    end

    create_table :galleries do |t|
      t.column :photographer_id, :integer
      t.column :name, :string
    end

    create_table :photos do |t|
      t.column :gallery_id, :integer
      t.column :name, :string
      t.column :file_path, :string
    end

  end

  def self.down
    drop_table :photos
    drop_table :galleries
    drop_table :photographers
  end

end
