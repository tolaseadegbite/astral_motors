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
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :surname, :date_of_birth, :address, :next_of_kin, :next_of_kin_phone, :phone, presence: true

end
