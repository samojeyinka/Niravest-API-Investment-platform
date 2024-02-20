class User < ApplicationRecord
    has_many :packages, dependent: :destroy
    validates :username, presence:{ case_sensitive: false }, length:{minimum: 2, maximum:30}
    validates :email, presence:{ case_sensitive: false }
end
