class CateringsController < ApplicationController
	def new
	end

  def create
		@catering = Catering.new(office_params)
		
		@catering.save
		redirect_to @catering
	end

	def show
		@catering = Catering.find(params[:id])
	end

	def index
		@caterings = Catering.all
	end

private
	def office_params
		params.require(:post).permit(:title, :adress, :phone, :email, :work_time, :minimum_order, :delivery_price, :description)
	end

end
