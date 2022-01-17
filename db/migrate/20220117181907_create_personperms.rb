class CreatePersonperms < ActiveRecord::Migration[7.0]
  def change
    create_table :personperms do |t|
      t.string :name
      t.string :passport

      t.timestamps
    end
  end
end
