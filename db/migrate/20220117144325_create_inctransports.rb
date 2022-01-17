class CreateInctransports < ActiveRecord::Migration[7.0]
  def change
    create_table :inctransports do |t|
      t.string :mark
      t.string :gozznak
      t.boolean :permission
      t.string :author

      t.timestamps
    end
  end
end
