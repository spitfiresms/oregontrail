class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
		t.integer :foodamt
		t.integer :moneyamt
		t.integer :oxamt
		t.integer :clothingamt
		t.integer :ammunitionamt
		t.integer :wheelamt
		t.integer :axelamt
		t.integer :tongueamt
      t.timestamps
    end
  end
end
