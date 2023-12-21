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
class State < ApplicationRecord
  validates :name, presence: true, uniqueness: {case_sensitive: false}
  belongs_to :user

  has_many :terminals
end
