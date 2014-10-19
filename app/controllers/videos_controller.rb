class VideosController < ApplicationController
  def index
    @video = Video.all
    @recent_video = Video.order('created_at DESC').limit(5)
  end

  def show
    @video = Video.find(params[:id])
    @recent_video = Video.order('created_at DESC').limit(5)
  end

  def new
    @video = Video.new
  end

  def create
   @video = Video.new(video_params)
   if @video.save
     redirect_to videos_path
   else
     render new_video_path
   end
  end

  def video_params
    params.require(:video).permit(
      :name,
      :desc,
      :filepicker_url
    )
  end
end
