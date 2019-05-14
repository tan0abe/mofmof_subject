class CreateHomes < ActiveRecord::Migration[5.0]
  def change
    create_table :homes do |t|
      t.string :name
      t.integer :price
      t.string :address
      t.integer :year
      t.text :comment

      t.timestamps
    end
  end
end
