class ContactsController < ApplicationController
	def new
		@contact = Contacts.new
	end

	def create
		@contact = Contacts.new(params[:contact])
		@contact.request = request
		if @contact.deliver
			flash.now[:error] = nil
			flash.now[:notice] = 'Thank for you message!'
		else
			flash.now[:error] = 'Cannot send message.'
			render :new
		end
	end
end
