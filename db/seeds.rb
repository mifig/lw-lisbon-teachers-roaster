puts "Cleaning campus database..."
School.destroy_all

puts "Cleaning users database..."
User.destroy_all

puts "Creating schools..."
lisbon = School.create(city: "Lisbon", country: "Portugal", address: "Rua do Conde de Redondo 91B, 1150-103 Lisboa")
puts "#{lisbon.city} school created!"


puts "Creating users..."
user1 = User.create(email: "miguelpfigueiredo@gmail.com", password: "lw2022lisbon")
user2 = User.create(email: "pedro.agostinho@lewagon.org", password: "lw2022lisbon")
puts "Users created!"

puts "Creating association of users and schools..."
UserSchool.create(user_id: user1.id, school_id: lisbon.id)
UserSchool.create(user_id: user2.id, school_id: lisbon.id)

puts "Do you want to recreate the bootcamps_weeks table? [y/n]"
puts "(you will lose all the information regarding teachers experience and need to reupdate the roaster)"
answer = gets.chomp

if ["y", "yes"].include?(answer.downcase)
    
  puts "Cleaning bootcamps_weeks database..."
  BootcampsWeek.destroy_all

  puts "Creating WEB bootcamps_weeks..."
  BootcampsWeek.create(week: 1, course_slug: "web", lecture_day_slug: "00-Setup")
  BootcampsWeek.create(week: 1, course_slug: "web", lecture_day_slug: "01-Ruby/01-Programming-basics")
  BootcampsWeek.create(week: 1, course_slug: "web", lecture_day_slug: "01-Ruby/02-Flow-Array")
  BootcampsWeek.create(week: 1, course_slug: "web", lecture_day_slug: "01-Ruby/03-Iterators-Blocks")
  BootcampsWeek.create(week: 1, course_slug: "web", lecture_day_slug: "01-Ruby/04-Hash-Symbols")
  BootcampsWeek.create(week: 2, course_slug: "web", lecture_day_slug: "01-Ruby/05-Regular-Expressions")
  BootcampsWeek.create(week: 2, course_slug: "web", lecture_day_slug: "01-Ruby/06-Parsing")
  BootcampsWeek.create(week: 2, course_slug: "web", lecture_day_slug: "02-OOP/01-OO-Basics")
  BootcampsWeek.create(week: 2, course_slug: "web", lecture_day_slug: "02-OOP/02-OO-Advanced")
  BootcampsWeek.create(week: 2, course_slug: "web", lecture_day_slug: "02-OOP/03-Cookbook-Day-One")
  BootcampsWeek.create(week: 3, course_slug: "web", lecture_day_slug: "02-OOP/04-Cookbook-Day-Two")
  BootcampsWeek.create(week: 3, course_slug: "web", lecture_day_slug: "02-OOP/05-Food-Delivery-Day-One")
  BootcampsWeek.create(week: 3, course_slug: "web", lecture_day_slug: "02-OOP/06-Food-Delivery-Day-Two")
  BootcampsWeek.create(week: 3, course_slug: "web", lecture_day_slug: "03-AR-Database/01-DB-Design-and-SQL")
  BootcampsWeek.create(week: 3, course_slug: "web", lecture_day_slug: "03-AR-Database/02-SQL-CRUD")
  BootcampsWeek.create(week: 4, course_slug: "web", lecture_day_slug: "03-AR-Database/03-ActiveRecord-Basics")
  BootcampsWeek.create(week: 4, course_slug: "web", lecture_day_slug: "03-AR-Database/04-ActiveRecord-Advanced")
  BootcampsWeek.create(week: 4, course_slug: "web", lecture_day_slug: "04-Front-End/01-HTML-and-CSS")
  BootcampsWeek.create(week: 4, course_slug: "web", lecture_day_slug: "04-Front-End/02-CSS-components")
  BootcampsWeek.create(week: 4, course_slug: "web", lecture_day_slug: "04-Front-End/03-Bootstrap")
  BootcampsWeek.create(week: 5, course_slug: "web", lecture_day_slug: "04-Front-End/04-JavaScript-basics")
  BootcampsWeek.create(week: 5, course_slug: "web", lecture_day_slug: "04-Front-End/05-DOM-and-Events")
  BootcampsWeek.create(week: 5, course_slug: "web", lecture_day_slug: "04-Front-End/06-HTTP-and-AJAX")
  BootcampsWeek.create(week: 5, course_slug: "web", lecture_day_slug: "04-Front-End/07-JavaScript-Plugins")
  BootcampsWeek.create(week: 5, course_slug: "web", lecture_day_slug: "04-Front-End/08-Product-Design-Sprint")
  BootcampsWeek.create(week: 6, course_slug: "web", lecture_day_slug: "05-Rails/01-Rails-intro")
  BootcampsWeek.create(week: 6, course_slug: "web", lecture_day_slug: "05-Rails/02-Rails-CRUD")
  BootcampsWeek.create(week: 6, course_slug: "web", lecture_day_slug: "05-Rails/03-Rails-restaurant-reviews")
  BootcampsWeek.create(week: 6, course_slug: "web", lecture_day_slug: "05-Rails/04-Rails-mister-cocktail")
  BootcampsWeek.create(week: 6, course_slug: "web", lecture_day_slug: "05-Rails/05-Rails-MC-with-images")
  BootcampsWeek.create(week: 7, course_slug: "web", lecture_day_slug: "05-Rails/06-Airbnb-Devise")
  BootcampsWeek.create(week: 7, course_slug: "web", lecture_day_slug: "05-Rails/07-Airbnb-Facebook-connect")
  BootcampsWeek.create(week: 7, course_slug: "web", lecture_day_slug: "05-Rails/08-Airbnb-Geocoder")
  BootcampsWeek.create(week: 7, course_slug: "web", lecture_day_slug: "05-Rails/09-Airbnb-SMTP")
  BootcampsWeek.create(week: 7, course_slug: "web", lecture_day_slug: "05-Rails/10-Airbnb-Ajax-in-Rails")
  BootcampsWeek.create(week: 8, course_slug: "web", lecture_day_slug: "06-Projects/01-Pundit")
  BootcampsWeek.create(week: 8, course_slug: "web", lecture_day_slug: "06-Projects/02-i18n")
  BootcampsWeek.create(week: 8, course_slug: "web", lecture_day_slug: "06-Projects/03-Advanced-Admin")
  BootcampsWeek.create(week: 8, course_slug: "web", lecture_day_slug: "06-Projects/04-Background-jobs")
  BootcampsWeek.create(week: 8, course_slug: "web", lecture_day_slug: "06-Projects/05-Build-an-API")
  BootcampsWeek.create(week: 9, course_slug: "web", lecture_day_slug: "06-Projects/06-Payment-with-Stripe")
  BootcampsWeek.create(week: 9, course_slug: "web", lecture_day_slug: "06-Projects/07-Search")
  BootcampsWeek.create(week: 9, course_slug: "web", lecture_day_slug: "06-Projects/08-Testing")
  BootcampsWeek.create(week: 9, course_slug: "web", lecture_day_slug: "06-Projects/09-Dress-Rehearsal-React")
  BootcampsWeek.create(week: 9, course_slug: "web", lecture_day_slug: "06-Projects/10-Demo-Day")

  puts "WEB bootcamps_weeks created!"

  puts "Creating DATA bootcamps_weeks..."
  BootcampsWeek.create(week: 1, course_slug: "data", lecture_day_slug: "00-Setup")
  BootcampsWeek.create(week: 1, course_slug: "data", lecture_day_slug: "01-Python/01-Programming-Basics")
  BootcampsWeek.create(week: 1, course_slug: "data", lecture_day_slug: "01-Python/02-Data-Sourcing")
  BootcampsWeek.create(week: 1, course_slug: "data", lecture_day_slug: "01-Python/03-SQL-Basics")
  BootcampsWeek.create(week: 1, course_slug: "data", lecture_day_slug: "01-Python/04-SQL-Advanced")
  BootcampsWeek.create(week: 2, course_slug: "data", lecture_day_slug: "02-Data-Toolkit/01-Data-Analysis")
  BootcampsWeek.create(week: 2, course_slug: "data", lecture_day_slug: "02-Data-Toolkit/02-Data-Sourcing")
  BootcampsWeek.create(week: 2, course_slug: "data", lecture_day_slug: "02-Data-Toolkit/03-Data-Visualization")
  BootcampsWeek.create(week: 2, course_slug: "data", lecture_day_slug: "03-Maths/01-Algebra-Calculus")
  BootcampsWeek.create(week: 2, course_slug: "data", lecture_day_slug: "03-Maths/02-Statistics-Probabilities")
  BootcampsWeek.create(week: 3, course_slug: "data", lecture_day_slug: "04-Decision-Science/01-Project-Setup")
  BootcampsWeek.create(week: 3, course_slug: "data", lecture_day_slug: "04-Decision-Science/02-Statistical-Inference")
  BootcampsWeek.create(week: 3, course_slug: "data", lecture_day_slug: "04-Decision-Science/03-Linear-Regression")
  BootcampsWeek.create(week: 3, course_slug: "data", lecture_day_slug: "04-Decision-Science/04-Logistic-Regression")
  BootcampsWeek.create(week: 3, course_slug: "data", lecture_day_slug: "04-Decision-Science/05-Communicate")
  BootcampsWeek.create(week: 4, course_slug: "data", lecture_day_slug: "05-ML/01-Fundamentals-of-Machine-Learning")
  BootcampsWeek.create(week: 4, course_slug: "data", lecture_day_slug: "05-ML/02-Prepare-the-dataset")
  BootcampsWeek.create(week: 4, course_slug: "data", lecture_day_slug: "05-ML/03-Performance-metrics")
  BootcampsWeek.create(week: 4, course_slug: "data", lecture_day_slug: "05-ML/04-Under-the-hood")
  BootcampsWeek.create(week: 4, course_slug: "data", lecture_day_slug: "05-ML/05-Model-Tuning")
  BootcampsWeek.create(week: 5, course_slug: "data", lecture_day_slug: "05-ML/08-Workflow")
  BootcampsWeek.create(week: 5, course_slug: "data", lecture_day_slug: "05-ML/07-Ensemble-Methods")
  BootcampsWeek.create(week: 5, course_slug: "data", lecture_day_slug: "05-ML/06-Unsupervised-Learning")
  BootcampsWeek.create(week: 5, course_slug: "data", lecture_day_slug: "05-ML/09-Time-Series")
  BootcampsWeek.create(week: 5, course_slug: "data", lecture_day_slug: "05-ML/10-Natural-Language-Processing")
  BootcampsWeek.create(week: 6, course_slug: "data", lecture_day_slug: "06-Deep-Learning/01-Fundamentals-of-Deep-Learning")
  BootcampsWeek.create(week: 6, course_slug: "data", lecture_day_slug: "06-Deep-Learning/02-Optimizer-loss-and-fitting")
  BootcampsWeek.create(week: 6, course_slug: "data", lecture_day_slug: "06-Deep-Learning/03-Convolutional-Neural-Networks")
  BootcampsWeek.create(week: 6, course_slug: "data", lecture_day_slug: "06-Deep-Learning/04-Recurrent-Neural-Networks")
  BootcampsWeek.create(week: 6, course_slug: "data", lecture_day_slug: "06-Deep-Learning/05-Natural-Language-Processing")
  BootcampsWeek.create(week: 7, course_slug: "data", lecture_day_slug: "07-ML-Ops/01-Train-at-scale")
  BootcampsWeek.create(week: 7, course_slug: "data", lecture_day_slug: "07-ML-Ops/02-Cloud-training")
  BootcampsWeek.create(week: 7, course_slug: "data", lecture_day_slug: "07-ML-Ops/03-Automate-model-lifecycle")
  BootcampsWeek.create(week: 7, course_slug: "data", lecture_day_slug: "07-ML-Ops/04-Predict-in-production")
  BootcampsWeek.create(week: 7, course_slug: "data", lecture_day_slug: "07-ML-Ops/05-User-interface")
  BootcampsWeek.create(week: 8, course_slug: "data", lecture_day_slug: "08-Projects/01")
  BootcampsWeek.create(week: 8, course_slug: "data", lecture_day_slug: "08-Projects/02")
  BootcampsWeek.create(week: 8, course_slug: "data", lecture_day_slug: "08-Projects/03")
  BootcampsWeek.create(week: 8, course_slug: "data", lecture_day_slug: "08-Projects/04")
  BootcampsWeek.create(week: 8, course_slug: "data", lecture_day_slug: "08-Projects/05")
  BootcampsWeek.create(week: 9, course_slug: "data", lecture_day_slug: "08-Projects/06")
  BootcampsWeek.create(week: 9, course_slug: "data", lecture_day_slug: "08-Projects/07")
  BootcampsWeek.create(week: 9, course_slug: "data", lecture_day_slug: "08-Projects/08")
  BootcampsWeek.create(week: 9, course_slug: "data", lecture_day_slug: "08-Projects/09")
  BootcampsWeek.create(week: 9, course_slug: "data", lecture_day_slug: "08-Projects/10-Demo-Day")

  puts "WEB bootcamps_weeks created!"
