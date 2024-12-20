class Admin::BaseController < ApplicationController
  before_action :authenticate_admin

  private

  def authenticate_admin
    authenticate_or_request_with_http_basic do |username, password|
      username == "admin" && password == ENV['ADMIN_PASSWORD'] || 'relworx2024'
    end
  end
end
