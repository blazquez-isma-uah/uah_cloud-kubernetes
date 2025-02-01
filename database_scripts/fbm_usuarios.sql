USE fbm_usuarios;

CREATE TABLE `authorities` (
  `idRol` int NOT NULL AUTO_INCREMENT,
  `authority` varchar(45) COLLATE utf8mb3_spanish_ci NOT NULL,
  PRIMARY KEY (`idRol`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

CREATE TABLE `users` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) COLLATE utf8mb3_spanish_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb3_spanish_ci NOT NULL,
  `correo` varchar(45) COLLATE utf8mb3_spanish_ci NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idUsuario`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `correo_UNIQUE` (`correo`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

CREATE TABLE `users_has_authorities` (
  `idUsuario` int NOT NULL,
  `idRol` int NOT NULL,
  PRIMARY KEY (`idUsuario`,`idRol`),
  KEY `fk_Users_has_Authorities_Authorities1_idx` (`idRol`),
  KEY `fk_Users_has_Authorities_Users1_idx` (`idUsuario`),
  CONSTRAINT `fk_Users_has_Authorities_Authorities1` FOREIGN KEY (`idRol`) REFERENCES `authorities` (`idRol`),
  CONSTRAINT `fk_Users_has_Authorities_Users1` FOREIGN KEY (`idUsuario`) REFERENCES `users` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;


CREATE TABLE `criticas` (
  `idCritica` int NOT NULL AUTO_INCREMENT,
  `idPelicula` int NOT NULL,
  `valoracion` text COLLATE utf8mb3_spanish_ci NOT NULL,
  `nota` int NOT NULL,
  `fecha` date NOT NULL,
  `idUsuario` int NOT NULL,
  PRIMARY KEY (`idCritica`,`idUsuario`),
  KEY `fk_Criticas_Usuarios_idx` (`idUsuario`),
  CONSTRAINT `fk_Criticas_Users` FOREIGN KEY (`idUsuario`) REFERENCES `users` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
