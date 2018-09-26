require 'rails_helper'

RSpec.describe 'Products API', type: :request do
  let!(:products) { create_list(:product, 10) }
  let(:product_id) { products.first.id }

  describe 'GET /api/products' do
    before { get '/api/products' }

    it 'returns products' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  #
  # # Test suite for DELETE api/product/:id
  # describe 'DELETE /api/products/:id' do
  #   before { delete "/api/products/#{product_id}" }
  #
  #   it 'returns status code 204' do
  #     expect(response).to have_http_status(204)
  #   end
  # end
end