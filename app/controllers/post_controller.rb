class PostController < ApplicationController
    def index
        @data = Post.all
    end

end
