class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :birthdate #, :author

  belongs_to :kind
  has_many :phones
  has_one :address


  # def author
  #   "João Matheus"
  # end

  # colocar data no formato iso 8601

  # def as_json(*args)
  #   h = super(*args)
  #   h[:birthdate] = object.birthdate.to_time.iso8601 unless object.birthdate.blank?
  #   h
  # end
end