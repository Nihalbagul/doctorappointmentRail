class PatientsController < ApplicationController
  before_action :require_login
  before_action :set_patient, only: %i[edit update destroy show]

  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    @patient.registered_at = DateTime.now
    if @patient.save
      redirect_to patients_path, notice: "Patient registered successfully!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @patient.update(patient_params)
      redirect_to patients_path, notice: "Patient updated successfully!"
    else
      render :edit
    end
  end

  def destroy
    @patient = Patient.find(params[:id])
    @patient.destroy
    redirect_to patients_path, notice: "Patient deleted successfully!"
  end
  

  def show
  end

  private

  def set_patient
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:name, :age, :address, :phone)
  end
end
