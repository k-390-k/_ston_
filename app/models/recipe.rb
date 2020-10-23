class Recipe < ApplicationRecord
    belongs_to :user
    has_many :favorites
    mount_uploader :picture, PictureUploader

    def favorited_by?(user)
        favorites.where(user_id: user.id).exists?
    end
end
