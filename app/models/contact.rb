class Contact < ActiveRecord::Base

  validates(
  :name,
  :email,
  :user_id,
  presence: true
  )

  validates(
  :user_id,
  uniqueness: {:scope => :email}
  )

  has_many(
  :contact_shares,
  :class_name => "ContactShare",
  :foreign_key => :contact_id,
  :primary_key => :id
  )

  belongs_to(
    :owner,
    :class_name => "User",
    :foreign_key => :user_id,
    :primary_key => :id
  )

  has_many :shared_users, through: :contact_shares, source: :user



end