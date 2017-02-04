# == Schema Information
#
# Table name: lessons
#
#  id         :integer          not null, primary key
#  title      :string
#  author_id  :integer
#  course_id  :integer
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Lesson < ApplicationRecord
  belongs_to :author
  belongs_to :lesson
end
