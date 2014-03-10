class Work < ActiveRecord::Base
# use "vimeo_id" to retrieve the corresponding "thumbnail_medium", 
# and "url", and add it to the model object.
require 'open-uri'
  before_save :get_thumbnail

  private
    def get_thumbnail
      # FIXME pay attention to class/instance delineation
      # NOTE: move me to the top because i'm a require
      # self.vimeo_id # no params in models
      thumbnail = open("http://vimeo.com/api/v2/video/#{self.vimeo_id}.json").read
      thumbnail = JSON(thumbnail).first
      self.vimeo_thumbnail = thumbnail["thumbnail_medium"] # no params in models
    end
end