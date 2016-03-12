class CreateChapters < ActiveRecord::Migration
  def self.up
    create_table :chapters do |t|
      t.timestamps null: false
    end
  end

  def self.down
  	drop_table :chapters
  end
end
