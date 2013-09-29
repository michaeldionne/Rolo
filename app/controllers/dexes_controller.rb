class DexesController < ApplicationController
  before_action :set_dex, only: [:show, :edit, :update, :destroy]

  def index
    @dexes = Dex.all
  end

  def show
  end

  def new
    @dex = Dex.new
  end

  def edit
  end

  def create
    @dex = Dex.new(dex_params)
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

    def dex_params
      params.require(:dex).permit(:description)
    end
end
