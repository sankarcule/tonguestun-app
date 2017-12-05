# @attr [integer] id
# @attr [string] name
# @attr [string] phone_no

class PatientSerializer < ActiveModel::Serializer
  attributes :id, :name, :phone_no
end
