class AddChapterId < ActiveRecord::Migration
  def self.up
    add_column :recipes, :chapter_id, :integer
  end

  def self.down
    remove_column :recipes, :chapter_id
  end
end
