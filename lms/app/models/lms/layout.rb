module Lms
  class Layout < ApplicationRecord
    has_many :list_layouts  
    has_many :lists, through: :list_layouts
  end
end
