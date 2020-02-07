class Message < ApplicationRecord
  belongs_to :group
  belongs_to :user
  validates :content,presence: true,unless: :image? #前半はcontentカラムが空の場合保存しない、unlessはifの逆なのでimageカラムが空だったらという意味。

  mount_uploader :image, ImageUploader
end