class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable

  attr_accessor :avatar

  mount_uploader :avatar, AvatarUploader

  has_many :active_relationships, class_name: 'Relationship', foreign_key: 'interest_id', dependent: :destroy
  has_many :passive_relationships, class_name: 'Relationship', foreign_key: 'interested_id', dependent: :destroy


  has_many :interesteds, through: :active_relationships, source: :interested
  has_many :interestlist, through: :passive_relationships, source: :interest

  has_and_belongs_to_many :interests, dependent: :destroy

  has_many :messages
  has_many :conversations, foreign_key: :sender_id
  has_many :rconversations, foreign_key: :recipient_id, class_name: 'Conversation'


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable


end
