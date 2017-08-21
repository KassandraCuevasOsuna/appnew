class CreateCelulares < ActiveRecord::Migration[5.1]
  def change
    create_table :celulares do |t|
      t.integer :precio
      t.string :modelo
      t.string :memoriain
      t.string :memoriaex

      t.timestamps
    end
  end
end
