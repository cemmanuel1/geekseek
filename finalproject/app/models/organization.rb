class Organization < ActiveRecord::Base
  attr_accessible :cause_ids
  belongs_to :user
  has_and_belongs_to_many :causes
  has_many :projects
  accepts_nested_attributes_for :causes

  mount_uploader :avatar, AvatarUploader
end
