class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :name,      null: false
      t.string :furigana,  null: false
      t.date :birthday,    null: false
      t.string :sex,       null: false
      t.integer :receipt_number, null: false
      t.integer :insurance_number, null: false
      t.timestamps
    end
    add_index :patients, :receipt_number,       unique: true
  end
end
