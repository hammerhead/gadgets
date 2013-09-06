require 'spec_helper'

describe GadgetsController do
  context '#show' do
    let(:gadget) { double('gadget', id: 1) }

    it 'returns all Gadgets' do
      Gadget.should_receive(:all)

      get :index

      expect(response).to be_ok
    end

    it 'returns a Gadget object' do
      Gadget.should_receive(:find).with(gadget.id.to_s).and_return(gadget)

      get :show, gadget_id: gadget.id

      expect(response).to be_ok
    end
  end
end
