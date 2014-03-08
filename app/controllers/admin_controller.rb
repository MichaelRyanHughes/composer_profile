class AdminController < ApplicationController
  #before_action :find_work
  before_filter :authenticate_user!
  
  def index
    @works = Work.all
    @work = Work.new
  end

  def new
    @work = Work.new
  end

  def edit
    @work = Work.find(params[:id])
  end

  private
    def find_work
      @work = Work.find(params[:id])
    end
end