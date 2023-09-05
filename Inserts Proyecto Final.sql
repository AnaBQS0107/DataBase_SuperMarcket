Use proyecto;
/* INSERT CATALOGO CLASIFICACION*/
INSERT INTO `proyecto`.`catalogo_clasificacion`
(`idClasificacion`,
`Clasificacion_Producto`,
`Producto_idProducto`)
VALUES
(0,"Abarrotes",0),
(1,"Abarrotes",1),
(2,"Abarrotes",2),
(3,"Jugos y bebidas",3),
(4,"Higiene",4),
(5,"Higiene",5),
(6,"Higiene",6),
(7,"Alimentos Congelados",7),
(8,"Alimentos Congelados",8);

/* INSERT CATALOGO CONDICION DE PAGO*/
INSERT INTO `proyecto`.`catalogo_condicion_de_pago`
(`idCatalogo_Condicion_De_Pago`,
`Descripcion_Catalogo_Condicion_De_Pago`,
`Activo`)
VALUES
(0,"Credito",1),(1,"Contado",1);

/* INSERT CATALOGO MOVIMIENTO*/
INSERT INTO `proyecto`.`catalogo_movimiento`
(`idCatalogo_Movimiento`,
`Descripcion_Catalogo_Movimiento`,
`Activo`)
VALUES
(0,"Venta de Productos ",1),
(1,"Descuento por promocion ",1),
(2,"Devolucion de Productos",1);


/*INSERT CATALOGO DISPONIBILIDAD*/
INSERT INTO `proyecto`.`catalogo_disponibilidad`
(`idCatalogo_Disponibilidad`,
`Activo`,
`Descripcion_Catalogo_Disponibilidad`)
VALUES
(0,1,"Descuento compras mes de Julio"),
(1,1,"Descuento 3 primeras compras de misma marca"),
(2,1,"Descuento disponible en Mayo");

/*INSERT CATALOGO UNIDAD DE MEDIDA*/
INSERT INTO `proyecto`.`catalogo_unidad_de_medida`
(`idCatalogo_Unidad_De_Medida`,
`Nombre_Unidad_De_Medida`,
`Abreviatura_Unidad_De_Medida`)
VALUES
(0,"Gramos","g"),
(1,"Litros","L"),
(2,"Mililitros","ml"),
(3,"Kilogramos","kg");


/*INSERT CATALOGO TIPO DE PAGO */
INSERT INTO `proyecto`.`catalogo_tipo_de_pago`
(`idCatalogo_Tipo_De_Pago`,
`Descripcion_Tipo_De_Pago`,
`Activo`)
VALUES
(0,"Efectivo",1),(1,"Tarjeta",1),(2,"Pago movil",1);

/*INSERT CATALOGO TIPO DE TELEFONO*/
INSERT INTO `proyecto`.`catalogo_telefono`
(`idCatalogo_Telefono`,
`Descripcion_Tipo_de_Telefono`,
`Activo`)
VALUES
(0,"Telefono fijo",1),
(1,"Telefono Trabajo",1),
(2,"Celular Personal",1),
(3,"Celular Laboral",1);


/*INSERT CATALOGO TIPO DE CORREO*/
INSERT INTO `proyecto`.`catalogo_correo_electronico`
(`idCatalogo_Correo_Electronico`,
`Descripcion_Correo_Electronico`,
`Activo`)
VALUES
(0,"Correo electronico personal ",1),
(1,"Correo electronico Laboral",1),
(2,"Correo electronico comercial",1);

/*INSERT CATALOGO GENERO*/
INSERT INTO `proyecto`.`catalogo_genero`
(`idCatalogo_Genero`,
`Descripcion_Genero`,
`Activo`)
VALUES
(0,"Masculino",1),
(1,"Femenino",1),
(2,"Prefiero no decirlo",1);

/*INSERT CATALOGO NIVEL PERMISO */

INSERT INTO `proyecto`.`catalogo_nivel_permiso`
(`idCatalogo_Nivel_permiso`,
`Descripcion_Nivel`,
`Activo`)
VALUES
(0, 'Nivel 1', 1),(1, 'Nivel 2', 1),(2, 'Nivel 3', 1);


/*INSERT TABLA PRODUCTO */
INSERT INTO `proyecto`.`producto`
(`idProducto`,
`Nombre_Producto`,
`Catalogo_Unidad_De_Medida_idCatalogo_Unidad_De_Medida`)
VALUES
(0,"Pasta ",0),
(1,"Arroz" ,0),
(2,"Cafe" ,0),
(3,"Gaseosa" ,1),
(4,"Gel cabello" ,2),
(5,"Shampoo",2),
(6,"Desodorante Barra",0),
(7,"Pollo",3),
(8,"Carne",3);

