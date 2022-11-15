# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first

CurrentMember.where!([
     { memberID: '1', name: 'Link', email: 'link@hyrule.com', isAdmin: true, isAlumni: true },
     { memberID: '2', name: 'Juan', email: 'juanchavez@tamu.edu', isAdmin: true, isAlumni: false },
     { memberID: '3', name: 'Juan', email: 'juanchavez13134@gmail.com', isAdmin: false, isAlumni: false }
]).first_or_create

Organization.create!([
     { organizationID: 1, name: 'Bolson Construction', email: 'recruit@bolsonconstruction.org' }
])

Speaker.create!([
     {
          speakerID: 1,
          speakerName: 'Bolson',
          speakerEmail: 'bolson@bolsonconstruction.org',
          dateSpoke: Date.parse('2022-10-19', '%Y-%m-%d'),
          organizationName: 'Bolson Construction',
          speakerWebsite: 'bolsonconstruction.org'
     }
])
