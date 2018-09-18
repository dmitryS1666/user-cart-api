require 'rails_helper'

RSpec.describe Product, type: :model do
  # Validation tests
  # ensure columns name, description, price are present before saving
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:price) }
end
