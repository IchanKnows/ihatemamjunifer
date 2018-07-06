class HatesController < ApplicationController

	def new
		@hate = Hate.new
	end

	def create

		@hate = Hate.new(hate_params)

		if @hate.save
			flash[:notice] = "your hate is successfuly recorded!"
			redirect_to root_path(@hate)
		else
			render 'new'

		end

	end

	def destroy
		@hate = Hate.find(params[:id])
	    @hate.destroy
	    flash[:danger] = "message was successfully deleted"
	    redirect_to root_path
  	end

	private

	def hate_params

		params.require(:hate).permit(:name, :message)

	end

end