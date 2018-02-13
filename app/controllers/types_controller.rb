class TypesController < ApplicationController
  def index
    @types = Type.all
  end

  def show
    @types = Type.find(params[:id])
  end
end
