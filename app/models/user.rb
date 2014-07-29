class User < ActiveRecord::Base
  validates(
    :username,
    presence: true,
    uniqueness: true
  )

  has_many(
    :contacts,
    :class_name => "Contact",
    :foreign_key => :user_id,
    :primary_key => :id
  )

  has_many(
    :contact_shares,
    :through => :contacts,
    :source => :contact_shares
  )

   has_many(
    :shared_contacts,
    :class_name => 'ContactShare',
    :foreign_key => :user_id,
    :primary_key => :id
  )


end
