class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :nazwa
      t.text :opis
      t.string :image_url
      t.decimal :cena

      t.timestamps
    end
  end
end
