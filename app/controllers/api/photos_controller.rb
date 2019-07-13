class Api::PhotosController < ApplicationController
  protect_from_forgery with: :null_sessions

  def index
    @photos = Photo.all
    render "index.json.jb"
  end

  def create
    @photo = Photo.new(
    name: params[:input_name],
    width: params[:input_width],
    height: params[:input_height]
    )
    @photo.save
    render "create.json.jb"
  end

  def show
    the_id = params[:id]
    @photo = Photo.find_by(id: the_id)
    render "show.json.jb"
    
  end
end
