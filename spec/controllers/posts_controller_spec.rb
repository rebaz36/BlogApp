require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  let(:valid_attributes) { { title: 'New post', body: 'This is the body of the post' } }
  let(:invalid_attributes) { { title: nil, body: nil } }

  describe "GET #index" do
    it "assigns all posts as @posts" do
      post1 = Post.create! valid_attributes
      post2 = Post.create! valid_attributes
      get :index
      expect(assigns(:posts)).to eq([post1, post2])
    end
  end

  describe "GET #show" do
    it "assigns the requested post as @post" do
      post = Post.create! valid_attributes
      get :show, params: { id: post.to_param }
      expect(assigns(:post)).to eq(post)
    end
  end
end
