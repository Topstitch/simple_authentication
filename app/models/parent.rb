class Parent < ActiveRecord::Base
  belongs_to :teacher

  validates :email, uniqueness: true, presence: true
  validates :name, :child, :teacher_id, presence: true
end
