class Volunteer < ActiveRecord::Base
  # attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :userable_type, :userable_id
  has_many :skills
  has_many :projects
  belongs_to :user

  def full_name
    "#{first_name} #{last_name}"
  end
end
