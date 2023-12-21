# == Schema Information
#
# Table name: states
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_states_on_name     (name) UNIQUE
#  index_states_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class StateTest < ActiveSupport::TestCase
  
  def setup
    @user = users(:tolase)
    @state = @user.states.build(name: 'Osun')
  end

  test 'state must be valid' do
    assert @state.valid?
  end

  test 'user must be present' do
    @state.user = nil
    assert_not @state.valid?
  end

  test 'name must be present' do
    @state.name = nil
    assert_not @state.valid?
  end

  test 'name must be unique' do
    @second_state = @state.dup
    @second_state.name = 'Osun'
    @second_state.save
    assert_not @state.valid?
  end
end
