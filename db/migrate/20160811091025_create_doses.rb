class CreateDoses < ActiveRecord::Migration[5.0]
  def change
    create_table :doses do |t|
      t.references :cocktails, foreign_key: true
      t.references :ingredients, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
