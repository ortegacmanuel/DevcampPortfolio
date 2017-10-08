class Api::PortfoliosController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: Portfolio.all
  end

  def show
    portfolio = Portfolio.find(params[:id])
    render json: portfolio
  end

  def create
    portfolio = Portfolio.new(portfolio_params)
    if portfolio.save
      render json: {
        status: 200,
        message: "Portfolio successfully created.",
        portfolio: portfolio
      }.to_json
    else
      render json: {
        status: 500,
        errors: portfolio.errors
      }.to_json
    end
  end

  private
  def portfolio_params
    params.require(:portfolio).permit(
      :title,
      :subtitle,
      :body
    )
  end
end
