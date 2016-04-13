class Zedocument
  include Mongoid::Document
  mount_uploader :filename, FileUploader, mount_on: :filename

  store_in collection: "documentz"

  field :filename, type: String
end
