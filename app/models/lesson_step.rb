# == Schema Information
#
# Table name: lesson_steps
#
#  id          :integer          not null, primary key
#  lesson_id   :integer
#  text        :string
#  media_type  :string
#  file_path   :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class LessonStep < ApplicationRecord
  belongs_to :lesson
end
