# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

a1=Author.create!(name: 'Author1')
a2=Author.create!(name: 'Author2')

c1=Course.create!(name: 'Course 1',author_id:a1.id)
c2=Course.create!(name: 'Course 2',author_id:a1.id)
c3=Course.create!(name: 'Course 3',author_id:a2.id)

(0..10).each{ |i|

  Lesson.create!(title:"Lesson #{i} title",author_id:a1.id,course_id:c1.id,status:'Published')
  Lesson.create!(title:"Lesson #{i} title",author_id:a1.id,course_id:c2.id,status:'Draft')
  Lesson.create!(title:"Lesson #{i} title",author_id:a2.id,course_id:c3.id,status:'In Review')
}
