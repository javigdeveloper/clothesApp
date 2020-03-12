class CreateOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :owners do |t|
      t.string :name
      t.integer :garment_id
      t.timestamps
    end
  end
end
