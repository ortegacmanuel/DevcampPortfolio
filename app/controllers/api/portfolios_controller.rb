class Api::PortfoliosController < ApplicationController
  def index
    render json: Portfolio.all
  end

  def show
    portfolio = Portfolio.find(params[:id])
    render json: portfolio
  end
end
