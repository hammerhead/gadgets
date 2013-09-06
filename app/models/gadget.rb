class Gadget < ActiveRecord::Base
  include ActiveModel::Validations

  validates :name, presence: true
  validates :brand, presence: true

  attr_accessible :name, :brand, :buy_date
end
