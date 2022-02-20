class PostsController < ApplicationController


    def show
        @place = Place.find(params["id"])
    end

    def new
        @post = Post.new
        @place = Place.find(params["place_id"])
    end

    def create
        @post = Post.new(params["post"])
        @post.save
        redirect_to "/places"
    end

end
