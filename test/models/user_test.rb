require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = User.new(first_name: 'john', last_name: 'smith', email: "test@test.com", password: 123456)
  end

  test 'valid user' do
    assert @user.valid?
  end

  test "User must have a first name" do
    @user.first_name = nil
    refute @user.valid?, 'user is valid without fist_name'
    assert_not_nil @user.errors[:first_name], 'no validation error for first_name not present'
  end



end
