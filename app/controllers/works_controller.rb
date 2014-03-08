class WorksController < ApplicationController
  
  def index
    @works = Work.all
  end
  #def show
    #@work = Work.find(params[:id])
  #end

  def create                                        #add a new work.
    #puts "hello" 
    #puts params[:work]
    Work.create params[:work].permit(:name, :url)   #makes a new db entry with 
    #redirect_to :back                              #accepted data from form
    redirect_to '/admin'                            #takes user back to admin page
  end                                               #showing all works including the new one.

  def update
    @work = Work.find params[:id]
    @work.update params[:work].permit(:name, :url)
    redirect_to '/admin'
  end

  def destroy
    @work = Work.find(params[:id]).destroy
    redirect_to '/admin'
  end
end