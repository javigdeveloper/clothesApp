class CreateGarments < ActiveRecord::Migration[6.0]
  def change
    create_table :garments do |t|
      t.string :prenda
      t.decimal :precio
      t.timestamps      
    end
  end
end
