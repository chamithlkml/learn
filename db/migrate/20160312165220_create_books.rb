class CreateBooks < ActiveRecord::Migration
  def self.up
    create_table :books do |t|
      t.column :name, :string
      t.column :description, :text
    end

    create_table :inserts do |t|
      t.column :name, :string
    end

    create_table :books_inserts do |t|
      t.column :book_id, :integer
      t.column :insert_id, :integer
    end

  end

  def self.down
    drop_table :books
    drop_table :inserts
    drop_table :book_inserts
  end
end
