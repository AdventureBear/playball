class StadiumsController < ApplicationController


def index
  @stadiums = Stadium.all
  #@stadiums = Stadium.newest
  #@stadiums = ["Pensacola Bayfront Stadium","Peoples Natural Gas Field","DeVault Memorial Stadium"]
end

def show
	@stadium = Stadium.find(params[:id])
end

def edit
	@stadium = Stadium.find(params[:id])
end

def update
	@stadium = Stadium.find(params[:id])
	#stadium_params = params.require(:stadium).permit(:name, :city, :state, :opening, :centerfieldft, :capacity, :teamname, :website)
	if @stadium.update(stadium_params)
		redirect_to @stadium, notice: "Stadium successfully updated!" 
	else
		render :edit
	end

	
end


def new
	@stadium = Stadium.new
end


def create
	#stadium_params = params.require(:stadium).permit(:name, :city, :state, :opening, :centerfieldft, :capacity, :teamname, :website)
	@stadium = Stadium.new(stadium_params)
	if @stadium.save
		redirect_to @stadium, notice: "Stadium succesfully created!"
	else
		render :new
	end
end

def destroy
	@stadium = Stadium.find(params[:id])
	@stadium.destroy
	redirect_to stadiums_url, alert: "Stadium successfully deleted!"
end


private
	def stadium_params
			stadium_params = params.require(:stadium).permit(:name, :city, :state, :opening, :centerfieldft, :capacity, :teamname, :website, :league, :affiliate, :closing, :image_file_name)
	end

end
