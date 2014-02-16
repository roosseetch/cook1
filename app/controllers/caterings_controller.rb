class CateringsController < ApplicationController
	def new
		@catering = Catering.new
	end

	def create
	  @catering = Catering.new(catering_params)
 
  	if @catering.save
    	redirect_to @catering
  	else
    	render 'new'
  	end
	end

	def show
		@catering = Catering.find(params[:id])
	end

	def index
		@caterings = Catering.all
	end

	def edit
		@catering = Catering.find(params[:id])
	end

	def update
		@catering = Catering.find(params[:id])

		if @catering.update(catering_params)
			redirect_to @catering
		else
			render 'edit'
		end
	end

	def destroy
		@catering = Catering.find(params[:id])
		@catering.destroy

		redirect_to caterings_path
	end

private
	def catering_params
		params.require(:catering).permit(:title, :adress, :phone, :email, :work_time, :minimum_order, :delivery_price, :description)
	end

end