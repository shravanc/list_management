module Lms
  class AppItem < ApplicationRecord
    belongs_to :item, :counter_cache => true 
    belongs_to :app, :counter_cache => true 
  end
end
