class PatientsController < ApplicationController
  def index
    @patients = Patient.includes(:user).order("receipt_number DESC")
  end
end
