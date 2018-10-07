module Lms
  class ItemList < ApplicationRecord
    belongs_to :item#, :counter_cache => true
    belongs_to :list#, :counter_cache => true
    validates_uniqueness_of :item, uniqueness: { scope: :list }
  end
end