/*INSERT TABLA PROVINCIA*/
INSERT INTO `proyecto`.`provincia`
(`id_Provincia`,
`Descripcion_Provincia`,
`Activo`)
VALUES
(0,"San Jose",1),(1,"Cartago",1),(2,"Alajuela",1);

/*INSERT TABLA CANTON*/
INSERT INTO `proyecto`.`canton`
(`idCanton`,
`Descripcion_Canton`,
`Activo`,
`Provincia_id_Provincia`)
VALUES
(0,"San Jose",1,0),(1,"Paraiso",1,1),(2,"San Ramon",1,2);

/*INSERT TABLA DISTRITO*/
INSERT INTO `proyecto`.`distrito`
(`idDistrito`,
`Descripcion_Distrito`,
`Activo`,
`Canton_idCanton`,
`Canton_Provincia_id_Provincia`)
VALUES
(0,"Escazu",1,0,0),(1,"Orosi ",1,1,1),(2,"San Isidro",1,2,2);

/*INSERT TABLA HORA DE APERTURA*/
INSERT INTO `proyecto`.`apertura`
(`IdApertura`,
`Apertura`)
VALUES
(0,"8:00:00"),(1,"8:30:00"),(2,"7:00:00");

/*INSERT TABLA HORA DE CIERRE*/
INSERT INTO `proyecto`.`cierre`
(`idCierre`,
`Cierre`,
`Apertura_IdApertura`)
VALUES
(0,"7:00:00",0),(1,"7:30:00",1),(2,"8:00:00",2);

/*INSERT TABLA FECHA*/ 
INSERT INTO `proyecto`.`fecha`
(`Id_FechaDia`,
`Fecha_Dia`,
`Cierre_idCierre`,
`Cierre_Apertura_IdApertura`)
VALUES
(0,"2023-07-13",0,0),(1,"2023-02-01",1,1),(2,"2023-04-11",2,2);

/*INSERT TABLA DIA*/

INSERT INTO `proyecto`.`dia`
(`idDia`,
`Dia_de_la_semana`,
`Activo`,
`Fecha_Id_FechaDia`,
`Fecha_Cierre_idCierre`,
`Fecha_Cierre_Apertura_IdApertura`)
VALUES
(0,"Lunes",1,0,0,0),
(1,"Martes",1,1,1,1),
(2,"Miercoles",1,2,2,2),
(3,"Jueves",1,0,0,0),
(4,"Viernes",1,1,1,1),
(5,"Sabado",1,2,2,2),
(6,"Domingo",1,0,0,0);

/*INSERT TABLA FRANJA HORARIA*/ 
INSERT INTO `proyecto`.`franja_horaria`
(`Franja_Horaria`,
`DescripcionFranja`,
`Activo`,
`Dia_idDia`,
`Dia_Fecha_Id_FechaDia`,
`Dia_Fecha_Cierre_idCierre`,
`Dia_Fecha_Cierre_Apertura_IdApertura`)
VALUES
(0,"De 8:00 a 7:00",1,0,0,0,0),(1,"De 8:30 a 7:30",1,1,1,1,1),(2,"De 7:00 a 8:00",1,2,2,2,2);


/*INSERT TABLA ENTIDAD AGENCIA*/
INSERT INTO `proyecto`.`entidad_agencia`
(`idEntidad_Agencia`,
`Activo`,
`Distrito_idDistrito`,
`Distrito_Canton_idCanton`,
`Distrito_Canton_Provincia_id_Provincia`,
`Franja_Horaria_Franja_Horaria`,
`Franja_Horaria_Dia_idDia`,
`Franja_Horaria_Dia_Fecha_Id_FechaDia`,
`Franja_Horaria_Dia_Fecha_Cierre_idCierre`,
`Franja_Horaria_Dia_Fecha_Cierre_Apertura_IdApertura`)
VALUES
(0,1,0,0,0,0,0,0,0,0),(1,1,1,1,1,1,1,1,1,1),(2,1,2,2,2,2,2,2,2,2);

/*INSERT TABLA HORA ENTRADA*/
INSERT INTO `proyecto`.`hora_entrada`
(`idHora_Entrada`,
`Hora_Entrada`
)
VALUES
(0,"7:30:00"),
(1,"12:00:00"),
(2,"8:00:00"),
(3,"6:30:00");


/*INSERT TABLA HORA SALIDA*/

INSERT INTO `proyecto`.`hora_salida`
(`idHora_Salida`,
`Hora_Salida`,
`Hora_Entrada_idHora_Entrada`)
VALUES
(0,"3:30:00",0),
(1,"7:00:00",1),
(2,"4:00:00",2),
(3,"7:30:00",2),
(4,"2:30:00",3),
(5,"8:00:00",1);


