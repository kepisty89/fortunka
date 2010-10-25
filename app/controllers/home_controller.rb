class HomeController < ApplicationController
  def index
    @fortunes = Fortune.all
  end

end
