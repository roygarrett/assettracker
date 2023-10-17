class DashboardController < ApplicationController
  def index
    @categories = Category.all
    @softwares = Software.all
  end
end
