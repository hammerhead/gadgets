describe GadgetsController do
  context '#show' do
    let(:gadget) { double('gadget', id: 1) }

    it 'returns a Gadget object' do
      get :show, gadget_id: gadget.id

      expect(response).to be_ok
    end
  end
end
