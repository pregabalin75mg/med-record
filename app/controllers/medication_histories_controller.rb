class MedicationHistoriesController < ApplicationController
  def new
    # @patient = Patient.find(id: params[:format])
    @medication_history = MedicationHistory.new(@patient)
  end

  def create
    MedicationHistory.create(medication_history_params)
  end

  private
  def medication_history_params
    params.require(:medication_history).permit(:subjective, :objective, :assessment, :education_plan, :care_plan, :observational_plan, :inquiry, :free_comment, :request_items, :change_condition, :medication_status, :side_effects, :allergies, :concomitant_drug, :otc, :complications, :medical_history, :constitution, :luxury_goods, :pregnancy_breastfeeding, :height_bodywight, :background,:medicine_notebook).merge(user_id: current_user.id, patient_id: params[:patient_id])
  end
end
