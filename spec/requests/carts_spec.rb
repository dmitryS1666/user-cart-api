# spec/requests/carts_spec.rb
require 'rails_helper'

RSpec.describe 'Carts API', type: :request do
  # https://scotch.io/tutorials/build-a-restful-json-api-with-rails-5-part-one#toc-models
  # # initialize test data
  # let!(:carts) { create_list(:cart, 10) }
  # let(:cart_id) { carts.first.id }
  #
  # # Test suite for GET /carts
  # describe 'GET api/cart' do
  #   # make HTTP get request before each example
  #   before { get 'api/cart' }
  #
  #   it 'returns carts' do
  #     # Note `json` is a custom helper to parse JSON responses
  #     expect(json).not_to be_empty
  #     expect(json.size).to eq(10)
  #   end
  #
  #   it 'returns status code 200' do
  #     expect(response).to have_http_status(200)
  #   end
  # end
  #
  # # Test suite for GET api/cart/:id
  # describe 'GET api/cart/:id' do
  #   before { get "api/cart/#{cart_id}" }
  #
  #   context 'when the record exists' do
  #     it 'returns the cart' do
  #       expect(json).not_to be_empty
  #       expect(json['id']).to eq(cart_id)
  #     end
  #
  #     it 'returns status code 200' do
  #       expect(response).to have_http_status(200)
  #     end
  #   end
  #
  #   context 'when the record does not exist' do
  #     let(:cart_id) { 100 }
  #
  #     it 'returns status code 404' do
  #       expect(response).to have_http_status(404)
  #     end
  #
  #     it 'returns a not found message' do
  #       expect(response.body).to match(/Couldn't find cart/)
  #     end
  #   end
  # end
  #
  # # Test suite for POST api/cart
  # describe 'POST api/cart' do
  #   # valid payload
  #   let(:valid_attributes) { { title: 'Learn Elm', created_by: '1' } }
  #
  #   context 'when the request is valid' do
  #     before { post 'api/cart', params: valid_attributes }
  #
  #     it 'creates a cart' do
  #       expect(json['title']).to eq('Learn Elm')
  #     end
  #
  #     it 'returns status code 201' do
  #       expect(response).to have_http_status(201)
  #     end
  #   end
  #
  #   context 'when the request is invalid' do
  #     before { post 'api/cart', params: { title: 'Foobar' } }
  #
  #     it 'returns status code 422' do
  #       expect(response).to have_http_status(422)
  #     end
  #
  #     it 'returns a validation failure message' do
  #       expect(response.body)
  #           .to match(/Validation failed: Created by can't be blank/)
  #     end
  #   end
  # end
  #
  # # Test suite for PUT api/cart/:id
  # describe 'PUT api/cart/:id' do
  #   let(:valid_attributes) { { title: 'Shopping' } }
  #
  #   context 'when the record exists' do
  #     before { put "api/cart/#{cart_id}", params: valid_attributes }
  #
  #     it 'updates the record' do
  #       expect(response.body).to be_empty
  #     end
  #
  #     it 'returns status code 204' do
  #       expect(response).to have_http_status(204)
  #     end
  #   end
  # end
  #
  # # Test suite for DELETE api/cart/:id
  # describe 'DELETE api/cart/:id' do
  #   before { delete "api/cart/#{cart_id}" }
  #
  #   it 'returns status code 204' do
  #     expect(response).to have_http_status(204)
  #   end
  # end
end