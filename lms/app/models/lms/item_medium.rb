module Lms
  class ItemMedium < ApplicationRecord
    belongs_to :item
    belongs_to :medium
  end
end
