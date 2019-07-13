class Api::PhotosController < ApplicationController
  protect_from_forgery with: :null_sessions

  def index
    @photos = Photo.all
    render "index.json.jb"
  end

  def create
    @photos = 
    render "create.json.jb"
    
  end
end
