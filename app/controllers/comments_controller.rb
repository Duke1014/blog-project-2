class CommentsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    # GET
    
    # POST 
    def create
        user = User.find_by(id: session[:user_id])
        comment = user.comments.create!(comment_params)
        render json: user, status: :created
    end

    # PATCH

    # DELETE

    private

    def comment_params
        params.permit(:id, :content, :published_on)
    end

    def render_unprocessable_entity(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
