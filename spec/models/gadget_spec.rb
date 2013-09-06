require 'spec_helper'

describe Gadget do
  it { should allow_mass_assignment_of(:name) }
  it { should allow_mass_assignment_of(:brand) }
  it { should allow_mass_assignment_of(:buy_date) }
  it { should allow_mass_assignment_of(:photo) }

  context 'validations' do
    it 'requires a name' do
      expect(Gadget.new(brand: 'cool brand')).to have(1).errors_on(:name)
    end

    it 'requires a brand' do
      expect(Gadget.new(name: 'my gadget')).to have(1).errors_on(:brand)
    end
  end
end
