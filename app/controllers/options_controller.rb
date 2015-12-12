class OptionsController < ApplicationController
  def index
    @options = Option.all
  end

  def show
    @option = Option.find(params[:id])
  end

  def new
    @option = Option.new
  end

  def create
    @option = Option.new
    @option.title = params[:title]

    if @option.save
      redirect_to "/options", :notice => "Option created successfully."
    else
      render 'new'
    end
  end

  def edit
    @option = Option.find(params[:id])
  end

  def update
    @option = Option.find(params[:id])

    @option.title = params[:title]

    if @option.save
      redirect_to "/options", :notice => "Option updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @option = Option.find(params[:id])

    @option.destroy

    redirect_to "/options", :notice => "Option deleted."
  end
end
