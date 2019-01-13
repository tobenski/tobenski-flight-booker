class Booking < ApplicationRecord
  belongs_to      :flight
  has_many        :passengers

  accepts_nested_attributes_for :passengers, reject_if: lambda { |a| a[:name].blank? && a[:email].blank? }

  validates_associated :passengers
end
