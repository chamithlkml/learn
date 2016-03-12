class GalleriesController < ApplicationController
  def index
    @galleries = Gallery.includes(:photos, :photographer).all
end
