class CreatePersonasincs < ActiveRecord::Migration[7.0]
  def change
    create_table :personasincs do |t|
      t.string :name
      t.string :passport
      t.boolean :permission
      t.string :author

      t.timestamps
    end
  end
end
