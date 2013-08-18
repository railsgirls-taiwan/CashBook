class Record < ActiveRecord::Base
  belongs_to :category

  def self.sum
    all.sum(&:amount)
  end
end
