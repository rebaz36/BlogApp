require 'rails_helper'

describe UsersController do
  let(:users) { create_list(:user, 3) }

  describe 'GET #index' do
    before do
      get :index
    end

    it 'assigns all users to @users' do
      expect(assigns(:users)).to match_array(users)
    end

    it 'renders the index template' do
      expect(response).to render_template(:index)
    end
  end

  describe 'GET #show' do
    let(:user) { users.first }

    before do
      get :show, params: { id: user.id }
    end

    it 'assigns the requested user to @user' do
      expect(assigns(:user)).to eq(user)
    end

    it 'renders the show template' do
      expect(response).to render_template(:show)
    end
  end
end
