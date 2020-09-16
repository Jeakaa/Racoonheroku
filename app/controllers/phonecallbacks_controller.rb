class PhonecallbacksController < ApplicationController

  def index
    @phonecallbacks = params[:state].present? ? Phonecallback.where("state = ?", "#{params[:state]}") : Phonecallback.all
    @phonecallback = Phonecallback.new
    @state = params[:state]
  end

  def new
    @phonecallback = Phonecallback.new
  end

  def create
    @phonecallback = Phonecallback.new(phonecallback_params)
    @phonecallback[:state] = Phonecallback::UNPERFORMED

    respond_to do |format|
      if @phonecallback.save
        flash[:notice] = "Ваша заявка принята."
        format.js   {render :create}
        format.html {redirect_to action: :index}
      else
        format.html {render action: :new}
      end
    end

  end

  def edit
    @phonecallback = Phonecallback.find(params[:id])
  end

  def update
    @phonecallback = Phonecallback.find(params[:id])
    if @phonecallback.update(phonecallback_params)
      redirect_to action: :index
    else
      render action: :edit
    end
  end

  private def phonecallback_params
    params.require(:phonecallback).permit(:name, :phonenumber, :comment, :state)
  end

  def destroy
    @phonecallback = Phonecallback.find(params[:id])
    respond_to do |format|
      if @phonecallback.destroy
      format.js
      format.html {redirect_to action: :index}
      end
    end

  end

  def show
    @phonecallback = Phonecallback.find(params[:id])
  end


end
