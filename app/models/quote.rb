class Quote < ActiveRecord::Base
  has_and_belongs_to_many :tags

  validates :phrase, presence: true

  def add_tag(name)
    self.tags.find_or_create_by(name: name)
  end
end
