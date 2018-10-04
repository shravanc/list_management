module Lms
  class ListLayout < ApplicationRecord
    belongs_to :list
    belongs_to :layout
  end
end
