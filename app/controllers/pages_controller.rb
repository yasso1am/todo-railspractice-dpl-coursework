class PagesController < ApplicationController
  def index
    @pages = Page.all
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)

    if @page.save
      redirect_to pages_path
    else
      render :new
    end
  end
  
  private

    def pages_params
      params.require(:page).permit(:todo, :duedate, :description)
    end
    
end
