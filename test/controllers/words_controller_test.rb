require 'rspec'
include RSpec

class WordsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
end

RSpec.describe WordsController do
  describe 'uppercase' do
    it 'converts a word to uppercase' do
      get :uppercase, :word => 'tester'

    end
  end

end
