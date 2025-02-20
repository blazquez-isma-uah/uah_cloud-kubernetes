USE fbm_peliculas;

-- peliculas
INSERT INTO `peliculas` (`idPelicula`,`titulo`,`anio`,`duracion`,`pais`,`direccion`,`genero`,`sinopsis`,`imagen_portada`) VALUES (4,'El senor de los anillos: La comunidad del anillo',2001,180,'Nueva Zelanda','Peter Jackson','Aventuras','En la Tierra Media, el Señor Oscuro Sauron ordenó a los Elfos que forjaran los Grandes Anillos de Poder. Tres para los reyes Elfos, siete para los Señores Enanos, y nueve para los Hombres Mortales. Pero Saurón también forjó, en secreto, el Anillo Único, que tiene el poder de esclavizar toda la Tierra Media. Con la ayuda de sus amigos y de valientes aliados, el joven hobbit Frodo emprende un peligroso viaje con la misión de destruir el Anillo Único. Pero el malvado Sauron ordena la persecución del grupo, compuesto por Frodo y sus leales amigos hobbits, un mago, un hombre, un elfo y un enano. La misión es casi suicida pero necesaria, pues si Sauron con su ejército de orcos lograra recuperar el Anillo, sería el final de la Tierra Media.','the_lord_of_the_rings_the_fellowship_of_the_ring-952398002-large.jpg');
INSERT INTO `peliculas` (`idPelicula`,`titulo`,`anio`,`duracion`,`pais`,`direccion`,`genero`,`sinopsis`,`imagen_portada`) VALUES (5,'El senor de los anillos: Las dos torres',2002,179,'Nueva Zelanda','Peter Jackson','Aventuras','Tras la disolución de la Compañía del Anillo, Frodo y su fiel amigo Sam se dirigen hacia Mordor para destruir el Anillo Único y acabar con el poder de Sauron, pero les sigue un siniestro personaje llamado Gollum. Mientras, y tras la dura batalla contra los orcos donde cayó Boromir, el hombre Aragorn, el elfo Legolas y el enano Gimli intentan rescatar a los medianos Merry y Pipin, secuestrados por los orcos de Mordor. Por su parte, Saurón y el traidor Sarumán continúan con sus planes en Mordor, a la espera de la guerra contra las razas libres de la Tierra Media.','the_lord_of_the_rings_the_two_towers-450612576-large.jpg');
INSERT INTO `peliculas` (`idPelicula`,`titulo`,`anio`,`duracion`,`pais`,`direccion`,`genero`,`sinopsis`,`imagen_portada`) VALUES (6,'El senor de los anillos: El retorno del rey',2003,201,'Nueva Zelanda','Peter Jackson','Aventuras','Las fuerzas de Saruman han sido destruidas, y su fortaleza sitiada. Ha llegado el momento de decidir el destino de la Tierra Media, y, por primera vez, parece que hay una pequeña esperanza. El interés del señor oscuro Sauron se centra ahora en Gondor, el último reducto de los hombres, cuyo trono será reclamado por Aragorn. Sauron se dispone a lanzar un ataque decisivo contra Gondor. Mientras tanto, Frodo y Sam continuan su camino hacia Mordor, con la esperanza de llegar al Monte del Destino.','the_lord_of_the_rings_the_return_of_the_king-178294596-large.jpg');
INSERT INTO `peliculas` (`idPelicula`,`titulo`,`anio`,`duracion`,`pais`,`direccion`,`genero`,`sinopsis`,`imagen_portada`) VALUES (14,'El Hobbit: Un viaje inesperado',2012,170,'Nueva Zelanda','Peter Jackson','Aventuras','Precuela de la trilogía \"El Señor de los Anillos\", obra de J.R.R. Tolkien. En compañía del mago Gandalf y de trece enanos, el hobbit Bilbo Bolsón emprende un viaje a través del país de los elfos y los bosques de los trolls, desde las mazmorras de los orcos hasta la Montaña Solitaria, donde el dragón Smaug esconde el tesoro de los Enanos. Finalmente, en las profundidades de la Tierra, encuentra el Anillo Único, hipnótico objeto que será posteriormente causa de tantas sangrientas batallas en la Tierra Media.','the_hobbit_an_unexpected_journey-249234415-large.jpg');
-- actores
INSERT INTO `actores` (`idActor`,`nombre`,`fecha_nacimiento`,`pais_nacimiento`) VALUES (19,'Elijah Wood','1981-01-28','EEUU');
INSERT INTO `actores` (`idActor`,`nombre`,`fecha_nacimiento`,`pais_nacimiento`) VALUES (20,'Ian McKellen','1939-05-25','Reino Unido');
INSERT INTO `actores` (`idActor`,`nombre`,`fecha_nacimiento`,`pais_nacimiento`) VALUES (21,'Viggo Mortensen','1958-10-20','EEUU');
INSERT INTO `actores` (`idActor`,`nombre`,`fecha_nacimiento`,`pais_nacimiento`) VALUES (22,'Sean Astin','1971-02-25','EEUU');
INSERT INTO `actores` (`idActor`,`nombre`,`fecha_nacimiento`,`pais_nacimiento`) VALUES (23,'Orlando Bloom','1977-01-13','Reino Unido');
INSERT INTO `actores` (`idActor`,`nombre`,`fecha_nacimiento`,`pais_nacimiento`) VALUES (26,'Sean Bean','1959-04-17','Reino Unido');
INSERT INTO `actores` (`idActor`,`nombre`,`fecha_nacimiento`,`pais_nacimiento`) VALUES (27,'Martin Freeman','1971-09-08','Reino Unido');
INSERT INTO `actores` (`idActor`,`nombre`,`fecha_nacimiento`,`pais_nacimiento`) VALUES (28,'Richard Armitage','1971-08-22','Reino Unido');
INSERT INTO `actores` (`idActor`,`nombre`,`fecha_nacimiento`,`pais_nacimiento`) VALUES (29,'Ken Stott','1954-10-19','Reino Unido');
INSERT INTO `actores` (`idActor`,`nombre`,`fecha_nacimiento`,`pais_nacimiento`) VALUES (30,'John Rhys-Davies','1944-05-05','Reino Unido');
INSERT INTO `actores` (`idActor`,`nombre`,`fecha_nacimiento`,`pais_nacimiento`) VALUES (31,'Christopher Lee','1922-05-27','Reino Unido');
-- peliculas_actores
INSERT INTO `peliculas_actores` (`idPelicula`,`idActor`) VALUES (4,19);
INSERT INTO `peliculas_actores` (`idPelicula`,`idActor`) VALUES (5,19);
INSERT INTO `peliculas_actores` (`idPelicula`,`idActor`) VALUES (6,19);
INSERT INTO `peliculas_actores` (`idPelicula`,`idActor`) VALUES (4,20);
INSERT INTO `peliculas_actores` (`idPelicula`,`idActor`) VALUES (5,20);
INSERT INTO `peliculas_actores` (`idPelicula`,`idActor`) VALUES (6,20);
INSERT INTO `peliculas_actores` (`idPelicula`,`idActor`) VALUES (14,20);
INSERT INTO `peliculas_actores` (`idPelicula`,`idActor`) VALUES (4,21);
INSERT INTO `peliculas_actores` (`idPelicula`,`idActor`) VALUES (5,21);
INSERT INTO `peliculas_actores` (`idPelicula`,`idActor`) VALUES (6,21);
INSERT INTO `peliculas_actores` (`idPelicula`,`idActor`) VALUES (4,22);
INSERT INTO `peliculas_actores` (`idPelicula`,`idActor`) VALUES (5,22);
INSERT INTO `peliculas_actores` (`idPelicula`,`idActor`) VALUES (6,22);
INSERT INTO `peliculas_actores` (`idPelicula`,`idActor`) VALUES (4,23);
INSERT INTO `peliculas_actores` (`idPelicula`,`idActor`) VALUES (5,23);
INSERT INTO `peliculas_actores` (`idPelicula`,`idActor`) VALUES (6,23);
INSERT INTO `peliculas_actores` (`idPelicula`,`idActor`) VALUES (4,26);
INSERT INTO `peliculas_actores` (`idPelicula`,`idActor`) VALUES (14,27);
INSERT INTO `peliculas_actores` (`idPelicula`,`idActor`) VALUES (14,28);
INSERT INTO `peliculas_actores` (`idPelicula`,`idActor`) VALUES (14,29);
INSERT INTO `peliculas_actores` (`idPelicula`,`idActor`) VALUES (4,30);
INSERT INTO `peliculas_actores` (`idPelicula`,`idActor`) VALUES (5,30);
INSERT INTO `peliculas_actores` (`idPelicula`,`idActor`) VALUES (6,30);