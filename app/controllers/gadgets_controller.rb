class GadgetsController < ApplicationController
  clear_respond_to
  respond_to :html

  before_filter :authenticate_user!

  def create
    Gadget.create(params)

    render :index
  end

  def index
    if params[:search].blank?
      @gadgets = Gadget.all
    else
      # TODO this is very basic, doesn't consider capitalization
      @gadgets = Gadget.where('name LIKE ?', params[:search])
    end
  end

  def show
    @gadget = Gadget.find params[:gadget_id]
  end
end
