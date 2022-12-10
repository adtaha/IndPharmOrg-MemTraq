# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first

CurrentMember.create!([
     { memberID: '1', name: 'Adam Taha', email: 'azt28@tamu.edu', isAdmin: true, isAlumni: false }
     { memberID: '2', name: 'Juan', email: 'juanchavez@tamu.edu', isAdmin: true, isAlumni: false }
     { memberID: '3', name: 'Sara Rogers', email: 'sararogers@tamu.edu', isAdmin: true, isAlumni: false }
])