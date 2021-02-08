class IncomeController < ApplicationController
  before_action :set_income, only: [:show, :edit, :update]
  
  def new
    @income = Income.new
  end

  def create
    @income = Income.new(income_params)
    @income.save
    if @income.save
      redirect_to income_path(@income)
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    @income.update(income_params)
  end

  private

  def set_income
    @income = Income.find(params[:id])
  end

  def income_params
    params.require(:income).permit(:frequency, :currency, :hours, :days, :value)
  end
end
