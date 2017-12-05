# @attr [integer] id
# @attr [string] doctor
# @attr [string] patient
# @attr [string] disease

class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :doctor_name, :patient_name, :disease

  def doctor_name
    Doctor.find(self.doctor_id).name
  end

  def patient_name
    Patient.find(self.patient_id).name
  end
end
