class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|

    	t.string :band 
    	t.string :venue 
    	t.string :city
    	t.string :date
    	t.string :price 
    	t.string :description

      t.timestamps null: false
    end
  end
end
