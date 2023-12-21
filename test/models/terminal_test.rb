# == Schema Information
#
# Table name: terminals
#
#  id         :bigint           not null, primary key
#  address    :string
#  name       :string
#  phone      :string
#  state      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  state_id   :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_terminals_on_state_id  (state_id)
#  index_terminals_on_user_id   (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (state_id => states.id)
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class TerminalTest < ActiveSupport::TestCase
  
  def setup
    @user = users(:tolase)
    @state = states(:oyo)
    @terminal = @user.terminals.build(name: 'Astral-Eleweeran', address: 'Eleweeran, Abeokuta, Ogun State', phone: '08107768469', state: @state)
  end

  test 'terminal must be valid' do
    assert @terminal.valid?
  end

  test 'user id should be present' do
    @terminal.user = nil
    assert_not @terminal.valid?
  end

  test 'name must be present' do
    @terminal.name = nil
    assert_not @terminal.valid?
  end

  test 'address must be present' do
    @terminal.address = nil
    assert_not @terminal.valid?
  end

  test 'phone must be present' do
    @terminal.phone = nil
    assert_not @terminal.valid?
  end
end
