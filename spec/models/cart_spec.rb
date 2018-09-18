require 'rails_helper'

RSpec.describe Cart, type: :model do
  # Validation tests
  # ensure columns total_sum, products_count, products are present before saving
  it { should validate_presence_of(:total_sum) }
  it { should validate_presence_of(:total_sum) }
  it { should validate_presence_of(:products) }
end
