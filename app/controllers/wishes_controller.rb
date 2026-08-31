class WishesController < ApplicationController
  before_action :require_login
  before_action :set_wish, only: [:show, :edit, :update, :destroy]
  
  def index
    @wishes = current_user.wishes
  end

  def show
  end

  def new
    @wish = Wish.new
  end

  def create
    @wish = current_user.wishes.new(wish_params)

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
    @wish = current_user.wishes.find(params[:id])
  end

  def wish_params
    params.require(:wish).permit(:title, :description, :completed)
  end
end