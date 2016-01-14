# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


c1 = Course.create(name: 'Game Development - Phase 1')
ro1 = Roadmap.create(course_id: c1.id, name: 'Version 1' )
co1 = Concept.create(roadmap_id: ro1.id, title: 'First', content: 'Test')
ex1 = Exercise.create(concept_id: co1.id, url: 'http://jsbin.com')

