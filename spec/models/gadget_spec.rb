require 'spec_helper'

describe Gadget do
  it { should allow_mass_assignment_of(:name) }
  it { should allow_mass_assignment_of(:brand) }
  it { should allow_mass_assignment_of(:buy_date) }
end
