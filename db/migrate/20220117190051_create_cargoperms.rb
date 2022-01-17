class CreateCargoperms < ActiveRecord::Migration[7.0]
  def change
    create_table :cargoperms do |t|
      t.string :name
      t.string :number

      t.timestamps
    end
  end
end
