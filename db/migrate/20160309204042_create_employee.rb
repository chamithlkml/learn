class CreateEmployee < ActiveRecord::Migration
  def self.up
    create_table :employees do |t|
      t.column :last_name, :string
      t.column :first_name, :string
      t.column :hire_date, :date
    end
  end

  def self.down
    drop_table :employees
  end

end
