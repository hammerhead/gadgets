class GadgetsController < ApplicationController
  def index
    @gadgets = Gadget.all
  end

  def show
    @gadget = Gadget.find params[:gadget_id]
  end
end
