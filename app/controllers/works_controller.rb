class WorksController < ApplicationController
  
  def index
    #@works = Work.all.sort_by{:created_at}.reverse
    @works = Work.all.order(:created_at).reverse
  end

  def create                                        #add a new work.
    #puts "hello" 
    #puts params[:work]
    Work.create params[:work].permit(:name, :url, :vimeo_id)   #makes a new db entry with 
    #redirect_to :back                              #accepted data from form
    redirect_to '/admin'                            #takes user back to admin page
  end                                               #showing all works including the new one.

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