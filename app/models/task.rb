# == Schema Information
#
# Table name: tasks
#
#  id          :bigint           not null, primary key
#  deadline    :datetime
#  description :text             not null
#  name        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  board_id    :bigint           not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_tasks_on_board_id  (board_id)
#  index_tasks_on_user_id   (user_id)
#
class Task < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true

  belongs_to :user
  belongs_to :board
end
