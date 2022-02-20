class PostsController < ApplicationController


    def show
        @place = Place.find(params["id"])
    end

    def new
        @post = Post.new
        @post = Place.find(params["place_id"])
        @post.place_id = @place.id

    end

    def create
        @post = Post.new(params["post"])
        @post.save
        redirect_to "/places"
    end

end
