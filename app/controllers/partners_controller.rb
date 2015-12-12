class PartnersController < ApplicationController
  def index
    # @partners = Partner.all
    @my_partners = Partner.where("user_id_1 = ?", current_user.id)
  end

  def show
    @partner = Partner.find(params[:id])
  end

  def new
    @partner = Partner.new
  end

  def create
    @partner = Partner.new
    @partner.user_id_1 = params[:user_id_1]
    @partner.user_id_2 = params[:user_id_2]

    if @partner.save
      redirect_to "/partners", :notice => "Partner created successfully."
    else
      render 'new'
    end
  end

  def edit
    @partner = Partner.find(params[:id])
  end

  def update
    @partner = Partner.find(params[:id])

    @partner.user_id_1 = params[:user_id_1]
    @partner.user_id_2 = params[:user_id_2]

    if @partner.save
      redirect_to "/partners", :notice => "Partner updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @partner = Partner.find(params[:id])

    @partner.destroy

    redirect_to "/partners", :notice => "Partner deleted."
  end
end
