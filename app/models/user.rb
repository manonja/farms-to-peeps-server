class User < ApplicationRecord
    has_one :farmer
    has_one :customer 

    has_secure_password
end
