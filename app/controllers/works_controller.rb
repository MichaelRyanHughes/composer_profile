class WorksController < ApplicationController
  # NOTE: add helper method to return permitted params private method. 
  before_filter :authenticate_user!, only: [:create, :update, :destroy]
  
  def index
    @works = Work.order(created_at: :desc)
  end

  def create                                                    #add a new work.
    Work.create params[:work].permit(:name, :url, :vimeo_id)    #makes a new db entry with 
    redirect_to '/admin'                                        #takes user back to admin page
  end                                                           #showing all works including the new one.

  def update
    @work = Work.find params[:id]
    @work.update params[:work].permit(:name, :url, :vimeo_id)
    redirect_to '/admin'
  end

  def destroy
    @work = Work.find(params[:id]).destroy
    redirect_to '/admin'
  end
end