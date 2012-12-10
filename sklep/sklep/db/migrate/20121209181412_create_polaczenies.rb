class CreatePolaczenies < ActiveRecord::Migration
  def change
    create_table :polaczenies do |t|
      t.integer :produkt_id
      t.integer :koszyk_id

      t.timestamps
    end
  end
end
