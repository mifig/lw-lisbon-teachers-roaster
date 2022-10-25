puts "Cleaning users database..."
User.destroy_all

puts "Creating users..."
user1 = User.create(email: "miguelpfigueiredo@gmail.com", password: "lw2022lisbon")
user2 = User.create(email: "pedro.agostinho@lewagon.org", password: "lw2022lisbon")

puts "Users created!"

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
  BootcampsWeek.create(week: 3, course_slug: "web", lecture_day_slug: "02-OOP/03-Cookbook-Day-Two")
  BootcampsWeek.create(week: 3, course_slug: "web", lecture_day_slug: "02-OOP/05-Food-Delivery-Day-One")
  BootcampsWeek.create(week: 3, course_slug: "web", lecture_day_slug: "02-OOP/05-Food-Delivery-Day-Two")
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

  # puts "Creating DATA bootcamps_weeks..."
  # BootcampsWeek.create(week: 1, course_slug: "data", lecture_day_slug: "")
  # puts "DATA bootcamps_weeks created!"
end

puts "Do you want to delete the teachers table? [y/n]"
puts "(you will lose all the teachers info that is not on the seeds. Update seeds with all teachers github_nickname's if you want to run db:seed and not lose information)"
answer = gets.chomp

if ["y", "yes"].include?(answer.downcase)
  puts "Cleaning teachers database..."
  puts "Creating baseline teachers table..."
  Teacher.destroy_all

  puts "Creating WEB teachers..."
  Teacher.create(github_nickname: "jbernardoviana")
  Teacher.create(github_nickname: "apires89")
  Teacher.create(github_nickname: "joaosanches1990")
  Teacher.create(github_nickname: "syrashid")
  Teacher.create(github_nickname: "rikas")
  Teacher.create(github_nickname: "Gittelo")
  Teacher.create(github_nickname: "nmajor")
  Teacher.create(github_nickname: "rahulkeerthi")
  Teacher.create(github_nickname: "carlosmendes")
  Teacher.create(github_nickname: "rodrigoruas")
  Teacher.create(github_nickname: "gabrielecanepa")
  Teacher.create(github_nickname: "margaridatoureiro")
  Teacher.create(github_nickname: "patricknpinto")
  Teacher.create(github_nickname: "todd-sn")
  Teacher.create(github_nickname: "dmcarmo")
  Teacher.create(github_nickname: "franciscoovazevedo")
  Teacher.create(github_nickname: "barbaraperic")
  Teacher.create(github_nickname: "monicanabais")
  Teacher.create(github_nickname: "arieivs")
  Teacher.create(github_nickname: "zoe-gld")
  Teacher.create(github_nickname: "AlexdrFontes")
  Teacher.create(github_nickname: "sians")
  Teacher.create(github_nickname: "RitaLaia")
  Teacher.create(github_nickname: "ruivitorbaltazar")
  Teacher.create(github_nickname: "alexterenda")
  Teacher.create(github_nickname: "susannapezzini")
  Teacher.create(github_nickname: "beatriznbarroso")
  Teacher.create(github_nickname: "henrialb")
  Teacher.create(github_nickname: "tpinto")
  Teacher.create(github_nickname: "G-Souza-99")
  Teacher.create(github_nickname: "mifig")
  Teacher.create(github_nickname: "ZenKetse")
  Teacher.create(github_nickname: "Ajguerra28")
  Teacher.create(github_nickname: "louro-ines")
  Teacher.create(github_nickname: "RyanDunsmuir")
  Teacher.create(github_nickname: "volivers")
  Teacher.create(github_nickname: "miguellutz")
  Teacher.create(github_nickname: "gmrcp")
  Teacher.create(github_nickname: "josh-merrill")
  Teacher.create(github_nickname: "padilhaalucas")
  Teacher.create(github_nickname: "anansilva")
  Teacher.create(github_nickname: "AhmadMajid")
  Teacher.create(github_nickname: "ricardosilva-rss")
  Teacher.create(github_nickname: "raimundo-henriques")
  Teacher.create(github_nickname: "gforgione")
  Teacher.create(github_nickname: "joaquimvluis")
  Teacher.create(github_nickname: "bakiewicz")
  Teacher.create(github_nickname: "JoaoMartinsG")

  puts "Creating DATA teachers..."
  Teacher.create(github_nickname: "mattrousseau")
  Teacher.create(github_nickname: "vmoura56")
  Teacher.create(github_nickname: "Michiel-DK")
  Teacher.create(github_nickname: "qiweihan")
  Teacher.create(github_nickname: "JoaoCalem")
  Teacher.create(github_nickname: "alexisgourdol")
  Teacher.create(github_nickname: "MargaridaMCampos")
  Teacher.create(github_nickname: "EKULG")
  Teacher.create(github_nickname: "Valentin-Laurent")
  Teacher.create(github_nickname: "jdlourenco")
  Teacher.create(github_nickname: "OlivierPaulo")
  Teacher.create(github_nickname: "EduardoHidalgoGarcia")
  Teacher.create(github_nickname: "thierry-silbermann")
  Teacher.create(github_nickname: "emanuelfrazao")
  Teacher.create(github_nickname: "archifreitas")
  Teacher.create(github_nickname: "McNickSisto")
  Teacher.create(github_nickname: "slbenfica1079")
  Teacher.create(github_nickname: "gmatos51")
  Teacher.create(github_nickname: "IolandaVelho")
  Teacher.create(github_nickname: "joao-sr")
  Teacher.create(github_nickname: "Phlasse")
  Teacher.create(github_nickname: "tiagoyuhang")
  Teacher.create(github_nickname: "kepler")
  Teacher.create(github_nickname: "mlyngholm")
  Teacher.create(github_nickname: "black-dalia")
  Teacher.create(github_nickname: "isabel-fonseca")
  Teacher.create(github_nickname: "ninadamaso")
  Teacher.create(github_nickname: "MalouO")
  Teacher.create(github_nickname: "AmElmo")
  Teacher.create(github_nickname: "Tolugu")
  Teacher.create(github_nickname: "SLShimizu")
  Teacher.create(github_nickname: "IStege")
  Teacher.create(github_nickname: "irlnicolas")
  Teacher.create(github_nickname: "hugofborges")
  Teacher.create(github_nickname: "sjoerdreyer")
  Teacher.create(github_nickname: "Tara-Sophia")

  puts "Teachers created!"
end
