class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: {funcionario: 1, administrador: 0, atendente: 2}
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :funcionario if self.role.nil?
  end

  def role_humanize
    self.role.humanize
  end
end