/*INSERT TABLA FECHAS LABORADAS*/
INSERT INTO `proyecto`.`fechas_laboradas`
(`idFechas_Laboradas`,
`Descripcion_dia`,
`Hora_Salida_idHora_Salida`,
`Hora_Salida_Hora_Entrada_idHora_Entrada`)
VALUES
(0,"lunes",0,0),
(1,"Martes",1,1),
(2,"Miercoles",2,2),
(3,"Jueves",1,1),
(4,"Viernes",3,2),
(5,"Sabado",5,1),
(6,"Domingo",0,0);


/*INSERT TABLA PERSONA*/
INSERT INTO `proyecto`.`persona`
(`idPersona`,
`Nombre`,
`Apellido1`,
`Apellido2`,
`Fallecido`,
`Catalogo_Genero_idCatalogo_Genero`)
VALUES
(0,"Noelia","Cordero","Morales",0,1),
(1,"Ana","Quesada","Soto",0,1),
(2,"Sebastian","Mora","Mora",0,0),
(3,"Anthony","Rodriguez","Carballo",0,0),
(4,"Luisa","Chanto","Carvajal",0,1),
(5,"Roberto","Obando","Lopez",0,0);

/*INSERT TABLA COLABORADOR*/
INSERT INTO `proyecto`.`colaborador`
(`idColaborador`,
`Password`,
`Activo`,
`Bloqueado`,
`Fecha_Creacion`,
`Fecha_Actualizacion`,
`Fecha_Ult_Cambio_clave`,
`Persona_idPersona`,
`Entidad_Agencia_idEntidad_Agencia`,
`Fechas_Laboradas_idFechas_Laboradas`,
`Fechas_Laboradas_Hora_Salida_idHora_Salida`,
`Fechas_Laboradas_Hora_Salida_Hora_Entrada_idHora_Entrada`)
VALUES
(0,"NCM13",1,0,"2022-01-10","2023-01-10","2021-06-14",0,0,0,0,0),
(1,"AQS12",1,0,"2022-01-10","2023-01-10","2021-06-14",1,1,1,1,1),
(2,"seb12",1,0,"2020-07-13","2022-07-13","2022-01-16",2,2,2,2,2);

/*INSERT TABLA PERMISO POR COLABORADOR*/
INSERT INTO `proyecto`.`permiso_por_colaborador`
(`Activo`,
`Fecha_Auditoria`,
`Colaborador_idColaborador`,
`Permiso_Disponible_idPermiso_Disponible`)
VALUES
(1,"2023-01-10",0,0),(1,"2023-05-01",1,1),(1,"2023-04-11",2,2);

/*INSERT TABLA PERMISO DISPONIBLE*/

INSERT INTO `proyecto`.`permiso_disponible`
(`idPermiso_Disponible`,
`Nombre_Permiso`,
`Activo`,
`Orden`,
`IdPermiso_Padre`,
`Catalogo_Nivel_permiso_idCatalogo_Nivel_permiso`)
VALUES
(0,"Vacaciones",0,0,0,0),(1,"Incapacidad",0,1,1,1),(2,"Maternidad",1,0,2,2);


/*INSERT TABLA TELEFONO*/
INSERT INTO `proyecto`.`telefono`
(`Numero_Telefono`,
`Activo`,
`Persona_idPersona`,
`Catalogo_Telefono_idCatalogo_Telefono`)
VALUES
("84432695",1,0,1),
("85469217",1,1,3),
("25469856",1,2,0),
("85697432",1,3,2);


/*INSERT TABLA CORREO*/
INSERT INTO `proyecto`.`correo_electronico`
(`Correo_Electronico`,
`Activo`,
`Persona_idPersona`,
`Catalogo_Correo_Electronico_idCatalogo_Correo_Electronico`)
VALUES
("Noecm@gmail.com",1,0,1),
("Anaqs@gmail.com",1,1,1),
("SebsMM@gamil.com",1,2,2);


/*INSERT TABLA CLIENTE*/
INSERT INTO `proyecto`.`cliente`
(`idCliente`,
`Activo`,
`Limite_De_Credito`,
`Fecha_de_Creacion`,
`Fecha_Actualizacion`,
`Total_de_compras`,
`Persona_idPersona`)
VALUES
(0,1,1000000.00,"2022-03-15","2023-03-15",100,3),
(1,1,1350000.00,"2020-01-01","2023-01-01",200,4),
(2,1,1500000.00,"2019-05-10","2023-05-10",400,5);

