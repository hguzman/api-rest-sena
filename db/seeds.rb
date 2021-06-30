usuario = User.create(
  email: "hmguzman1@misena.edu.co",
  nombre: "Sonia",
  password: "43215"
)

usuario.comments.create(titulo: "Hola mundo", descripcion: "Esta es la")
usuario.comments.create(titulo: "Hola mundo1", descripcion: "Esta es la1")
usuario.comments.create(titulo: "Hola mundo2", descripcion: "Esta es la2")
