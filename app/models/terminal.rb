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
class Terminal < ApplicationRecord
  validates :name, :address, :phone, presence: true
  belongs_to :user
  belongs_to :state
end
