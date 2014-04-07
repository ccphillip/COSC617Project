# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Article.create(user_id: 1, content: "this a new article ")
 PrivacyLevel.create(level:1, description:"Everyone can view profile information.")
 PrivacyLevel.create(level:2, description:"Only followers can view profile information.")
 PrivacyLevel.create(level:3, description:"Profile information cannot be viewed by others.")