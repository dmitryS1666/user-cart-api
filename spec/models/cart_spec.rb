require 'rails_helper'

RSpec.describe Cart, type: :model do
  it { should validate_presence_of :total_sum }
  it { should validate_presence_of :products_count }
end
