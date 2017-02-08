require 'test_helper'

class LessonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "should not save lesson without title" do
    lesson = Lesson.new(status:'In Progress')
    assert_not lesson.save
  end
  
  ["In Progress", "Released", "Awaiting Approval", "Rejected"].each do |str|
    test "should accept #{str} as status" do
      lesson = Lesson.new({title:'The title',status:str})
      assert lesson.save
    end
    test "should not accept lowercase #{str}" do
      lesson = Lesson.new(title:'The title',status:str.downcase)
      assert_not lesson.save
    end
  end
end
