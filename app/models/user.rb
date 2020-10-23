class User < ApplicationRecord
    has_secure_password
    has_many :recipes
    has_many :favorites
    has_many :comments

    mount_uploader :avatar, AvatarUploader
end
