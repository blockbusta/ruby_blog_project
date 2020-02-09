class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, 
       :rememberable, :validatable

  enum roles: [:user, :admin]

  def self.role_by_id id
    roles.key(id).humanize
  end

  def self.roles_for_select
    # puts roles.keys.map{ |x| [x.humanize, x] }
    roles.values.map{ |x| [roles.key(x).humanize, x] }
  end

  protected
  def confirmation_required?
    false
  end
end