# @attr [integer] id
# @attr [string] doctor
# @attr [string] patient
# @attr [string] disease

class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :doctor, :patient, :disease
end
