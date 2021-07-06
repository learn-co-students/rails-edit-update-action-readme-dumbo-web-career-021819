# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
  # cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
  # Mayor.create(name: 'Emanuel', city: cities.first)
article1 = Article.create([title: 'Blog P1',description: 'Description1'])
article2 = Article.create([title: 'Blog P2',description: 'Description2'])
