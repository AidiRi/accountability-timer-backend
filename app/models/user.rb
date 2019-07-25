class User < ApplicationRecord
  has_many :work_sessions
  has_many :tasks, through: :work_sessions
end
