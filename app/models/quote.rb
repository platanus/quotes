class Quote < ActiveRecord::Base
  validates :phrase, presence: true
end
