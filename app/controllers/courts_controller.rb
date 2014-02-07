class CourtsController < ApplicationController

	def index
		@courts = Court.all
	end

	def new
		@court = Court.new
	end

	def create
		@court = Court.new(court_params)
		if @court.save
			redirect_to action: 'index'
			flash[:notice] = 'You successfully added a new court!'
		else
			render action: 'new'
		end

	end

	def edit
		@court = Court.find(params[:id])
		render action: 'new'
	end

	def update
		@court = Court.find(params[:id])
		if @court.update(court_params)
			redirect_to action: 'index'
			flash[:notice] = 'You successfully updated the info for Court ' + @court.court_num.to_s + '!'
		else
			render action: 'edit'
		end
	end

	def destroy
		@court = Court.find(params[:id])
		@court.destroy
		redirect_to action: 'index'
	end

	def show
		@court = Court.find(params[:id])
	end


private

	def court_params
		params.require(:court).permit(:court_num, :booked)
	end

end
