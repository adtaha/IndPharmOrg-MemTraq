# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first

CurrentMember.create!([
    {memberID: 1, name: "Link", email: "link@hyrule.com", isAdmin: false, isAlumni: false}
])

Organization.create!([
    {organizationID: 1, name: "Bolson Construction", email: "recruit@bolsonconstruction.org"}
])

Speaker.create!([
    {speakerID: 1, name: "Bolson", email: "bolson@bolsonconstruction.org"}
])
