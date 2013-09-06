require 'spec_helper'

describe GadgetsController do
  # TODO verify that the 302 redirect is actually the login page
  context 'unauthenticated' do
    it 'restricts access to #index' do
      get :index

      expect(response.code.to_i).to eq(302)
    end

    it 'restricts access to #show' do
      get :show, gadget_id: 1

      expect(response.code.to_i).to eq(302)
    end
  end

  context 'authenticated' do
    before(:each) do
      sign_in FactoryGirl.create(:user)
    end

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
