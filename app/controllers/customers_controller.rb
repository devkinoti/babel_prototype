class CustomersController < ApplicationController
	def new
		@customer = Customer.new
	end
	
	def create
		@customer = Customer.new(params[:customer])
		if @customer.save
			flash[:success] = "Hey thanks! We got your request.We'll get back to you as fast as we can.Cheers!"
			redirect_to root_url
		else
			render 'new'
		end
	end
end
