# == Schema Information
#
# Table name: buses
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_buses_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class BusTest < ActiveSupport::TestCase
  
  def setup
    @user = users(:tolase)
    @bus = @user.buses.build(name: 'Ugama Hiace')
  end

  test 'must be valid' do
    assert @bus.valid?
  end

  test 'user must be present' do
    @bus.user = nil
    assert_not @bus.valid?
  end

  test 'name must be present' do
    @bus.name = nil
    assert_not @bus.valid?
  end
end
