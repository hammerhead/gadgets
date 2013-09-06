class Gadget < ActiveRecord::Base
  include ActiveModel::Validations

  validates :name, presence: true
  validates :brand, presence: true

  attr_accessible :name, :brand, :buy_date, :photo

  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/missing.png"
end
