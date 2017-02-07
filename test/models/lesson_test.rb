require 'test_helper'

class LessonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "should not save lesson without title" do
    lesson = Lesson.new(status:'In Progress')
    assert_not lesson.save
  end
end
