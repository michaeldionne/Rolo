class DexesController < ApplicationController
  before_action :set_dex, only: [:show, :edit, :update, :destroy]
  beofre_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @dexes = Dex.all
  end

  def show
  end

  def new
    @dex = current_user.dexes.build
  end

  def edit
  end

  def create
    @dex = current_user.dexes.build(dex_params)
    if @dex.save
      redirect_to @dex, notice: 'Dex was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @dex.update(dex_params)
      redirect_to @dex, notice: 'Dex was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @dex.destroy
    redirect_to dexes_url
  end

  private
    def set_dex
      @dex = Dex.find(params[:id])
    end

    def corrent_user
      @dex = current_user.dexes.find_by(id: (params[:id])
      redirect_to dexes_path, notice: "Sorry, no soup for you! That wasn't your Dex." if @dex.nil
    end

    def dex_params
      params.require(:dex).permit(:description)
    end
end