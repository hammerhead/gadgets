class GadgetsController < ApplicationController
  clear_respond_to
  respond_to :html

  before_filter :authenticate_user!

  def new
    @gadget = Gadget.new
  end

  def create
    Gadget.create(name: params[:gadget][:name],
                  brand: params[:gadget][:brand],
                  buy_date: params[:gadget][:buy_date],
                  photo: params[:gadget][:photo]
                  )

    @gadgets = Gadget.all
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
