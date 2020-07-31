class User < ApplicationRecord

    has_many :user_events
    has_many :events, through: :user_events
    has_many :todos

    validates :name, uniqueness: { case_sensitive: false }

    has_secure_password

end
