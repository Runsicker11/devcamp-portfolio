User.create!(
  email: "test@test.com",
  password: "123456",
  password_confirmation: "123456",
  name: "Admin User",
  roles: 'site_admin'
  )
  puts "1 Admin User Created"
  
  User.create!(
  email: "test2@test.com",
  password: "123456",
  password_confirmation: "123456",
  name: "Regular User",
  )
  
    puts "1 Regular User Created"



3.times do  |topic|
  Topic.create!(
    title: "Topic #{topic}"
    )
end

puts "3 Topics created"


10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Lorem ipsum dolor sit amet more stuff in latin",
    topic_id: Topic.last.id
    )
end

puts "10 blog posts created"
5.times do |skill|
  Skill.create!(
    title: "Rails #{skill} ",
    percent_utilized: 15
    )
  end
  
  puts "5 skills created"
  
  8.times do |portfilio_item|
    Portfolio.create!(
      title: "Portfolio title: #{portfilio_item}" ,
      subtitle: "Ruby on Rails" ,
      body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur ",
      main_image: "http://via.placeholder.com/600x400" ,
      thumb_image: "http://via.placeholder.com/350x200",
      )
    end
    
     1.times do |portfilio_item|
    Portfolio.create!(
      title: "Portfolio title: #{portfilio_item}" ,
      subtitle: "Angular" ,
      body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur ",
      main_image: "http://via.placeholder.com/600x400" ,
      thumb_image: "http://via.placeholder.com/350x200",
      )
    end
    
  
  puts "9 portfolio items created"
  
  3.times do |technology|
    Portfolio.last.technologies.create!(
      name: "Technology #{technology}"
      )
  end
  
  puts "3 technologies created"