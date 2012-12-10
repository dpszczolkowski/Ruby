class CreateProdukts < ActiveRecord::Migration
  def change
    create_table :produkts do |t|
      t.string :nazwa
      t.text :opis
      t.string :img_url
      t.decimal :cena, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
