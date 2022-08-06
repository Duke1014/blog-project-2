class BlogsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    # GET
    def index
        @blogs = Blog.order(published_on: :desc).page params[:page]
    end

    def show

    end

    # POST 
    def create
        user = User.find_by(id: session[:user_id])
        blog = user.blogs.create!(blog_params)
        render json: blog, status: :created
    end

    # PATCH

    # DELETE

    private

    def blog_params
        params.permit(:id, :title, :content, :published_on)
    end

end
