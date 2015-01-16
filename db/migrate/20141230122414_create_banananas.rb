class CreateBanananas < ActiveRecord::Migration
  
  def up
    create_table :banananas do |t|
	  t.string :name
      t.integer :position
      t.boolean :visible

      t.timestamps
    end
  end

  def down
  	drop_table :predas
  end
  
end
