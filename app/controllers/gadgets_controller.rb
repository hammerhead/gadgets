class GadgetsController < ApplicationController
  def show
    @gadget = Gadget.find params[:gadget_id]
  end
end
