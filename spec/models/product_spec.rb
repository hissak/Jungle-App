require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    context 'when all fields are provided' do
      it ' should have a name' do
        @category = Category.new(name: 'Bananas')
        @product = Product.new(name: price: 100, quantity: 1, category: @category)
        expect(@product.name).to be_present
      end
  end
end
end

