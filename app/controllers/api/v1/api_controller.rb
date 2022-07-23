module Api
  module V1
    class ApiController < ApplicationController
      def user_posts
        user_id = params[:user_id]
        posts = Post.where(user_id: user_id)
        render json: { status: 'SUCCESS', message: 'Loaded Posts', data: posts }, status: :ok
      end

      def user_comments
        post_id = params[:post_id]
        comments = Comment.where(post_id: post_id)
        render json: { status: 'SUCCESS', message: 'Loaded user comments', data: comments }, status: :ok
      end

      def add_comment_to_post
        post_id = params[:post_id]
        comment_text = params[:text]
        comment = Comment.new(post_id: post_id, user_id: current_user_id, text: comment_text)
        if comment.save
          render json: { status: 'SUCCESS', message: 'Comment saved', data: comment }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Comment not saved', data: comment.errors },
                 status: :unprocessable_entity
        end
      end
    end
  end
end
