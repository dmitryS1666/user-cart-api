require 'rails_helper'

RSpec.describe 'Carts API', type: :request do
  let!(:product) { create(:product) }
  let!(:cart) { create(:cart) }

  describe 'GET /api/cart' do
    before { get '/api/cart' }

    it 'returns cart with products' do
      expect(json).not_to be_empty
      expect(json.size).to eq(6)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # describe 'POST /api/cart' do
  ##  don't use
  #   let(:valid_attributes) { { product_id: product.id, quantity: 7 } }
  #
  #   context 'when the request is valid' do
  #     before { post '/api/cart', params: valid_attributes }
  #
  #     it 'add product to cart' do
  #       expect((json['products']).count).to eq 1
  #     end
  #
  #     it 'returns status code 201' do
  #       expect(response).to have_http_status(201)
  #     end
  #   end
  # end

  # describe 'DELETE /todos/:id' do
  ##  don't use
  #   let(:valid_attributes) { { product_id: product.id } }
  #   before { post '/api/cart', params: valid_attributes }
  #
  #   it 'returns status code 204' do
  #     expect(response).to have_http_status(204)
  #   end
  # end

  context 'when the request is invalid' do
    let(:valid_attributes) { { product_id: 170, quantity: 7 } }
    before { post '/api/cart', params: valid_attributes }

    it 'returns status code 404' do
      expect(response).to have_http_status(404)
    end

    it 'returns a validation failure message' do
      expect(response.body).to match(/Couldn't find Product with 'id'=170/)
    end
  end
end