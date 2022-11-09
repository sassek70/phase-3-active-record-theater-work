Audition.destroy_all
Role.destroy_all

r1 = Role.create(character_name: "Aubrey Plaza")
r2 = Role.create(character_name: "Chris Pratt")
r3 = Role.create(character_name: "Rashida Jones")

a1 = Audition.create(actor: "Andy Dwire", location: "Pawnee, Indiana", phone: 3334445555, hired: false, role_id: r3.id)
a2 = Audition.create(actor: "April Ludgate", location: "Pawnee, Indiana", phone: 6667779999, hired: true)
a3 = Audition.create(actor: "Ann Perkins", location: "Pawnee, Indiana", phone: 1112223333, hired: true, role_id: r2.id)
