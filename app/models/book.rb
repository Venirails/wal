class Book < ApplicationRecord
  self.per_page = 3
  validates :name,:author,presence: true
  validates :name, length: { minimum: 2 }
  validates :name, uniqueness: true
  validates :price, numericality: true

  before_save :merge_names
  after_destroy :write_in_log

  def merge_names
    self.name = self.name + " By " + self.author
  end

  def write_in_log
  	 logger.error "=========ALAS! A book has been deleted #{self.id} with name #{self.name}============="
  end
end
