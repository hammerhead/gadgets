class GadgetsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @gadgets = Gadget.all
  end

  def show
    @gadget = Gadget.find params[:gadget_id]
  end
end
