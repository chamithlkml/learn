class CreateAnimals < ActiveRecord::Migration
  def self.up
    create_table :animals do |t|
      t.column :name, :string
      t.column :description, :text
    end

    Animal.create :name => 'Antilocapra american', :description => <<-EOS
        The deer-like Pronghorn is neither antelope nor goat -- it is the sole surviving member of an ancient family dating back 20 million years.
      EOS

    Animal.create :name => 'Striped Whipsnake', :description => <<-EOS
        The name "whipsnake" comes from the snake's resemblence to a leather whip.
      EOS

    Animal.create :name => "The Common Dolphin", :description => <<-EOS
        (Delphinis delphis) has black flippers and back with yellowish flanks and a white belly.
      EOS

  end

  def self.down
    drop_table :animals
  end

end
