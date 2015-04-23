class Article < ActiveRecord::Base
  belongs_to :category

  # Validations
  validates_presence_of :title, :content

  # Scopes
  scope :alphabetical, ->{ order('title') }
  scope :active, -> { where(active: true) }
end