end

puts "Do you want to delete the teachers table? [y/n]"
puts "(you will lose all the teachers info that is not on the seeds. Update seeds with all teachers github_nickname's if you want to run db:seed and not lose information)"
answer = gets.chomp

if ["y", "yes"].include?(answer.downcase)
  puts "Cleaning teachers database..."
  puts "Creating baseline teachers table..."
  Teacher.destroy_all

  puts "Creating WEB teachers..."
  Teacher.create(github_nickname: "jbernardoviana", school_id: lisbon.id)
  Teacher.create(github_nickname: "apires89", school_id: lisbon.id)
  Teacher.create(github_nickname: "joaosanches1990", school_id: lisbon.id)
  Teacher.create(github_nickname: "syrashid", school_id: lisbon.id)
  Teacher.create(github_nickname: "rikas", school_id: lisbon.id)
  Teacher.create(github_nickname: "Gittelo", school_id: lisbon.id)
  Teacher.create(github_nickname: "nmajor", school_id: lisbon.id)
  Teacher.create(github_nickname: "rahulkeerthi", school_id: lisbon.id)
  Teacher.create(github_nickname: "carlosmendes", school_id: lisbon.id)
  Teacher.create(github_nickname: "rodrigoruas", school_id: lisbon.id)
  Teacher.create(github_nickname: "gabrielecanepa", school_id: lisbon.id)
  Teacher.create(github_nickname: "margaridatoureiro", school_id: lisbon.id)
  Teacher.create(github_nickname: "patricknpinto", school_id: lisbon.id)
  Teacher.create(github_nickname: "todd-sn", school_id: lisbon.id)
  Teacher.create(github_nickname: "dmcarmo", school_id: lisbon.id)
  Teacher.create(github_nickname: "franciscoovazevedo", school_id: lisbon.id)
  Teacher.create(github_nickname: "barbaraperic", school_id: lisbon.id)
  Teacher.create(github_nickname: "monicanabais", school_id: lisbon.id)
  Teacher.create(github_nickname: "arieivs", school_id: lisbon.id)
  Teacher.create(github_nickname: "zoe-gld", school_id: lisbon.id)
  Teacher.create(github_nickname: "AlexdrFontes", school_id: lisbon.id)
  Teacher.create(github_nickname: "sians", school_id: lisbon.id)
  Teacher.create(github_nickname: "RitaLaia", school_id: lisbon.id)
  Teacher.create(github_nickname: "ruivitorbaltazar", school_id: lisbon.id)
  Teacher.create(github_nickname: "alexterenda", school_id: lisbon.id)
  Teacher.create(github_nickname: "susannapezzini", school_id: lisbon.id)
  Teacher.create(github_nickname: "beatriznbarroso", school_id: lisbon.id)
  Teacher.create(github_nickname: "henrialb", school_id: lisbon.id)
  Teacher.create(github_nickname: "tpinto", school_id: lisbon.id)
  Teacher.create(github_nickname: "G-Souza-99", school_id: lisbon.id)
  Teacher.create(github_nickname: "mifig", school_id: lisbon.id)
  Teacher.create(github_nickname: "ZenKetse", school_id: lisbon.id)
  Teacher.create(github_nickname: "Ajguerra28", school_id: lisbon.id)
  Teacher.create(github_nickname: "louro-ines", school_id: lisbon.id)
  Teacher.create(github_nickname: "RyanDunsmuir", school_id: lisbon.id)
  Teacher.create(github_nickname: "volivers", school_id: lisbon.id)
  Teacher.create(github_nickname: "miguellutz", school_id: lisbon.id)
  Teacher.create(github_nickname: "gmrcp", school_id: lisbon.id)
  Teacher.create(github_nickname: "josh-merrill", school_id: lisbon.id)
  Teacher.create(github_nickname: "padilhaalucas", school_id: lisbon.id)
  Teacher.create(github_nickname: "anansilva", school_id: lisbon.id)
  Teacher.create(github_nickname: "AhmadMajid", school_id: lisbon.id)
  Teacher.create(github_nickname: "ricardosilva-rss", school_id: lisbon.id)
  Teacher.create(github_nickname: "raimundo-henriques", school_id: lisbon.id)
  Teacher.create(github_nickname: "gforgione", school_id: lisbon.id)
  Teacher.create(github_nickname: "joaquimvluis", school_id: lisbon.id)
  Teacher.create(github_nickname: "bakiewicz", school_id: lisbon.id)
  Teacher.create(github_nickname: "JoaoMartinsG", school_id: lisbon.id)

  puts "Creating DATA teachers..."
  Teacher.create(github_nickname: "mattrousseau", school_id: lisbon.id)
  Teacher.create(github_nickname: "vmoura56", school_id: lisbon.id)
  Teacher.create(github_nickname: "Michiel-DK", school_id: lisbon.id)
  Teacher.create(github_nickname: "qiweihan", school_id: lisbon.id)
  Teacher.create(github_nickname: "JoaoCalem", school_id: lisbon.id)
  Teacher.create(github_nickname: "alexisgourdol", school_id: lisbon.id)
  Teacher.create(github_nickname: "MargaridaMCampos", school_id: lisbon.id)
  Teacher.create(github_nickname: "EKULG", school_id: lisbon.id)
  Teacher.create(github_nickname: "Valentin-Laurent", school_id: lisbon.id)
  Teacher.create(github_nickname: "jdlourenco", school_id: lisbon.id)
  Teacher.create(github_nickname: "OlivierPaulo", school_id: lisbon.id)
  Teacher.create(github_nickname: "EduardoHidalgoGarcia", school_id: lisbon.id)
  Teacher.create(github_nickname: "thierry-silbermann", school_id: lisbon.id)
  Teacher.create(github_nickname: "emanuelfrazao", school_id: lisbon.id)
  Teacher.create(github_nickname: "archifreitas", school_id: lisbon.id)
  Teacher.create(github_nickname: "McNickSisto", school_id: lisbon.id)
  Teacher.create(github_nickname: "slbenfica1079", school_id: lisbon.id)
  Teacher.create(github_nickname: "gmatos51", school_id: lisbon.id)
  Teacher.create(github_nickname: "IolandaVelho", school_id: lisbon.id)
  Teacher.create(github_nickname: "joao-sr", school_id: lisbon.id)
  Teacher.create(github_nickname: "Phlasse", school_id: lisbon.id)
  Teacher.create(github_nickname: "tiagoyuhang", school_id: lisbon.id)
  Teacher.create(github_nickname: "kepler", school_id: lisbon.id)
  Teacher.create(github_nickname: "mlyngholm", school_id: lisbon.id)
  Teacher.create(github_nickname: "black-dalia", school_id: lisbon.id)
  Teacher.create(github_nickname: "isabel-fonseca", school_id: lisbon.id)
  Teacher.create(github_nickname: "ninadamaso", school_id: lisbon.id)
  Teacher.create(github_nickname: "MalouO", school_id: lisbon.id)
  Teacher.create(github_nickname: "AmElmo", school_id: lisbon.id)
  Teacher.create(github_nickname: "Tolugu", school_id: lisbon.id)
  Teacher.create(github_nickname: "SLShimizu", school_id: lisbon.id)
  Teacher.create(github_nickname: "IStege", school_id: lisbon.id)
  Teacher.create(github_nickname: "irlnicolas", school_id: lisbon.id)
  Teacher.create(github_nickname: "hugofborges", school_id: lisbon.id)
  Teacher.create(github_nickname: "sjoerdreyer", school_id: lisbon.id)
  Teacher.create(github_nickname: "Tara-Sophia", school_id: lisbon.id)

  puts "Teachers created!"
end
