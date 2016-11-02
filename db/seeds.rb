# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Role.destroy_all

Role.create!([{
		name: "admin"
	},
	{
		name: "user"
	},
	{
		name: "superadmin"
	}
	])
User.create!([{
		firstname: "admin",
		lastname: "admin",
		username: "admin",
		email: "admin@admin.com",
		password: "test1234",
		role: Role.find_by_name("superadmin")
	}])