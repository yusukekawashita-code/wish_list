class WishesController < ApplicationController
  before_action :set_wish, only: [:show, :edit, :update, :destroy]

  def index
    @wishes = Wish.all
  end

  def show
  end

  def new
    @wish = Wish.new
  end

  def create
    @wish = Wish.new(wish_params)

    if @wish.save
      redirect_to wishes_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @wish.update(wish_params)
      redirect_to @wish
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @wish.destroy
    redirect_to wishes_path
  end

  private

  def set_wish
    @wish = Wish.find(params[:id])
  end

  def wish_params
    params.require(:wish).permit(:title, :description, :completed)
  end
end