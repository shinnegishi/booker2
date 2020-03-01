class PostImagesController < ApplicationController

def index
    @post_images = PostImage.all
end

def show
    @post_image = PostImage.find(params[:id])
end


def new
    @post_image = PostImage.new
end


<%= form_for(@post_image, url:post_images_path) do |f| %>
<% if @post_images.error.any? ?>
	   <div id="error_explain">
	   <h2><%= @post_image.error.count%>件のエラーが発生しました</h2>
	   <ul>
	   <% @post_image.errors.full_messages.each do |message| %>
	   <li><%= message %></li>
	   <% end %>
	   </ul>
	   </div>



# 投稿データの保存
def create
    @post_image = PostImage.new(post_image_params)
    @post_image.user_id = current_user.id
    @post_image.save
    redirect_to post_images_path
end

# 投稿データのストロングパラメータ
private
    def post_image_params
        params.require(:post_image).permit(:shop_name, :image, :caption)
    end


end
