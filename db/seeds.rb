puts "Cleaning users database..."
User.destroy_all

puts "Creating users..."
user1 = User.create(email: "miguelpfigueiredo@gmail.com", password: "lw2022lisbon")
user2 = User.create(email: "pedro.agostinho@lewagon.org", password: "lw2022lisbon")

puts "Users created!"

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


puts "Do you want to delete the teachers table? [y/n]"
puts "(you will lose all the teachers info that is not on the seeds. Update seeds with all teachers first_name, last_name & github_nickname if you want to run db:seed and not lose information)"
answer = gets.chomp

if ["y", "yes"].include?(answer.downcase)
  puts "Cleaning teachers database..."
  puts "Creating baseline teachers table..."
  Teacher.destroy_all

  puts "Creating WEB teachers..."
  Teacher.create(first_name: "João", last_name: "Viana", github_nickname: "jbernardoviana")
  Teacher.create(first_name: "André", last_name: "Pires", github_nickname: "apires89")
  Teacher.create(first_name: "João", last_name: "Sanches", github_nickname: "joaosanches1990")
  Teacher.create(first_name: "Sy", last_name: "Rashid", github_nickname: "syrashid")
  Teacher.create(first_name: "Ricardo", last_name: "Otero", github_nickname: "rikas")
  Teacher.create(first_name: "Diogo", last_name: "Telo", github_nickname: "Gittelo")
  Teacher.create(first_name: "Nicholas", last_name: "Major", github_nickname: "nmajor")
  Teacher.create(first_name: "Rahul", last_name: "Keerthi", github_nickname: "rahulkeerthi")
  Teacher.create(first_name: "Carlos", last_name: "Mendes", github_nickname: "carlosmendes")
  Teacher.create(first_name: "Rodrigo", last_name: "Ruas", github_nickname: "rodrigoruas")
  Teacher.create(first_name: "Gabriele", last_name: "Canepa", github_nickname: "gabrielecanepa")
  Teacher.create(first_name: "Margarida", last_name: "Toureiro", github_nickname: "margaridatoureiro")
  Teacher.create(first_name: "Patrick", last_name: "Pinto", github_nickname: "patricknpinto")
  Teacher.create(first_name: "Todd", last_name: "Neale", github_nickname: "todd-sn")
  Teacher.create(first_name: "David", last_name: "Carmo", github_nickname: "dmcarmo")
  Teacher.create(first_name: "Francisco", last_name: "Azevedo", github_nickname: "franciscoovazevedo")
  Teacher.create(first_name: "Barbara", last_name: "Peric", github_nickname: "barbaraperic")
  Teacher.create(first_name: "Mónica", last_name: "Nabais", github_nickname: "monicanabais")
  Teacher.create(first_name: "Sara", last_name: "Vieira", github_nickname: "arieivs")
  Teacher.create(first_name: "Zoe", last_name: "Goldschmidt", github_nickname: "zoe-gld")
  Teacher.create(first_name: "Alexandre", last_name: "Fontes", github_nickname: "AlexdrFontes")
  Teacher.create(first_name: "Sian", last_name: "Stone", github_nickname: "sians")
  Teacher.create(first_name: "Rita", last_name: "Laia", github_nickname: "RitaLaia")
  Teacher.create(first_name: "Rui", last_name: "Baltazar", github_nickname: "ruivitorbaltazar")
  Teacher.create(first_name: "Alex", last_name: "Terenda", github_nickname: "alexterenda")
  Teacher.create(first_name: "Susanna", last_name: "Pezzini", github_nickname: "susannapezzini")
  Teacher.create(first_name: "Beatriz", last_name: "Barroso", github_nickname: "beatriznbarroso")
  Teacher.create(first_name: "Henrique", last_name: "Albuquerque", github_nickname: "henrialb")
  Teacher.create(first_name: "Tiago", last_name: "Pinto", github_nickname: "tpinto")
  Teacher.create(first_name: "Gabriel", last_name: "Souza", github_nickname: "G-Souza-99")
  Teacher.create(first_name: "Miguel", last_name: "Figueiredo", github_nickname: "mifig")
  Teacher.create(first_name: "Afonso", last_name: "Miguel", github_nickname: "ZenKetse")
  Teacher.create(first_name: "António", last_name: "Guerra", github_nickname: "Ajguerra28")
  Teacher.create(first_name: "Inês", last_name: "Louro", github_nickname: "louro-ines")
  Teacher.create(first_name: "Ryan", last_name: "Dunsmuir", github_nickname: "RyanDunsmuir")
  Teacher.create(first_name: "Vasco", last_name: "Oliveira", github_nickname: "volivers")
  Teacher.create(first_name: "Miguel", last_name: "Lutz", github_nickname: "miguellutz")
  Teacher.create(first_name: "Gonçalo", last_name: "Pinto", github_nickname: "gmrcp")
  Teacher.create(first_name: "Josh", last_name: "Merril", github_nickname: "josh-merrill")
  Teacher.create(first_name: "Lucas", last_name: "Padilha", github_nickname: "padilhaalucas")
  Teacher.create(first_name: "Ana", last_name: "Silva", github_nickname: "anansilva")
  Teacher.create(first_name: "Ahmad", last_name: "Majid", github_nickname: "AhmadMajid")
  Teacher.create(first_name: "Ricardo", last_name: "Silva", github_nickname: "ricardosilva-rss")
  Teacher.create(first_name: "Raimundo", last_name: "Henriques", github_nickname: "raimundo-henriques")
  Teacher.create(first_name: "Giuseppe", last_name: "Forgione", github_nickname: "gforgione")
  Teacher.create(first_name: "Joaquim", last_name: "Luís", github_nickname: "joaquimvluis")
  Teacher.create(first_name: "André", last_name: "Bakiewicz", github_nickname: "bakiewicz")
  Teacher.create(first_name: "João", last_name: "Martins", github_nickname: "JoaoMartinsG")

  puts "Creating DATA teachers..."
  Teacher.create(first_name: "Matthieu", last_name: "Rousseau", github_nickname: "mattrousseau")
  Teacher.create(first_name: "Vinicius", last_name: "Moura", github_nickname: "vmoura56")
  Teacher.create(first_name: "Michiel", last_name: "de Koninck", github_nickname: "Michiel-DK")
  Teacher.create(first_name: "Qiwei", last_name: "Han", github_nickname: "qiweihan")
  Teacher.create(first_name: "João", last_name: "Calem", github_nickname: "JoaoCalem")
  Teacher.create(first_name: "Alexis", last_name: "Gourdol", github_nickname: "alexisgourdol")
  Teacher.create(first_name: "Margarida", last_name: "Campos", github_nickname: "MargaridaMCampos")
  Teacher.create(first_name: "Luke", last_name: "Gandolfi", github_nickname: "EKULG")
  Teacher.create(first_name: "Valentin", last_name: "Laurent", github_nickname: "Valentin-Laurent")
  Teacher.create(first_name: "Jose", last_name: "Lourenco", github_nickname: "jdlourenco")
  Teacher.create(first_name: "Olivier", last_name: "Paulo", github_nickname: "OlivierPaulo")
  Teacher.create(first_name: "Eduardo", last_name: "Hidalgo García", github_nickname: "EduardoHidalgoGarcia")
  Teacher.create(first_name: "Thierry", last_name: "Silbermann", github_nickname: "thierry-silbermann")
  Teacher.create(first_name: "Emanuel", last_name: "Frazão", github_nickname: "emanuelfrazao")
  Teacher.create(first_name: "José", last_name: "Freitas", github_nickname: "archifreitas")
  Teacher.create(first_name: "Nicholas", last_name: "Sistovaris", github_nickname: "McNickSisto")
  Teacher.create(first_name: "Sudarshan", last_name: "Gopaladesikan", github_nickname: "slbenfica1079")
  Teacher.create(first_name: "Gonçalo", last_name: "Matos", github_nickname: "gmatos51")
  Teacher.create(first_name: "Iolanda", last_name: "Velho", github_nickname: "IolandaVelho")
  Teacher.create(first_name: "João", last_name: "Robarts", github_nickname: "joao-sr")
  Teacher.create(first_name: "Phillip", last_name: "Zastrow", github_nickname: "Phlasse")
  Teacher.create(first_name: "Tiago", last_name: "Freire", github_nickname: "tiagoyuhang")
  Teacher.create(first_name: "Fabio", last_name: "Kepler", github_nickname: "kepler")
  Teacher.create(first_name: "Marie", last_name: "Lyngholm", github_nickname: "mlyngholm")
  Teacher.create(first_name: "Desiree", last_name: "Petrilli", github_nickname: "black-dalia")
  Teacher.create(first_name: "Isabel", last_name: "Fontes", github_nickname: "isabel-fonseca")
  Teacher.create(first_name: "Nina", last_name: "Dâmaso", github_nickname: "ninadamaso")
  Teacher.create(first_name: "Malou", last_name: "Oberhansberg", github_nickname: "MalouO")
  Teacher.create(first_name: "Julien", last_name: "Berthomier", github_nickname: "AmElmo")
  Teacher.create(first_name: "Marc", last_name: "Enrico Pocsay", github_nickname: "Tolugu")
  Teacher.create(first_name: "Sarah", last_name: "Shimizu", github_nickname: "SLShimizu")
  Teacher.create(first_name: "Immy", last_name: "Stege", github_nickname: "IStege")
  Teacher.create(first_name: "Nicolas", last_name: "Santos", github_nickname: "irlnicolas")
  Teacher.create(first_name: "Hugo", last_name: "Fernandes Borges", github_nickname: "hugofborges")
  Teacher.create(first_name: "Sjoerd", last_name: "de Wit", github_nickname: "sjoerdreyer")
  Teacher.create(first_name: "Tara", last_name: "Tumbragel", github_nickname: "Tara-Sophia")

  puts "Teachers created!"
end
