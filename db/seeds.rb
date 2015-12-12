# PREPOPULATED USERS
	# usernames = ["ramzi", "steph", "daniel", "tatiana"]
	# emails    = ["ramzi@example.com", "steph@example.com", "daniel@example.com", "tatiana@example.com"]
	# passwords = ["12341234", "12341234", "12341234", "12341234"]
	# photos    = ["https://www.facebook.com/photo.php?fbid=10151910108509594&set=a.433035449593.232096.846409593&type=3&theater", "https://www.facebook.com/photo.php?fbid=10153117393937143&set=a.423629222142.203950.515862142&type=3&theater", "https://www.facebook.com/photo.php?fbid=2017781203290&set=a.1608665055642.2085586.1206670987&type=3&theater", "https://www.facebook.com/photo.php?fbid=10152725866931876&set=a.426742316875.224126.691296875&type=3&theater"]
	# ages      = ["25", "25", "27", "26"]
	# genders   = ["Male", "Female", "Male", "Female"]

	# i=0
	# while i<usernames.length
	# 	user = User.create
	# 	user.username = usernames[i]
	# 	user.email    = emails[i]
	# 	user.password = passwords[i]
	# 	user.photo    = photos[i]
	# 	user.age      = ages[i]
	# 	user.gender   = genders[i]
	# 	user.save
	# 	i = i+1
	# end

	# users = User.all
	# puts "There are now #{User.count} users in the database."

# -----------------------------------------

# PREPOPUlATED DATE OPTIONS
	titles = ["Drinks at a bar", "Dinner in nice restaurant", "Cook at home and wine", "Netflix and chill", "Run together", "Rock climbing", "Walk somewhere nice", "Go clubbing", "Have coffee and chat", "Road trip to a nice location"]
	
	j=0
	while j<titles.length
		option = Option.create
		option.title = titles[j]
		option.save
		j = j+1
	end

	options = Option.all
	puts "There are now #{Option.count} options in the database."