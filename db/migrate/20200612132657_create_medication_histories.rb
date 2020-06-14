class CreateMedicationHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :medication_histories do |t|
      t.integer :user_id
      t.integer :patient_id
      t.text :subjective
      t.text :objective
      t.text :assessment
      t.text :education_plan
      t.text :care_plan
      t.text :observational_plan
      t.text :inquiry
      t.text :free_comment
      t.text :request_items
      t.text :change_condition
      t.text :medication_status
      t.text :side_effects
      t.text :allergies
      t.text :concomitant_drug
      t.text :otc
      t.text :complications
      t.text :medical_history
      t.text :constitution
      t.text :luxury_goods
      t.text :pregnancy_breastfeeding
      t.text :height_bodywight
      t.text :background
      t.text :medicine_notebook
      t.timestamps
    end
  end
end
