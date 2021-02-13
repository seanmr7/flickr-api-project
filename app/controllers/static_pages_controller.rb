require 'flickr'

class StaticPagesController < ApplicationController

  def index
    flickr = Flickr.new
    
    if params[:id]
      @photos = flickr.people.getPublicPhotos :user_id => params[:id]
    end
  end
end
