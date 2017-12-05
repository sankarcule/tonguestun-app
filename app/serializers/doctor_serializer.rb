# @attr [integer] id
# @attr [string] name
# @attr [string] phone_no
# @attr [string] specialization

class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :name, :phone_no, :specialization
end
