class CapsulesController < ApplicationController
  def show
    @capsule = Capsule.find(params[:id])
  end
end
