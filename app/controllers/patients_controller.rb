class PatientsController < ApplicationController
  def index
    @patients = Patient.includes(:user).order("receipt_number DESC")
  end

  def show
    @patient = Patient.find(params[:id])
    @patients = Patient.all    # ちゃんと表示できるかの確認用なのであとで消す
  end

  private
  def patient_params
    params.require(:patient).permit(:name, :furigana, :birthday, :sex, :receipt_number, :insurance_number).merge(user_id: current_user.id)
  end
end
