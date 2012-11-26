class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :nazwa
      t.text :opis
      t.string :image_url
      t.decimal :cena, :precision => 8, :scale=>2

      t.timestamps
    end
  end
end
