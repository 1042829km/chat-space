class Group < ApplicationRecord
  has_many :users, through: :group_user
  has_many :messages
  has_many :group_user

  validates :name, presence: true, uniqueness: true

  def show_last_message
    if (last_message = messages.last).present?
      last_message.text? ? last_message.text : '画像が投稿されています'
    else
      'まだメッセージはありません。'
    end
  end

end
