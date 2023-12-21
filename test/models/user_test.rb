# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  address                :string           not null
#  admin                  :boolean          default(FALSE)
#  date_of_birth          :date             not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string           not null
#  next_of_kin            :string           not null
#  next_of_kin_phone      :string           not null
#  phone                  :string           not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  surname                :string           not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
require "test_helper"

class UserTest < ActiveSupport::TestCase
  
  def setup
    @user = User.create(first_name: 'John', surname: 'Doe', email: 'john@doe.com', phone: '00221345', address: 'my house', date_of_birth: Date.parse('1995-12-10'), password: '123456', password_confirmation: '123456', next_of_kin: 'Jane Doe', next_of_kin_phone: '00339293893')
  end

  test 'user must be valid' do
    assert @user.valid?
  end

  test 'surname must be present' do
    @user.surname = nil
    assert_not @user.valid?
  end

  test 'first_name must be present' do
    @user.first_name = nil
    assert_not @user.valid?
  end

  test 'address must be present' do
    @user.address = nil
    assert_not @user.valid?
  end

  test 'date_of_birth must be present' do
    @user.date_of_birth = nil
    assert_not @user.valid?
  end

  test 'next_of_kin must be present' do
    @user.next_of_kin = nil
    assert_not @user.valid?
  end

  test 'next_of_kin_phone must be present' do
    @user.next_of_kin_phone = nil
    assert_not @user.valid?
  end

  test 'phone must be present' do
    @user.phone = nil
    assert_not @user.valid?
  end
  
end
