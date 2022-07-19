require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET #index' do
    before(:example) { get users_path }
    it 'is a sucess' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders index template' do
      expect(response).to render_template('index')
    end
  end

  describe 'GET #show' do
    before(:example) { get('/users/1') }
    # it 'Is a sucess' do
    #   expect(response).to have_http_status(:ok)
    # end

    # it 'renders show template' do
    #   expect(response).to render_template('users/show')
    # end
  end
end
