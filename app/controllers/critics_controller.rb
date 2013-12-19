class CriticsController < ApplicationController
  # GET /critics
  # GET /critics.json
  def index
    @critics = Critic.all
  end

  # GET /critics/1
  # GET /critics/1.json
  def show
    @critic = Critic.find(params[:id])
    @reviews = @critic.reviews
  end

  # GET /critics/new
  # GET /critics/new.json
  def new
    @critic = Critic.new
  end

  # GET /critics/1/edit
  def edit
    @critic = Critic.find(params[:id])
  end

  # POST /critics
  # POST /critics.json
  def create
    @critic = Critic.new(params[:critic])
    if @critic.save
      sign_in @critic
      redirect_to @critic
    else
      render 'new'
    end
  end

  # PUT /critics/1
  # PUT /critics/1.json
  def update
    @critic = Critic.find(params[:id])
    if @critic.update_attributes(params[:critic])
      redirect_to @critic
    else
      render 'edit'
    end
  end

  # DELETE /critics/1
  # DELETE /critics/1.json
  def destroy
    @critic = Critic.find(params[:id])
    @critic.destroy
  end
end
