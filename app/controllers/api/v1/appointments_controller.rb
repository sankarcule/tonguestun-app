class Api::V1::AppointmentsController < Api::V1::ApiController
  before_action :require_login

  # Returns the list of appointments
  #
  # @query_parameter [string] token
  # @response_class Array<AppointmentSerializer>
  def list_appointments
    json_response(Appointment.all)
  end

  # Create Doctor
  #
  # @query_parameter [string] token
  # @query_parameter [string] name
  # @query_parameter [string] phone_no
  # @query_parameter [string] specialization
  #
  def add_doctor
    name = params[:name]
    phone = params[:phone_no]
    spl = params[:specialization]
    begin
      Doctor.create!(name: name, phone_no: phone, specialization: spl)
    rescue
      json_response(message: 'Error creating. Make sure fields are filled correct.')
    else
      json_response(message: 'Doctor created..')
    end
  end

  # Create Patient
  #
  # @query_parameter [string] token
  # @query_parameter [string] name
  # @query_parameter [string] phone_no
  #
  def add_patient
    name = params[:name]
    phone = params[:phone_no]
    begin
      Patient.create!(name: name, phone_no: phone)
    rescue
      json_response(message: 'Error creating. Make sure fields are filled correct.')
    else
      json_response(message: 'Patient created..')
    end
  end

  # Create Appointment
  #
  # @query_parameter [string] token
  # @query_parameter [integer] doctor
  # @query_parameter [integer] patient
  # @query_parameter [string] disease
  #
  def add_appointment
    doctor = params[:doctor]
    patient = params[:patient]
    disease = params[:disease]
    begin
      Appointment.create!(doctor_id: doctor, patient_id: patient, disease: params[:disease])
    rescue
      json_response(message: 'Error creating. Make sure fields are filled correct.')
    else
      json_response(message: 'Appointment created..')
    end
  end
end
