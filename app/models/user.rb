class User < ApplicationRecord
  # Direct associations

  has_many   :ratings,
             :dependent => :destroy

  has_many   :friends,
             :foreign_key => "sender_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
