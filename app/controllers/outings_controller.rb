class OutingsController < ApplicationController
  def index
    @outings = Outing.all
    @partners = Partner.all
  end

  def show
    @partner_id = params[:id]
    @partner = Partner.find(params[:id])

    @outings = Outing.all
    @my_outings = Outing.where("user_id = ?", @partner_id)
    # @outing = Outing.find(params[:id])
  end

  def new
    @partner_id = params[:id]
    @outing = Outing.new
  end

  def create
    @outing = Outing.new
    @outing.activity = params[:activity]
    @outing.date = params[:date]
    @outing.user_id = params[:user_id]
    # @partner_idd = params[:user_id]

    if @outing.save
      # redirect_to "/outings/:partner_idd", :notice => "Outing created successfully."
      redirect_to :action => 'show', :id => @outing.user_id
    else
      render 'new'
    end
  end

  def edit
    @outing = Outing.find(params[:outingid])
    @partnerid = params[:partnerid]
  end

  def update
    @outing = Outing.find(params[:outingid])

    @outing.activity = params[:activity]
    @outing.date = params[:date]
    @outing.user_id = params[:partnerid]

    if @outing.save
      redirect_to :action => 'show', :id => @outing.user_id
      # redirect_to "/outings", :notice => "Outing updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @outing = Outing.find(params[:outingid])
    @partnerid = params[:partnerid]

    @outing.destroy

    redirect_to :action => 'show', :id => @partnerid
    # redirect_to "/outings", :notice => "Outing deleted."
  end
end
