class HomeController < ApplicationController
  def index
    @new_garments = Garment.order({created_at: :desc}).limit(10)
  end
end