class CreateCargoouts < ActiveRecord::Migration[7.0]
  def change
    create_table :cargoouts do |t|
      t.string :name
      t.string :number
      t.boolean :permission
      t.string :author

      t.timestamps
    end
  end
end
