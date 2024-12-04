class Admin::DashboardController < ApplicationController
  def index
    @tip_calculations = TipCalculation.order(created_at: :desc)
  end
end
