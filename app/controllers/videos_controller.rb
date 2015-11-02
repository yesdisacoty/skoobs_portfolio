class VideosController < ApplicationController
    before_filter :find_params, only: [:create, :update, :show, :delete]
    
    def index
       @videos = Video.all 
    end
    
    def create
        @video = Video.new(video_params)
    end
    
    def update
    end
    
    def delete
        @post.destroy
        
        redirect_to posts_path
    end
    
    def new
    end
    
    def show 
    end
        
    def edit
        if @video.update(params[:video].permit(:title, :description))
            redirect_to @video
        else
            render 'edit'
        end
    end
    
    def find_params
        @video = Video.find(params[:id])
    end
    
    private
    def video_params
       params.require(:video).permit(:title, :description) 
    end
    
    
end