/*INSERT TABLA DESCUENTO*/
INSERT INTO `proyecto`.`descuento`
(`idDescuento`,
`Fecha_Inicio`,
`Fecha_Finalizacion`,
`Condiciones`,
`Tipo_Descuento`,
`Descripcion_Descuento`,
`Catalogo_Disponibilidad_idCatalogo_Disponibilidad`,
`Producto_idProducto`)
VALUES
(0,"2023-07-13 12:34:00","2023-07-13 12:34:56","Compras superiores a 4000",0.10,
"Para las compras superiores a 4000 colones obten un descuento en tu compra de temporada",0,8),
(1,"2023-01-10 8:34:00","2023-01-10 8:34:56","Comprar mas de un producto de la misma marca ",0.05,
"Aprovecha esta oferta de tiempo limitado para obtener un descuento en la compra de productos de  la misma marca  ",1,0),
(2,"2023-05-01 7:34:00","2023-05-01 7:34:56","Compras superiores a 10000",0.15,
"Por la suma de 10000 colones recibe un descuento en tus productos de preferencia",2,1);

/*INSERT  PROMOCION Y DESCUENTO EXCLUSIVO */
INSERT INTO `proyecto`.`promocion_y_descuento_exclusivo`
(`idPromocion_y_descuento_exclusivo`,
`Descripcion`,
`Activo`,
`Cliente_idCliente`)
VALUES
(0,"Descuento de Verano",1,0),
(1,"Pague 1 lleve 2",1,1),
(2,"Oferta de tiempo limitado",1,2);

/*INSERT  FACTURA */
INSERT INTO `proyecto`.`factura`
(`idFactura`,
`Total`,
`Fecha`,
`Anulado`,
`Catalogo_Tipo_De_Pago_idCatalogo_Tipo_De_Pago`,
`Catalogo_Condicion_De_Pago_idCatalogo_Condicion_De_Pago`,
`Cliente_idCliente`)
VALUES
(0,4200.00,"2023-07-13 12:34:00",0,0,1,0),
(1,5600.00,"2023-01-10 8:34:00",0,1,1,1),
(2,10500.00,"2023-05-01 7:34:00",0,2,1,2);

/*INSERT  FACTURA DETALLE */
INSERT INTO `proyecto`.`factura_detalle`
(`idFactura_Detalle`,
`Cantidad_Articulo`,
`Precio_Unitario`,
`Impuesto`,
`Subtotal`,
`Factura_idFactura`,
`Producto_idProducto`)
VALUES
(0,2,4500.00,0.01,4500.10,0,8),
(1,2,5000.00,0.01,5000.50,1,0),
(2,3,10000.00,0.03,10000.60,2,1);

/*INSERT INVENTARIO */
INSERT INTO `proyecto`.`inventario`
(`idInventario`,
`Cantidad`,
`Punto_Reorden`,
`Fecha_Ultimo_Abasteciminento`,
`Producto_idProducto`,
`Entidad_Agencia_idEntidad_Agencia`,
`Activo`
)
VALUES
(0,100,50,"2023-01-10",0,0,1),
(1,200,100,"2023-02-11",1,0,1),
(2,100,100,"2023-02-15",2,0,1),
(3,300,150,"2023-05-11",3,0,1),
(4,400,200,"2023-01-15",4,0,1),
(5,100,100,"2023-02-05",5,0,1),
(6,150,150,"2023-04-04",6,0,1),
(7,40,20,"2023-01-07",7,0,1),
(8,30,15,"2023-03-03",8,0,1),
(9,150,50,"2023-01-15",0,1,1),
(10,150,100,"2023-03-11",1,1,1),
(11,110,100,"2023-02-17",2,1,1),
(12,250,150,"2023-06-03",3,1,1),
(13,350,200,"2023-02-02",4,1,1),
(14,150,100,"2023-03-05",5,1,1),
(15,200,150,"2023-04-20",6,1,1),
(16,60,20,"2023-02-20",7,1,1),
(17,40,15,"2023-03-15",8,1,1),
(18,130,50,"2023-01-12",0,2,1),
(19,110,100,"2023-02-01",1,2,1),
(20,150,100,"2023-03-10",2,2,1),
(21,200,150,"2023-05-03",3,2,1),
(22,250,200,"2023-01-03",4,2,1),
(23,130,100,"2023-02-10",5,2,1),
(24,250,150,"2023-05-02",6,2,1),
(25,55,20,"2023-01-20",7,2,1),
(26,50,15,"2023-03-25",8,2,1);

/*INSERT BITACORA FACTURA  */
INSERT INTO `proyecto`.`bitacora_factura`
(`idMovimiento`,
`Fecha_Movimiento`,
`Factura_idFactura`,
`Cliente_idCliente`,
`Catalogo_Movimiento_idCatalogo_Movimiento`)
VALUES
(0,"2023-07-13 ",0,0,0),
(1,"2023-01-10 ",1,1,1),
(2,"2023-05-01 ",2,2,2);

