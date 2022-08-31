class DietsController < ApplicationController
	before_action :authenticate_user!
  before_action :set_diet, only: [:show, :edit, :update, :destroy]

  def index
    # @diets = current_user.diets.build
    @diets = policy_scope(Diet)
  end

  def show
  end

  def new
    @diet = Diet.new
    authorize @diet
  end

  def edit
  end

  def create
    @diet = Diet.new(diet_params)
    @diet.user = current_user
    authorize @diet
    if @diet.save
      flash[:notice] = "Diet was created successfully."
      redirect_to diets_path
    else
      render "new", status: :unprocessable_entity
    end
  end

  def destroy
    @diet.destroy!
    flash[:success] = "Diet was successfully deleted."
    redirect_to diets_path
  end

  def update
    if @diet.update(diet_params)
      flash[:notice] = "Diet was successfully updated."
      redirect_to diets_path
    else
      render 'edit', status: :unprocessable_entity
    end
  end


  private
  def diet_params
    params.require(:diet).permit(:title, :date, :user_id)
  end

  def set_diet
    @diet = Diet.find(params[:id])
  end
end 