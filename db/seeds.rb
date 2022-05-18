puts "🌱 Seeding spices..."

puts "Deleting old data..."

Appointment.destroy_all
Lesson.destroy_all
User.destroy_all

puts "Creating lessons..."
lesson1 = Lesson.create!(
    duration: 60,
    start_date: "May 16, 2022",
    start_time: "8:00 am",
  )
  lesson2 = Lesson.create!(
    duration: 60,
    start_date: "May 16, 2022",
    start_time: "9:00 am",
  )
  lesson3 = Lesson.create!(
    duration: 60,
    start_date: "May 16, 2022",
    start_time: "10:00 am",
  )
  lesson4 = Lesson.create!(
    duration: 60,
    start_date: "May 16, 2022",
    start_time: "11:00 am",
  )
  lesson5 = Lesson.create!(
    duration: 60,
    start_date: "May 17, 2022",
    start_time: "8:00 am",
  )
  lesson6 = Lesson.create!(
    duration: 60,
    start_date: "May 17, 2022",
    start_time: "9:00 am",
  )
  lesson7 = Lesson.create!(
    duration: 60,
    start_date: "May 17, 2022",
    start_time: "10:00 am",
  )
  lesson8 = Lesson.create!(
    duration: 60,
    start_date: "May 17, 2022",
    start_time: "11:00 am",
  )
  lesson9 = Lesson.create!(
    duration: 60,
    start_date: "May 18, 2022",
    start_time: "08:00 am",
  )
  lesson10 = Lesson.create!(
    duration: 60,
    start_date: "May 18, 2022",
    start_time: "9:00 am",
  )
  lesson11 = Lesson.create!(
    duration: 60,
    start_date: "May 18, 2022",
    start_time: "10:00 am",
  )
  lesson12 = Lesson.create!(
    duration: 60,
    start_date: "May 18, 2022",
    start_time: "11:00 am",
  )
  lesson13 = Lesson.create!(
    duration: 60,
    start_date: "May 19, 2022",
    start_time: "8:00 am",
  )
  lesson14 = Lesson.create!(
    duration: 60,
    start_date: "May 19, 2022",
    start_time: "9:00 am",
  )
  lesson15 = Lesson.create!(
    duration: 60,
    start_date: "May 19, 2022",
    start_time: "10:00 am",
  )
  lesson16 = Lesson.create!(
    duration: 60,
    start_date: "May 19, 2022",
    start_time: "11:00 am",
  )
  lesson17 = Lesson.create!(
    duration: 60,
    start_date: "May 20, 2022",
    start_time: "8:00 am",
  )
  lesson18 = Lesson.create!(
    duration: 60,
    start_date: "May 20, 2022",
    start_time: "9:00 am",
  )
  lesson19 = Lesson.create!(
    duration: 60,
    start_date: "May 20, 2022",
    start_time: "10:00 am",
  )
  lesson20 = Lesson.create!(
    duration: 60,
    start_date: "May 20, 2022",
    start_time: "11:00 am",
  )
  puts "Creating users..."
 user1 = User.create!(
      fullname: "John Smith",
      email: "johnsmith@gmail.com",
      password: "password"
  )
  puts "Creating appointments..."

Appointment.create!(
    user_id: user1.id,
    lesson_id: lesson1.id,
    songname: "Beethoven: Moonlight Sonata",
    date: "May 16, 2022",
    time: "8:00 am",
  )
  puts "✅ Done seeding!"