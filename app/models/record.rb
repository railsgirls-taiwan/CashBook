class Record < ActiveRecord::Base
  def self.sum
    all.sum(&:amount)
  end
end
