module Lms
  class ItemList < ApplicationRecord
    belongs_to :item, :counter_cache => true
    belongs_to :list, :counter_cache => true
  end
end
