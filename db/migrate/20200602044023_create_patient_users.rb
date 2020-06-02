class CreatePatientUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :patient_users do |t|

      t.timestamps
    end
  end
end
