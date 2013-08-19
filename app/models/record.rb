class Record < ActiveRecord::Base
  belongs_to :category
  validates :title, :amount, :date, presence: true
  validates :amount, numericality: true

  def self.sum
    all.sum(&:amount)
  end
end
