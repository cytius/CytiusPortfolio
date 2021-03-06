# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
include Placeholder

3.times do |topic|
    Topic.create!(
        title: "Topic #{topic}"
    )
end

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
    topic_id: rand(3)+1
    )
end
puts "10 blogs created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15,
    badge: Placeholder.image_generator(height: '300', width: '300')
    )
end
puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "RoR",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam congue ultrices lacus, nec rutrum nisl. Aenean tristique facilisis dui, eget malesuada libero accumsan non. Curabitur rutrum porta lacus, in commodo dui facilisis ac. Sed quam orci, consequat quis tristique nec, laoreet nec nisl. Vestibulum maximus, nisi ac viverra mollis, leo augue pellentesque mauris, ac iaculis est diam placerat enim. In tempor risus ut lectus aliquam consequat. Integer nec gravida est. Sed ac ipsum nunc. Sed augue velit, consequat sit amet nibh a, tempus scelerisque erat.",
    main_image: Placeholder.image_generator(height: '600', width: '200'),
    thumb_image: Placeholder.image_generator(height: '300', width: '150')
    )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Angular",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam congue ultrices lacus, nec rutrum nisl. Aenean tristique facilisis dui, eget malesuada libero accumsan non. Curabitur rutrum porta lacus, in commodo dui facilisis ac. Sed quam orci, consequat quis tristique nec, laoreet nec nisl. Vestibulum maximus, nisi ac viverra mollis, leo augue pellentesque mauris, ac iaculis est diam placerat enim. In tempor risus ut lectus aliquam consequat. Integer nec gravida est. Sed ac ipsum nunc. Sed augue velit, consequat sit amet nibh a, tempus scelerisque erat.",
    main_image: Placeholder.image_generator(height: '600', width: '200'),
    thumb_image: Placeholder.image_generator(height: '300', width: '150')
    )
end

puts "9 portfolio items created"

3.times do |technology|
    Portfolio.last.technologies.create!(
        name: "Technology #{technology}"
        )
end
puts "3 technologies created"