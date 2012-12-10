class CreateKoszyks < ActiveRecord::Migration
  def change
    create_table :koszyks do |t|

      t.timestamps
    end
  end
end
