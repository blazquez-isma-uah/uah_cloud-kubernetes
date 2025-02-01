INSERT INTO `fbm_usuarios`.`authorities` (`idRol`,`authority`) VALUES (1,'ROLE_ADMIN');
INSERT INTO `fbm_usuarios`.`authorities` (`idRol`,`authority`) VALUES (2,'ROLE_USER');
INSERT INTO `fbm_usuarios`.`users` (`idUsuario`,`username`,`password`,`correo`,`enable`) VALUES (1,'admin','$2a$10$ui2GtONthkWsyeEcakTYC.uo4cohC0l1uzanJK0CeWJBhaM7CaVqG','admin@gmail.com',1);
INSERT INTO `fbm_usuarios`.`users_has_authorities` (`idUsuario`, `idRol`) VALUES (1, 1);
