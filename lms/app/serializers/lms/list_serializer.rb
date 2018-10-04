module Lms
  class ListSerializer < ActiveModel::Serializer
    root 'lists'
    attributes :id

  end
end
