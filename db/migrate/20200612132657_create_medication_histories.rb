class CreateMedicationHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :medication_histories do |t|

      t.timestamps
    end
  end
end
