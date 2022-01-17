class CreateTranperms < ActiveRecord::Migration[7.0]
  def change
    create_table :tranperms do |t|
      t.string :mark
      t.string :gozznak

      t.timestamps
    end
  end
end
