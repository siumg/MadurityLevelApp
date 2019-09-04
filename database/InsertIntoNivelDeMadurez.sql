use NivelDeMadurez;
go

declare @idDocumento int, @idCapitulo int, @idArticulo int, @idRequerimiento int, @idPregunta int


-- DOCUMENTO 1
insert into Documentos (documento, descripcion) 
values ('Estado de Cumplimiento JM-102-2011', '')

select @idDocumento = max(idDocumento) from Documentos
	
	-- CAPITULO 2
	insert into Capitulos (idDocumento, noCapitulo, capitulo)
	values (@idDocumento, 2, 'ORGANIZACI�N PARA LA ADMINISTRACI�N DEL RIESGO TECNOL�GICO')
	
	select @idCapitulo = max(idCapitulo) from Capitulos
		
		-- ARTICULO 3
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			3, 
			'Pol�ticas y procedimientos', 
			'Las instituciones deber�n establecer e implementar pol�ticas y procedimientos que les 
			 permitan realizar permanentemente una adecuada administraci�n del riesgo tecnol�gico, de la instituci�n, 
			 considerando la naturaleza, complejidad y volumen de sus operaciones.
			 Dichas pol�ticas y procedimientos deber�n comprender, como m�nimo, las metodolog�as, herramientas o 
			 modelos de medici�n del riesgo tecnol�gico, as� como los aspectos que se detallan en los cap�tulos 
			 del III al VI de este reglamento y agruparse en los temas siguientes:'
			)

		select @idArticulo = max(idArticulo) from Articulos
			
			-- REQUERIMIENTOS
			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'a', 'Infraestructura de TI, sistemas de informaci�n, bases de datos y servicios de TI')

			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'b', 'Seguridad de tecnolog�a de la informaci�n')

			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'c', 'Continuidad de operaciones de tecnolog�a de la informaci�n')

			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'd', 'Procesamiento de informaci�n y tercerizaci�n')

		-- ARTICULO 4
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			4, 
			'Responsabilidad del Consejo de Administraci�n', 
			'El Consejo de Administraci�n o quien haga sus veces, en lo sucesivo el Consejo, sin perjuicio de las 
			 responsabilidades que le asignan otras disposiciones legales aplicables, es el responsable de velar 
			 porque se implemente e instruir para que se mantenga en adecuado funcionamiento y ejecuci�n la administraci�n 
			 del riesgo tecnol�gico. Para cumplir con lo indicado en el p�rrafo anterior el Consejo como m�nimo deber�:'
			)

		select @idArticulo = max(idArticulo) from Articulos
			
			-- REQUERIMIENTOS

			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'a', 'Aprobar las pol�ticas y procedimientos a que se refiere el art�culo anterior, el plan estrat�gico de TI, el plan de continuidad de operaciones de TI, as� como conocer y resolver sobre las propuestas de actualizaci�n y autorizar las modificaciones respectivas')
			
			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'b', 'Conocer los reportes que le remita el Comit� de Gesti�n de Riesgos sobre la exposici�n al riesgo tecnol�gico, los cambios sustanciales de tal exposici�n y su evoluci�n en el tiempo, as� como las medidas correctivas adoptadas')
			
			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'c', 'Conocer los reportes sobre el nivel de cumplimiento de las pol�ticas y procedimientos aprobados, as� como las propuestas sobre acciones a adoptar con relaci�n a los incumplimientos. Asimismo, en caso de incumplimiento el Consejo deber� adoptar las medidas que correspondan, sin perjuicio de las sanciones legales que el caso amerite.')


		-- ARTICULO 5
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			5, 
			'Comit� de Gesti�n de Riesgos', 
			'El Comit� de Gesti�n de Riesgos, en lo sucesivo el Comit�, estar� integrado como m�nimo por un 
			 miembro del Consejo y por las autoridades y funcionarios que dicho Consejo designe. El Comit� estar� 
			 a cargo de la direcci�n de la administraci�n del riesgo tecnol�gico, entre otros riesgos, para lo cual 
			 deber� encargarse de la implementaci�n, adecuado funcionamiento y ejecuci�n de las pol�ticas y procedimientos 
			 aprobados para dicho prop�sito y tendr� las funciones siguientes:'
			)
		select @idArticulo = max(idArticulo) from Articulos
			
			-- REQUERIMIENTOS

			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'a', 'Proponer al Consejo, para su aprobaci�n, las pol�ticas y procedimientos para la administraci�n del riesgo tecnol�gico, as� como el plan estrat�gico de TI y el plan de continuidad de operaciones de TI')
			
			select @idRequerimiento = max(idRequerimiento) from Requerimientos
				
				-- PREGUNTAS
				insert into Preguntas (idRequerimiento, orden, pregunta) values (@idRequerimiento, 1, 'Documentaci�n obligatoria �Existe el documento?')
				
			
			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'b', 'Proponer al Consejo el manual de administraci�n del riesgo tecnol�gico y sus actualizaciones')

			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'c', 'Analizar las propuestas sobre actualizaci�n de las pol�ticas, procedimientos, plan estrat�gico de TI, plan de continuidad de operaciones de TI y su plan de pruebas, y proponer al Consejo las actualizaciones que procedan')

			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'd', 'Definir la estrategia para la implementaci�n de las pol�ticas y procedimientos aprobados para la administraci�n del riesgo tecnol�gico y su adecuado cumplimiento')

			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'e', 'Revisar, al menos anualmente, las pol�ticas y procedimientos y proponer la actualizaci�n, cuando proceda')

			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'f', 'Analizar los reportes que le remita la Unidad de Administraci�n de Riesgos, a que se refiere el art�culo 6 de este reglamento, sobre la exposici�n del riesgo tecnol�gico de la instituci�n, los cambios sustanciales de tal exposici�n y su evoluci�n en el tiempo, as� como adoptar las medidas correctivas correspondientes')

			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'g', 'Analizar la informaci�n que le remita la Unidad de Administraci�n de Riesgos sobre el cumplimiento de las pol�ticas y procedimientos aprobados, as� como evaluar las causas de los incumplimientos que hubieren, y proponer al Consejo acciones a adoptar con relaci�n a dichos incumplimientos')

			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'h', 'Reportar al Consejo, al menos semestralmente y cuando la situaci�n lo amerite, sobre la exposici�n al riesgo tecnol�gico de la instituci�n, los cambios sustanciales de tal exposici�n, su evoluci�n en el tiempo, las principales medidas correctivas adoptadas y el cumplimiento de las pol�ticas y procedimientos aprobados')

			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'i', 'Otras funciones relacionadas que le asigne el Consejo')

		-- ARTICULO 6
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			6, 
			'Unidad de Administraci�n de Riesgos', 
			'La Unidad de Administraci�n de Riesgos, en lo sucesivo la Unidad, apoyar� al Comit� en la administraci�n 
			 del riesgo tecnol�gico, para lo cual tendr� las funciones siguientes:'
			)
		select @idArticulo = max(idArticulo) from Articulos
			
			-- REQUERIMIENTOS

			insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
					@idArticulo, 
					'a', 
					'Proponer al Comit� pol�ticas y procedimientos para la administraci�n del riesgo tecnol�gico, as� como el plan estrat�gico de TI, el plan de continuidad de operaciones de TI a que se refiere el art�culo 20 de este reglamento y su plan de pruebas descrito en el art�culo 21'
				)

			insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
					@idArticulo, 
					'b', 
					'Revisar, al menos anualmente y cuando la situaci�n lo amerite, las pol�ticas, los procedimientos, el plan estrat�gico de TI, y para los procesos cr�ticos, el plan de continuidad de operaciones de TI y su plan de pruebas, y proponer su actualizaci�n al Comit�, atendiendo los cambios en la estrategia o situaci�n de la instituci�n o cuando lo requiera la normativa'
				)

			insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
					@idArticulo, 
					'c', 
					'Monitorear la exposici�n al riesgo tecnol�gico y mantener registros hist�ricos sobre dicho monitoreo, as� como medir el riesgo tecnol�gico'
				)

			insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
					@idArticulo, 
					'd', 
					'Analizar el riesgo tecnol�gico inherente de las innovaciones en TI que se implementen en la instituci�n y el que se derive de los nuevos productos y servicios propuestos por las unidades de negocios'
				)

			insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
					@idArticulo, 
					'e', 
					'Reportar al Comit�, al menos trimestralmente y cuando la situaci�n lo amerite, sobre la exposici�n al riesgo tecnol�gico de la instituci�n, los cambios sustanciales de tal exposici�n y su evoluci�n en el tiempo, as� como proponer al Comit� las medidas correctivas correspondientes'
				)

			insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
					@idArticulo, 
					'f', 
					'Verificar e informar al Comit�, al menos trimestralmente y cuando la situaci�n lo amerite, sobre el nivel de cumplimiento de las pol�ticas y procedimientos aprobados'
				)

			insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
					@idArticulo, 
					'g', 
					'Identificar las causas del incumplimiento de las pol�ticas y procedimientos aprobados, determinar si los mismos se presentan en forma reiterada e incluir sus resultados en el informe indicado en el inciso f) anterior y proponer las medidas correctivas, debiendo mantener registros hist�ricos sobre tales incumplimientos'
				)

			insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
					@idArticulo, 
					'h', 
					'Otras funciones relacionadas que le asigne el Comit�'
				)

		-- ARTICULO 7
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			7, 
			'Plan estrat�gico de TI', 
			'Las instituciones, como parte de su plan estrat�gico general, deber�n tener un plan estrat�gico de TI 
			alineado con la estrategia de negocios, para gestionar la infraestructura de TI, los sistemas de informaci�n, 
			la base de datos y al recurso humano de TI. El plan estrat�gico de TI debe incluir, como m�nimo, los aspectos siguientes:'
		)

		select @idArticulo = max(idArticulo) from Articulos
			
			-- REQUERIMIENTOS

			insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
					@idArticulo, 
					'a', 
					'Objetivos de TI alineados con la estrategia de negocios en funci�n del an�lisis e impacto de factores internos y externos en esta materia, tales como oportunidades, limitaciones y desempe�o de la infraestructura de TI, los sistemas de informaci�n, la base de datos y el recurso humano relacionado'
				)

			insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
					@idArticulo, 
					'b', 
					'Estrategias de TI, para la consecuci�n de los objetivos'
				)

			insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
					@idArticulo, 
					'c', 
					'Proyectos y actividades espec�ficas'
				)

			insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
					@idArticulo, 
					'd', 
					'El presupuesto financiero para su ejecuci�n'
				)

		-- ARTICULO 8
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			8, 
			'Organizaci�n de TI', 
			'Las instituciones deber�n contar con una estructura organizacional de TI que est� alineada con el plan 
			 estrat�gico, asegur�ndose que el recurso humano de TI tenga las capacidades necesarias mediante programas 
			 de entrenamiento y capacitaci�n, una adecuada separaci�n de funciones, delegaci�n de autoridad, definici�n 
			 de roles y asignaci�n de responsabilidades, todo esto soportado con un marco de trabajo estructurado en procesos, 
			 los cuales deber�n estar debidamente identificados.'
			)

		select @idArticulo = max(idArticulo) from Articulos
			
			-- REQUERIMIENTOS

			insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
					@idArticulo, 
					'a', 
					'Organizaci�n de TI'
				)

		-- ARTICULO 9
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			9, 
			'Manual de administraci�n del riesgo tecnol�gico', 
			'Las pol�ticas y procedimientos a que se refiere el art�culo 3 de este reglamento deber�n constar por 
			 escrito en un manual de administraci�n del riesgo tecnol�gico que ser� aprobado por el Consejo.
			 El Consejo conocer� y resolver� sobre las propuestas de actualizaci�n del manual de administraci�n del 
			 riesgo tecnol�gico y autorizar� las modificaciones al mismo, las que deber�n ser comunicadas a la Superintendencia 
			 de Bancos, dentro de los diez (10) d�as h�biles siguientes a su aprobaci�n.
		 	 Las nuevas instituciones que se constituyan o se autorice su funcionamiento deber�n remitir una copia del manual 
		 	a que se refiere este art�culo a la Superintendencia de Bancos antes del inicio de sus operaciones.'
			)

		select @idArticulo = max(idArticulo) from Articulos
			
			-- REQUERIMIENTOS

			insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
					@idArticulo, 
					'a', 
					'Manual de administraci�n del riesgo tecnol�gico'
				)

	-- CAPITULO 3
	insert into Capitulos (idDocumento, noCapitulo, capitulo)
	values (@idDocumento, 3, 'INFRAESTRUCTURA DE TI, SISTEMAS DE INFORMACI�N, BASES DE DATOS Y SERVICIOS DE TI')
	
	select @idCapitulo = max(idCapitulo) from Capitulos
		
		-- ARTICULO 10
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			10, 
			'Esquema de la informaci�n del negocio', 
			'Las instituciones deber�n contar con un esquema actualizado de la informaci�n del negocio que represente la interrelaci�n entre la infraestructura de TI, los sistemas de informaci�n, los servicios de TI y los procesos de las principales l�neas de negocio.'
		)
		
		select @idArticulo = max(idArticulo) from Articulos
			
			-- REQUERIMIENTOS
			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'a', 'Las instituciones deber�n contar con un esquema actualizado de la informaci�n del negocio que represente la interrelaci�n entre la infraestructura de TI, los sistemas de informaci�n, los servicios de TI y los procesos de las principales l�neas de negocio.')


		-- ARTICULO 11
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			11, 
			'Inventarios de infraestructura de TI, sistemas de informaci�n y de bases de datos.', 
			'Las instituciones deber�n mantener inventarios actualizados de su infraestructura de TI, de sus sistemas de informaci�n y de sus bases de datos que incluyan, como m�nimo, lo siguiente:'
		)

		select @idArticulo = max(idArticulo) from Articulos

			-- REQUERIMIENTOS
			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'a', 'De infraestructura de TI')

			select @idRequerimiento = max(idRequerimiento) from Requerimientos

				-- PREGUNTAS
				insert into Preguntas (idRequerimiento, orden, pregunta)
				values (@idRequerimiento, 1, '1. Especificaciones t�cnicas de sus elementos:')
				
				select @idPregunta = max(idPregunta) from Preguntas
					
					-- INCISOS
					insert into Incisos (idPregunta, orden, inciso)
					values (@idPregunta, 1, 'i. Tipo;')
					insert into Incisos (idPregunta, orden, inciso)
					values (@idPregunta, 2, 'ii. Nombre;')
					insert into Incisos (idPregunta, orden, inciso)
					values (@idPregunta, 3, 'iii. Funci�n; y,')
					insert into Incisos (idPregunta, orden, inciso)
					values (@idPregunta, 4, 'iv. Identificar si el mantenimiento es propio o realizado por terceros, en este �ltimo caso deber� identificarse al proveedor.')

				insert into Preguntas (idRequerimiento, orden, pregunta)
				values (@idRequerimiento, 2, '2. Ubicaci�n f�sica de sus elementos.')

			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'b', 'De sistemas de informaci�n')
			select @idRequerimiento = max(idRequerimiento) from Requerimientos
				
				-- PREGUNTAS
				insert into Preguntas (idRequerimiento, orden, pregunta)
				values (@idRequerimiento, 1, 'De sistemas de informaci�n: 1. Caracter�sticas de los sistemas de informaci�n:')
				
				select @idPregunta = max(idPregunta) from Preguntas

					-- INCISOS
					insert into Incisos (idPregunta, orden, inciso)
					values (@idPregunta, 1, 'i. Nombre;')
					insert into Incisos (idPregunta, orden, inciso)
					values (@idPregunta, 2, 'ii. Funci�n;')
					insert into Incisos (idPregunta, orden, inciso)
					values (@idPregunta, 3, 'iii. Lenguaje de programaci�n;')
					insert into Incisos (idPregunta, orden, inciso)
					values (@idPregunta, 4, 'iv. Versi�n;')
					insert into Incisos (idPregunta, orden, inciso)
					values (@idPregunta, 5, 'v. Estructura del sistema y las relaciones entre sus componentes;')
					insert into Incisos (idPregunta, orden, inciso)
					values (@idPregunta, 6, 'vi. Nombre y versi�n de los manejadores de bases de datos con las cuales interact�an;')
					insert into Incisos (idPregunta, orden, inciso)
					values (@idPregunta, 7, 'vii. Nombre de las bases de datos con las cuales interact�an;')
					insert into Incisos (idPregunta, orden, inciso)
					values (@idPregunta, 8, 'viii. Identificar si es desarrollo propio o realizado por terceros, en este �ltimo caso deber� identificarse al proveedor; y,')
					insert into Incisos (idPregunta, orden, inciso)
					values (@idPregunta, 9, 'ix. Identificar si el mantenimiento es propio o realizado por terceros, en este �ltimo caso deber� identificarse al proveedor.')

				insert into Preguntas (idRequerimiento, orden, pregunta)
				values (@idRequerimiento, 2, 'De sistemas de informaci�n: 2. Documentaci�n t�cnica; y,')

				insert into Preguntas (idRequerimiento, orden, pregunta)
				values (@idRequerimiento, 3, 'De sistemas de informaci�n: 3. Documentaci�n para el usuario final.')
			
			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'c', 'De bases de datos')
			select @idRequerimiento = max(idRequerimiento) from Requerimientos
				
				-- PREGUNTAS
				insert into Preguntas (idRequerimiento, orden, pregunta)
				values 
					(@idRequerimiento, 1, '1. Nombre;'),
					(@idRequerimiento, 2, '2. Descripci�n general de la informaci�n que contiene;'),
					(@idRequerimiento, 3, '3. Manejador de base de datos o sistema de gesti�n de archivos, y su versi�n;'),
					(@idRequerimiento, 4, '4. Nombre de los servidores en los que reside;'),
					(@idRequerimiento, 5, '5. Diccionario de datos;'),
					(@idRequerimiento, 6, '6. Diagramas de relaci�n; y,'),
					(@idRequerimiento, 7, '7. Nombre del administrador de la base de datos.')

		-- ARTICULO 12
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			12, 
			'Administrador de base de datos', 
			'Las instituciones deber�n designar uno o m�s administradores de base de datos para gestionar los controles de accesos, la integridad, disponibilidad y confidencialidad de los datos, as� como los procesos de creaci�n, actualizaci�n o eliminaci�n de estructuras en las bases de datos, entre otros.'
		)

		select @idArticulo = max(idArticulo) from Articulos

			-- REQUERIMIENTOS
			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'a', 'Administrador de base de datos')

		-- ARTICULO 13
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			13, 
			'Monitoreo de la infraestructura de TI, sistemas de informaci�n y bases de datos', 
			'Las instituciones deber�n realizar evaluaciones peri�dicas de la capacidad y desempe�o de la infraestructura de TI, de los sistemas de informaci�n y de las bases de datos, con el objeto de determinar necesidades de ampliaci�n de capacidades o actualizaciones. Las instituciones deber�n documentar y llevar registro de las evaluaciones peri�dicas a que se refiere este art�culo y realizar an�lisis de tendencias para determinar capacidades futuras.'
		)

		select @idArticulo = max(idArticulo) from Articulos
			
			-- REQUERIMIENTOS
			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'a', 'Monitoreo de la infraestructura de TI, sistemas de informaci�n y bases de datos')

		-- ARTICULO 14
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			14, 
			'Adquisici�n, mantenimiento e implementaci�n de infraestructura de TI, sistemas de informaci�n y bases de datos', 
			'Las instituciones deber�n contar con procesos documentados y planes operativos para la adquisici�n, mantenimiento e implementaci�n de la infraestructura de TI, los sistemas de informaci�n y las bases de datos. Dichos procesos deber�n incluir, como m�nimo, los aspectos siguientes:'
		)

		select @idArticulo = max(idArticulo) from Articulos
			
			-- REQUERIMIENTOS
			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'a', 'En lo referente a adquisici�n y mantenimiento')

			select @idRequerimiento = max(idRequerimiento) from Requerimientos
			
				-- PREGUNTAS
				insert into Preguntas (idRequerimiento, orden, pregunta)
				values (@idRequerimiento, 1, '1. Selecci�n de proveedores, considerando factibilidad tecnol�gica y econ�mica; y,'),
						(@idRequerimiento, 2, '2. Contrataci�n, considerando la suscripci�n y ejecuci�n.')

			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'b', 'En lo referente a implementaci�n')

			select @idRequerimiento = max(idRequerimiento) from Requerimientos

				-- PREGUNTAS
				insert into Preguntas (idRequerimiento, orden, pregunta)
				values (@idRequerimiento, 1, '1. Realizaci�n de pruebas; y,'),
						(@idRequerimiento, 2, '2. Registro y monitoreo de la implementaci�n.')


		-- ARTICULO 15
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			15, 
			'Gesti�n de servicios de TI', 
			'Las instituciones deber�n realizar una adecuada gesti�n de los servicios de TI de acuerdo con las prioridades del negocio estableciendo, como m�nimo, los aspectos siguientes:'
		)

		select @idArticulo = max(idArticulo) from Articulos

			-- REQUERIMIENTOS
			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'a', 'Un cat�logo que comprenda la definici�n de cada uno de los servicios de TI.')

			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'b', 'Acuerdos de niveles de servicio de TI establecidos entre las �reas del negocio y las �reas de TI.')

			select @idRequerimiento = max(idRequerimiento) from Requerimientos

				-- PREGUNTAS
				insert into Preguntas (idRequerimiento, orden, pregunta)
				values (@idRequerimiento, 1, 'Dichos acuerdos deben comprender: 1. Los compromisos de las �reas de negocios;'),
						(@idRequerimiento, 2, '2. Los compromisos de las �reas de TI;'),
						(@idRequerimiento, 3, '3. Los requerimientos de soporte para el servicio de TI;'),
						(@idRequerimiento, 4, '4. Las condiciones del servicio de TI; y,'),
						(@idRequerimiento, 5, '5. El registro, monitoreo y actualizaci�n para la mejora de los servicios de TI.')

			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'c', 'Procesos de gesti�n de incidentes y de problemas')

			select @idRequerimiento = max(idRequerimiento) from Requerimientos

				-- PREGUNTAS
				insert into Preguntas (idRequerimiento, orden, pregunta)
				values (@idRequerimiento, 1, 'Los cuales deben comprender: 1. La clasificaci�n, registro, atenci�n, an�lisis de tendencias y monitoreo de los incidentes presentados por los usuarios;'),
						(@idRequerimiento, 2, '2. El escalamiento de incidentes para su atenci�n y resoluci�n, cuando aplique; y,'),
						(@idRequerimiento, 3, '3. La identificaci�n, an�lisis, registro y monitoreo de la causa ra�z de los problemas y su posterior resoluci�n.')

			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'd', 'Procesos de gesti�n de cambios en infraestructura de TI, sistemas de informaci�n y bases de datos')

			select @idRequerimiento = max(idRequerimiento) from Requerimientos

				-- PREGUNTAS
				insert into Preguntas (idRequerimiento, orden, pregunta)
				values (@idRequerimiento, 1, 'Los cuales deben comprender: 1. La evaluaci�n del impacto, priorizaci�n y autorizaci�n del cambio;'),
						(@idRequerimiento, 2, '2. Los cambios de emergencia; y,'),
						(@idRequerimiento, 3, '3. Realizaci�n de pruebas, registro y monitoreo del cambio.')

		-- ARTICULO 16
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			16, 
			'Ciclo de vida de los sistemas de informaci�n', 
			'Las instituciones deber�n implementar metodolog�as adecuadamente documentadas para el an�lisis, dise�o, desarrollo, pruebas, puesta en producci�n, mantenimiento, control de versiones y control de calidad de los sistemas de informaci�n. Las actividades de desarrollo y producci�n deber�n realizarse en ambientes distintos.'
		)

		select @idArticulo = max(idArticulo) from Articulos

			-- REQUERIMIENTOS 
			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'a', 'Ciclo de vida de los sistemas de informaci�n')

/****************************************************************/
	--Capitulo 4
	insert into Capitulos (idDocumento, noCapitulo, capitulo)
	values (@idDocumento, 4, 'SEGURIDAD DE TECNOLOG�A DE LA INFORMACI�N')

	select @idCapitulo = max(idCapitulo) from Capitulos

		-- ARTICULO 17
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			17, 
			'Gesti�n de la seguridad de la informaci�n', 
			'Las instituciones deber�n gestionar la seguridad de su informaci�n con el objeto de garantizar la confidencialidad, integridad y disponibilidad de los datos, as� como
			 mitigar los riesgos de p�rdida, extracci�n indebida y corrupci�n de la informaci�n, debiendo considerar, como m�nimo, los aspectos siguientes:'
			)
		
		select @idArticulo = max(idArticulo) from Articulos

				--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
						values (
							@idArticulo, 
							'a', 
							'Identificaci�n y clasificaci�n de la informaci�n de acuerdo a criterios de sensibilidad y criticidad'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
						values (
							@idArticulo, 
							'b', 
							'Roles y responsabilidades para la gesti�n de la seguridad de la informaci�n'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
						values (
							@idArticulo, 
							'c', 
							'Monitoreo de la seguridad de la informaci�n'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
						values (
							@idArticulo, 
							'd', 
							'Seguridad f�sica que incluya controles y medidas de prevenci�n para resguardar adecuadamente la infraestructura de TI de acuerdo a la importancia definida
							por la instituci�n conforme al riesgo a que est� expuesta'
						)

				select @idRequerimiento = max(idRequerimiento) from Requerimientos
				
						--Preguntas
						insert into Preguntas (idRequerimiento, orden, pregunta)
						values (@idRequerimiento, 1, 'Deben considerarse:')
				
						select @idPregunta = max(idPregunta) from Preguntas

								--Incisos
									insert into Incisos (idPregunta, orden, inciso)
									values (@idPregunta, 1, '1. Ubicaci�n f�sica y sus controles de acceso;')
									insert into Incisos (idPregunta, orden, inciso)
									values (@idPregunta, 2, '2. Acondicionamiento del espacio f�sico que considere factores tales como temperatura, humedad y prevenci�n de incendios;')
									insert into Incisos (idPregunta, orden, inciso)
									values (@idPregunta, 3, '3. Vigilancia, que incluya factores tales como personal de seguridad, sistemas de video y sensores;')
									insert into Incisos (idPregunta, orden, inciso)
									values (@idPregunta, 4, '4. Suministro ininterrumpido de energ�a el�ctrica; y,')
									insert into Incisos (idPregunta, orden, inciso)
									values (@idPregunta, 5, '5. Adecuado manejo del cableado de red y energ�a el�ctrica.')

				
				  insert into Requerimientos (idArticulo, noInciso, inciso)
				  values (
					@idArticulo, 
					'e', 
					'Seguridad l�gica que incluya controles y medidas de prevenci�n para resguardar la integridad y seguridad de los sistemas de informaci�n y de los datos'
					)

				  select @idRequerimiento = max(idRequerimiento) from Requerimientos

						--Preguntas
						insert into Preguntas (idRequerimiento, orden, pregunta)
						values (@idRequerimiento, 1, 'Deben considerarse:')
				
						select @idPregunta = max(idPregunta) from Preguntas

								--Incisos
									insert into Incisos (idPregunta, orden, inciso)
									values (@idPregunta, 1, '1. Administraci�n de los permisos a los sistemas de informaci�n, datos y elementos de la infraestructura de TI,
															que incluya registro y bit�coras del proceso y revisiones peri�dicas de los permisos;')
									insert into Incisos (idPregunta, orden, inciso)
									values (@idPregunta, 2, '2. Revisi�n del uso de permisos para detectar actividades no autorizadas;')
									insert into Incisos (idPregunta, orden, inciso)
									values (@idPregunta, 3, '3. Bit�coras de las transacciones realizadas en los sistemas de informaci�n y cr�ticos; y,')
									insert into Incisos (idPregunta, orden, inciso)
									values (@idPregunta, 4, '4. Pruebas peri�dicas para detectar vulnerabilidades en la infraestructura de TI, los sistemas de informaci�n y las bases de datos.')
		-- ARTICULO 18
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			18, 
			'Copias de respaldo', 
			'Las instituciones deber�n tener copias de la informaci�n de la infraestructura de TI, sistemas de informaci�n y bases de datos, para lo cual deber�n considerar, como m�nimo, los aspectos siguientes:'
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Informaci�n a respaldar, periodicidad y validaci�n de las copias de respaldo'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'b', 
						'Procedimientos de restauraci�n de las copias de respaldo'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'c', 
						'Congruencia con la estrategia institucional para la continuidad de operaciones'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'd', 
						'Ubicaci�n de las copias de respaldo de la documentaci�n de los procedimientos de restauraci�n'
						)

	-- ARTICULO 19
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			19, 
			'Operaciones y servicios financieros a trav�s de canales electr�nicos', 
			'Las instituciones que realicen operaciones y presten servicios financieros a trav�s de canales electr�nicos deber�n implementar, como m�nimo, lo siguiente:'
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Mecanismos para la protecci�n y control de la infraestructura de TI, los sistemas de nformaci�n y las bases de datos'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'b', 
						'Medidas de seguridad en el intercambio de informaci�n a trav�s de los canales electr�nicos. Cualquier intercambio de informaci�n sensible debe estar respaldado
						por un certificado digital, cifrado de datos y otro mecanismo que permita garantizar la transferencia de informaci�n'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'c', 
						'Programas de educaci�n y divulgaci�n de informaci�n para clientes'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'd', 
						'Registro y bit�cora de las transacciones efectuadas'
						)

	--Capitulo 5
	insert into Capitulos (idDocumento, noCapitulo, capitulo)
	values (@idDocumento, 5, 'CONTINUIDAD DE OPERACIONES DE TECNOLOG�A DE LA INFORMACI�N')

	select @idCapitulo = max(idCapitulo) from Capitulos

		--ARTICULO 20
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			20, 
			'Plan de continuidad de operaciones de TI.', 
			'Las instituciones deber�n contar con un plan de continuidad de operaciones de TI, que est� alineado a las necesidades de la instituci�n, para recuperar los procesos cr�ticos de las principales l�neas de negocio soportados por TI, as� como la informaci�n asociada en caso de una interrupci�n. 
			 Las nuevas instituciones que se constituyan o se autorice su funcionamiento deber�n remitir una copia del plan de continuidad de operaciones de TI a que se refiere este art�culo a la Superintendencia de Bancos antes del inicio de sus operaciones.
			 Las modificaciones al plan de continuidad de operaciones de TI deber�n ser comunicadas a la Superintendencia de Bancos dentro de los diez (10) d�as h�biles siguientes a su aprobaci�n.
			 El plan de continuidad de operaciones de TI deber� incluir, como m�nimo, los aspectos siguientes:'
				)
		
		select @idArticulo = max(idArticulo) from Articulos

				--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
						values (
							@idArticulo, 
							'a', 
							'Objetivo y alcance del plan'
								)

				insert into Requerimientos (idArticulo, noInciso, inciso)
						values (
							@idArticulo, 
							'b', 
							'Identificaci�n de los procesos cr�ticos de las principales l�neas de negocio'
								)

				insert into Requerimientos (idArticulo, noInciso, inciso)
						values (
							@idArticulo, 
							'c', 
							'Identificaci�n de los procesos de TI que son necesarios para soportar los procesos identificados en el inciso b) anterior'
								)

				insert into Requerimientos (idArticulo, noInciso, inciso)
						values (
							@idArticulo, 
							'd', 
							'Procedimientos y canales de comunicaci�n'
								)

				insert into Requerimientos (idArticulo, noInciso, inciso)
						values (
							@idArticulo, 
							'e', 
							'Procedimientos de recuperaci�n y restaruaci�n de operaciones y procesos cr�ticos'
								)

				insert into Requerimientos (idArticulo, noInciso, inciso)
						values (
							@idArticulo, 
							'f', 
							'Identificaci�n y descripci�n de responsabilidades del personal clave para la continuidad de operaciones de TI y listado de proveedores'
								)

				insert into Requerimientos (idArticulo, noInciso, inciso)
						values (
							@idArticulo, 
							'g', 
							'Recursos necesarios para la recuperaci�n'
								)

				insert into Requerimientos (idArticulo, noInciso, inciso)
						values (
							@idArticulo, 
							'h', 
							'Convenios documentados con terceros'
								)

				insert into Requerimientos (idArticulo, noInciso, inciso)
						values (
							@idArticulo, 
							'i', 
							'Identificaci�n de factores de dependencia interna y externa de la instituci�n, tales como proveedores, personal de la entidad u otros, 
							y las acciones para mitigar el riesgo de dicha dependencia'
								)

		--ARTICULO 21
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			21, 
			'Pruebas al plan de continuidad de operaciones de TI', 
			'Las instituciones deber�n elaborar como parte del plan de continuidad de TI un plan de pruebas que incluya, como m�nimo: alcance, escenarios y periodicidad. Los resultados de las pruebas realizadas deber�n documentarse y, cuando corresponda,
		 	 adecuar el plan de continuidad de operaciones de TI en funci�n de los resultados obtenidos.'
				)
		
		select @idArticulo = max(idArticulo) from Articulos

		--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
						values (
							@idArticulo, 
							'a', 
							'Pruebas al plan de continuidad de operaciones de TI'
								)

		--ARTICULO 22
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			22, 
			'Capacitaci�n del personal clave para la continuidad de operaciones de TI', 
			'Las instituciones deber�n mantener capacitado al personal clave, a que se refiere el inciso f) del art�culo 20 de este reglamento,
			 para activar o probar el plan de continuidad de operaciones de TI y sus modificacciones.'
				)
		
		select @idArticulo = max(idArticulo) from Articulos

		--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
						values (
							@idArticulo, 
							'a', 
							'Capacitaci�n del personal clave para la continuidad de operaciones de TI'
								)

		--ARTICULO 23
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			23, 
			'Centro de c�mputo alterno', 
			'Las instituciones deber�n contar con un centro de c�mputo alterno con las caracter�sticas f�sicas y l�gicas necesarias para dar continuidad a las operaciones y los procesos 
			 cr�ticos de negocios, cumpliendo con el Reglamento para la Administraci�n del Riesgo Tecnol�gico JM-102-2011. Requisitos establecidos en este reglamento referentes a seguridad
			 de tecnolog�a de la informaci�n, infraestructura de TI, sistemas de informaci�n y bases de datos. El centro de c�mputo alterno deber� estar en una buena ubicaci�n distinta
			 del centro de c�mputo principal, de tal forma que no se vean expuestos a un mismo nivel de riesgo ante la ocurrencia de un mismo desastre. Se entender� por desastre todo evento
		     que interrumpa las operaciones normales de un negocio.
		     En ese caso el centro de c�mputo alterno est� ubicado fuera del territorio nacional, las instituciones deber�n permitir a la Superintendencia de Bancos el libre acceso a su 
		     infraestructura de TI, sistemas de informaci�n y bases de datos, y proporcionar a �sta la informaci�n que les requiera.'
				)
		
		select @idArticulo = max(idArticulo) from Articulos

		--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
						values (
							@idArticulo, 
							'a', 
							'Centro de c�mputo alterno'
								)

	--Capitulo 6
	insert into Capitulos (idDocumento, noCapitulo, capitulo)
	values (@idDocumento, 6, 'PROCESAMIENTO DE INFORMACI�N Y TERCERIZACI�N')

	select @idCapitulo = max(idCapitulo) from Capitulos

			-- ARTICULO 24
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			24, 
			'Procesamiento de la informaci�n', 
			'Las instituciones podr�n procesar su informaci�n dentro o fuera del territorio nacional debiendo contar para el efecto con la infraestructura de TI, sistemas de informaci�n, bases de datos y
			 personal t�cnico capacitado con el prop�sito de asegurar la disponibilidad, integridad, confidencialidad y accesibilidad de la informaci�n. Asimismo las instituciones deber�n contar con la 
			 autorizaci�n previa de la Superintendencia de Bancos para cambiar el sitio donde se procesa la informaci�n hacia otro pa�s.
			 En el caso de procesamiento fuera del territorio nacional, previamente deber�n contar con autorizaci�n de la Superintendencia de Bancos y cumplir con los requisitos siguientes:'
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Contar con un centro de c�mputo alterno, conforme lo establecido con el art�culo anterior, ubicado en el territorio nacional'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'b', 
						'Disponer de personal t�cnico y uno o m�s administradores de bases de datos, en el territorio nacional, capacitados para operar en el centro de c�mputo alterno'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'c', 
						'Replicaci�n en el tiempo real hacia servidores locales de su informaci�n procesada fuera del territorio nacional'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'd', 
						'Permitir a la Superintendencia de Bancos el libre acceso a su infraestructura de TI, sistemas de informaci�n, bases de datos e instalaciones ubicadas fuera del
						 territorio nacional, y proporcionar a �sta la informaci�n que le requiera'
						)

		-- ARTICULO 25
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			25, 
			'Tercerizaci�n', 
			'Cuando se contraten servicios de terceros para el procesamiento de su informaci�n, las instituciones ser�n las responsables de cumplir con lo establecido en este reglamento.
			 Lo establecido en este art�culo, es sin perjuicio del cumplimiento de lo indicado en los art�culos 23 y 24 de este reglamento. En los contratos que se suscriban deber�n incluir, como m�nimo lo siguiente:'
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Que la Superintendencia de Bancos tendr� libre acceso a las instalaciones de los contratados, infraestructura de TI, sistemas de informaci�n y bases de datos, 
						 relacionadas con el servicio contratado por la instituci�n'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'b', 
						'Que el contratado tiene la obligaci�n de proporcionarle a la Superintendencia de Bancos, cuando �sta se lo requiera, toda la informaci�n y/o documentos relacionados
						 con las operaciones y servicios de tercerizaci�n prestados a la instituci�n por el contratado'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'c', 
						'Que el contratado guardar� la confidencialidad de las operaciones y servicios que realizare y dem�s informaci�n a que tenga acceso con motivo de su relaci�n con la instituci�n contratante'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'd', 
						'Que el contratado se compromete a cumplir con la instituci�n lo establecido en este reglamento, relativo a la infraestructura de TI, sistemas de informaci�n, bases de datos, servicios de TI,
						 seguridad de tecnolog�a de la informaci�n y continuidad de operaciones de tecnolog�a de la informaci�n'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'e', 
						'Acuerdos de niveles de servicio'
						)

	--Capitulo 7
	insert into Capitulos (idDocumento, noCapitulo, capitulo)
	values (@idDocumento, 7, 'DISPOSICIONES TRANSITORIAS Y FINALES')
		
	select @idCapitulo = max(idCapitulo) from Capitulos

			-- ARTICULO 26
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			26, 
			'Transitorio', 
			'Las instituciones que al momento del inicio de vigencia de este reglamento se encuentren operando, deber�n presentar a la Superintendencia de Bancos un plan de implementaci�n
			 aprobado por el Consejo, para ajustarse a las disposiciones de esta normativa, dentro de los seis (6) meses siguientes a la fecha en que cobre vigencia el mismo.
			 La ejecuci�n del plan indicado en el p�rrafo anterior, no deber� exceder de veinticuatro (24) meses contados a partir de vencido el plazo para la entrega de dicho plan.'
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Transitorio'
						)

			-- ARTICULO 27
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			27, 
			'Transitorio', 
			'Las instituciones deber�n enviar a la Superintendencia de Bancos el manual de administraci�n del riesgo tecnol�gico y el plan de continuidad de operaciones de TI,
			 dentro de los cinco (5) d�as siguientes de vencido el plazo para la ejecuci�n del plan indicado en el art�culo 26.'
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Transitorio'
						)

			-- ARTICULO 28
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			28, 
			'Env�o de informaci�n a la Superintendencia de Bancos', 
			'Las instituciones deber�n enviar a la Superintendencia de Bancos informaci�n relacionada con el riesgo tecnol�gico conforme a las instrucciones generales que el �rgano supervisor les indique.'
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Env�o de informaci�n a la Superintendencia de Bancos'
						)

			-- ARTICULO 29
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			29, 
			'Casos no previstos', 
			'Los casos no previstos en este reglamento ser�n resueltos por la Junta Monetaria, previo informe de la Superintendencia de Bancos.'
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Casos no previstos'
						)

--//////////////////////////////////////////////////////////////////////////////////////
-- DOCUMENTO 2
insert into Documentos (documento, descripcion) 
values ('Estado de Cumplimiento JM-4-2016', '')

select @idDocumento = max(idDocumento) from Documentos

	--CAPITULO 2
		insert into Capitulos (idDocumento, noCapitulo, capitulo)
		values (@idDocumento, 2, 'ORGANIZACI�N PARA LA ADMINISTRACI�N DEL RIESGO TECNOL�GICO')

		select @idCapitulo = max(idCapitulo) from Capitulos

		-- ARTICULO 3
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			3, 
			'Pol�ticas y procedimientos', 
			''
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Nivel de tolerancia al riesgo operacional para la instituci�n, en t�rminos de frecuencias y severidades'
						)

			    insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'b', 
						'Sistemas de informaci�n gerencial relacionados con el proceso de administraci�n del riesgo operacional'
						)

			    insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'c', 
						'Metodolog�as para identificar, medir, monitorear, controlar, prevenir y mitigar el riesgo operacional'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'd', 
						'Indicadores de riesgo operacional'
						)

		-- ARTICULO 4
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			4, 
			'Responsabilidad del Consejo de Administraci�n', 
			''
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Aprobar las pol�ticas, procedimientos y sistemas a que se refiere el art�culo anterior; asimismo, conocer y resolver sobre las propuestas de actualizaci�n y autorizar las modificaciones respectivas'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'b', 
						'Aprobar el manual para la administraci�n del riesgo operacional a que se refiere el art�culo 8 de este reglamento, as� como sus correspondientes modificaciones'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'c', 
						'Conocer anualmente y cuando la situaci�n lo amerite, los reportes sobre el nivel de cumplimiento de las pol�ticas y procedimientos aprobados para la administraci�n del riesgo operacional'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'd', 
						'Conocer anualmente y cuando la situaci�n lo amerite, los reportes que le remita el Comit� de Gesti�n de Riesgos sobre la exposici�n al riesgo operacional, los cambios sustanciales de tal exposici�n y 
						 el cumplimiento del nivel de tolerancia, as� como las medidas para su mitigaci�n y/o adecuada administraci�n'
						)


		-- ARTICULO 5
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			5, 
			'Responsabilidad del Comit� de Gesti�n de Riesgos', 
			''
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Proponer al Consejo las pol�ticas, procedimientos y sistemas para la administraci�n del riesgo operacional'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'b', 
						'Proponer al Consejo el manual para la administraci�n del riesgo operacional'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'c', 
						'Analizar las propuestas sobre actualizaci�n de las pol�ticas, procedimientos, plan estrat�gico de TI, plan de continuidad 
						 de operaciones de TI y su plan de pruebas, y proponer al Consejo las actualizaciones que procedan'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'd', 
						'Analizar las propuestas sobre actualizaci�n de pol�ticas, procedimientos y sistemas, as� como proponer al Consejo la actualizaci�n 
						 del manual de administraci�n del riesgo operacional, cuando proceda'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'e', 
						'Aprobar la estrategia para la implementaci�n de las pol�ticas, procedimientos y sistemas para la administraci�n del riesgo operacional y su adecuado cumplimiento'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'f', 
						'Analizar semestralmente y cuando la situaci�n lo amerite, los reportes que le remita la Unidad de Administraci�n de Riesgos sobre la exposici�n al riesgo operacional, 
						 los cambios sustanciales de tal exposici�n, el cumplimiento del nivel de tolerancia y las medidas para su mitigaci�n y/o adecuada administraci�n. Lo anterior deber� reportarse al 
						 Consejo anualmente y cuando la situaci�n lo amerite'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'g', 
						'Analizar semestralmente y cuando la situaci�n lo amerite, la informaci�n que le remita la Unidad de Administraci�n de Riesgos sobre el nivel de cumplimiento de las 
						 pol�ticas y procedimientos aprobados para la administraci�n del riesgo operacional, as� como evaluar las causas de los incumplimientos que hubieren e informar al Consejo 
						 sobre las medidas adoptadas con relaci�n a dichos , incumplimientos. Lo anterior deber� reportarse al Consejo anualmente y cuando la situaci�n lo amerite'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'h', 
						'Proponer al Consejo las medidas correctivas a adoptar en caso existan desviaciones con respecto al nivel de tolerancia al riesgo operacional'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'i', 
						'Otras que le asigne el Consejo'
						)

		-- ARTICULO 6
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			6, 
			'Funciones de la Unidad de Administraci�n de Riesgos', 
			''
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Proponer al Comit� las pol�ticas, procedimientos y sistemas para la administraci�n del riesgo operacional que incluyan metodolog�as para identificar, medir, 
						 monitorear, controlar, prevenir y mitigar dicho riesgo; para el efecto, la Unidad podr� requerir la colaboraci�n de las unidades administrativas 
						 de la instituci�n, en las �reas de su competencia'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'b', 
						'Revisar anualmente las pol�ticas, procedimientos y sistemas aprobados, as� como proponer su actualizaci�n al Comit�, cuando proceda'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'c', 
						'Monitorear la exposici�n al riesgo operacional y consolidar los reportes que le remitan  sobre dicho monitoreo'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'd', 
						'Reportar al Comit� semestralmente y cuando la situaci�n lo amerite, sobre la exposici�n al riesgo operacional, los cambios sustanciales de tal exposici�n, 
						 el cumplimiento del nivel de tolerancia y las actividades relevantes para su mitigaci�n y/o adecuada administraci�n'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'e', 
						'Verificar e informar al Comit�, semestralmente, sobre el nivel de cumplimiento de las pol�ticas y procedimientos aprobados para la administraci�n del riesgo 
						 operacional, as� como proponer al Comit� las medidas correctivas correspondientes'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'f', 
						'Identificar las causas de los incumplimientos a las pol�ticas y procedimientos aprobados, si los hubiere, incluyendo el nivel de tolerancia al riesgo operacional,
						 determinar si dichos incumplimientos se presentan en forma reiterada e informar sobre los resultados y medidas correctivas al Comit�, debiendo mantener registros hist�ricos sobre tales incumplimientos'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'g', 
						'Administrar la base de datos de eventos de riesgo operacional a que se refiere el art�culo 21 de este reglamento; y,'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'h', 
						'Otras que le asigne el Comit�'
						)

		-- ARTICULO 7
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			7, 
			'Responsabilidad de los gerentes', 
			''
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'El Gerente General, o quien haga sus veces, ser� responsable de implementar la administraci�n del riesgo operacional conforme a las disposiciones del Consejo, 
						 as� como asegurar que se cumpla con la capacitaci�n, las estrategias y los objetivos de la administraci�n del riesgo operacional'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'b', 
						'Los gerentes de las unidades de negocios y unidades operativas, o quienes hagan sus veces, deben cumplir con las pol�ticas y procedimientos aprobados para la administraci�n del riesgo operacional'
						)

		-- ARTICULO 8
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			8, 
			'Manual para la administraci�n del riesgo operacional', 
			''
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Las pol�ticas, procedimientos y sistemas a que se refiere el art�culo 3 de este reglamento deber�n constar por escrito en un manual para la administraci�n del riesgo operacional que ser� aprobado por el Consejo'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'b', 
						'El Consejo conocer� y resolver� sobre las propuestas de actualizaci�n del manual para la administraci�n del riesgo operacional y autorizar� las modificaciones al mismo, las que deber�n ser comunicadas a la 
						 Superintendencia de Bancos, dentro de los diez (10) d�as h�biles siguientes a su aprobaci�n'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'c', 
						'Las nuevas instituciones que se constituyan y aquellas a las que se les autorice su establecimiento o su funcionamiento deber�n remitir una copia del manual referido en este art�culo a la Superintendencia de Bancos 
						 antes del inicio de sus operaciones. Asimismo, las instituciones a las que se les autorice la incorporaci�n a un grupo financiero deber�n remitir dicho manual durante los treinta (30) d�as h�biles posteriores a su autorizaci�n. 
						 La Superintendencia de Bancos, a solicitud justificada de los interesados, podr� prorrogar el plazo indicado hasta por treinta (30) d�as adicionales, por una sola vez'
						)


	--CAPITULO 3
		insert into Capitulos (idDocumento, noCapitulo, capitulo)
		values (@idDocumento, 3, 'FACTORES DE RIESGO OPERACIONAL')
	
		select @idCapitulo = max(idCapitulo) from Capitulos

		-- ARTICULO 9
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			9, 
			'Factores de riesgo operacional', 
			''
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Las instituciones como parte de sus pol�ticas, procedimientos y sistemas para la administraci�n del riesgo operacional deben determinar los factores
						 de riesgo operacional a los cuales se encuentran, expuestas, considerando los relativos a recursos humanos, procesos internos, tecnolog�a de la informaci�n y factores externos'
						)

		-- ARTICULO 10
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			10, 
			'Recursos humanos', 
			''
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Las instituciones deber�n gestionar los eventos de riesgo operacional asociados a los recursos humanos, para lo cual deber�n contar con pol�ticas, procedimientos y sistemas que 
						 incluyan los perfiles de puestos y procedimientos de selecci�n, contrataci�n, inducci�n, capacitaci�n y monitoreo permanente de su personal'
						)

		-- ARTICULO 11
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			11, 
			'Procesos internos', 
			''
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Las instituciones deber�n gestionar los eventos de riesgo asociados a los procesos internos, para lo cual deber�n definir, documentar, estandarizar y actualizar los procesos necesarios
						 para la realizaci�n de sus operaciones y la prestaci�n de sus servicios'
						)

		-- ARTICULO 12
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			12, 
			'Tecnolog�a de la informaci�n', 
			''
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Las instituciones deber�n gestionar los eventos de riesgo asociados a la tecnolog�a de la informaci�n, relacionados con la interrupci�n, alteraci�n o falla de la infraestructura de tecnolog�a
						 de la informaci�n, sistemas de informaci�n, bases de datos y procesos de tecnolog�a de la informaci�n, conforme lo dispuesto en el Reglamento para la Administraci�n del Riesgo Tecnol�gico'
						)

		-- ARTICULO 13
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			13, 
			'Factores externos', 
			''
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Las instituciones deber�n gestionar su exposici�n a los eventos ajenos al control de la instituci�n, que pueden alterar el desarrollo de sus actividades, para lo cual deber�n tomar en consideraci�n, 
						 entre otros, las fallas en los servicios p�blicos, la ocurrencia de desastres naturales, atentados y actos delictivos, las fallas en servicios cr�ticos provistos por terceros y las contingencias legales'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'b', 
						'Con la finalidad de mitigar la comisi�n de atentados y actos delictivos en contra de la instituci�n, de sus empleados en el ejercicio de sus funciones o de sus usuarios cuando hagan uso de los 
						 servicios que brinda, las instituciones deber�n implementar las pol�ticas, los procedimientos y las medidas de mitigaci�n correspondientes, que permitan una adecuada administraci�n de la seguridad bancaria. 
						 Dichas pol�ticas y procedimientos deber�n estar contenidos en el manual a que se refiere el art�culo 8 de este reglamento'
						)

	--CAPITULO 4
		insert into Capitulos (idDocumento, noCapitulo, capitulo)
		values (@idDocumento, 4, 'ADMINISTRACI�N DEL RIESGO OPERACIONAL')
	
		select @idCapitulo = max(idCapitulo) from Capitulos

		-- ARTICULO 14
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			14, 
			'Proceso para la administraci�n del riesgo operacional', 
			''
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Para la adecuada administraci�n del riesgo operacional, las instituciones deber�n contar con un proceso integral que debe contener la identificaci�n, medici�n, monitoreo, control, prevenci�n y mitigaci�n'
						)

		-- ARTICULO 15
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			15, 
			'Identificaci�n', 
			''
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Para efectos de lo dispuesto en este reglamento, las instituciones deber�n establecer un proceso de identificaci�n de los eventos de riesgo operacional, agrup�ndolos en las categor�as y clasific�ndolos 
						 de acuerdo a las l�neas de negocio, conforme a las instrucciones generales que emita la Superintendencia de Bancos'
						)

		-- ARTICULO 16
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			16, 
			'Medici�n', 
			''
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Las instituciones deber�n implementar metodolog�as que les permitan estimar las p�rdidas en t�rminos de frecuencias y severidades para evaluar o medir los eventos de riesgo operacional'
						)

		-- ARTICULO 17
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			17, 
			'Monitoreo', 
			''
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Para llevar a cabo el seguimiento y control de los eventos de riesgo operacional, as� como del nivel de exposici�n al mismo, las instituciones deber�n desarrollar procesos de seguimiento 
						 peri�dico que permitan la r�pida detecci�n y correcci�n de las deficiencias; establecer indicadores de riesgo operacional; y, contar con sistemas de informaci�n que permitan la generaci�n 
						 de reportes en forma oportuna para apoyar la toma de decisiones'
						)

		-- ARTICULO 18
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			18, 
			'Control, prevenci�n y mitigaci�n', 
			''
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Las instituciones deber�n establecer mecanismos de control que permitan verificar el cumplimiento de las pol�ticas y procedimientos establecidos en este reglamento y prevenir la ocurrencia 
						 de eventos de riesgo operacional; as� como implementar medidas que busquen mitigar los eventos de riesgo identificados. Para la implementaci�n de dichas medidas, deber�n contar con controles 
						 auxiliares internos, en los cuales se describan las acciones a ejecutar, su plazo estimado y los responsables directos de cada acci�n'
						)

		-- ARTICULO 19
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			19, 
			'Contrataci�n de servicios de terceros', 
			''
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Criterios para determinar qu� actividades pueden ser contratadas'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'b', 
						'Lineamientos y condiciones para prevenir y, cuando esto no sea posible, gestionar los conflictos de inter�s que 
						 puedan surgir con los miembros del Consejo, gerentes, funcionarios y empleados de la instituci�n'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'c', 
						'Procedimientos para la debida diligencia en la selecci�n del proveedor'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'd', 
						'Lineamientos y procedimientos para la formalizaci�n, autorizaci�n y finalizaci�n de la contrataci�n, incluyendo la delimitaci�n 
						 de responsabilidades entre las partes, as� como la confidencialidad y seguridad de la informaci�n'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'e', 
						'Procedimientos para el seguimiento y control de la prestaci�n de los servicios'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'f', 
						'Evaluaci�n y monitoreo de los riesgos asociados con el acuerdo de contrataci�n y con la capacidad del proveedor de continuar prestando el servicio'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'g', 
						'Planes de contingencia ante posibles eventualidades derivadas del incumplimiento del proveedor'
						)

		-- ARTICULO 20
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			20, 
			'Plan de continuidad del negocio', 
			''
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'La identificaci�n de eventos que ponen en riesgo la continuidad del negocio, las actividades a realizar para superarlos, las alternativas de operaci�n, y el retorno a las actividades normales'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'b', 
						'La asignaci�n de roles y responsabilidades para la continuidad del negocio; as� como las acciones a ejecutar durante y una vez ocurrido el evento que ponga en riesgo la continuidad del negocio'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'c', 
						'Capacitaci�n del personal clave para activar el plan de continuidad de negocio'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'd', 
						'La realizaci�n de las pruebas necesarias para confirmar su eficacia y eficiencia'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'e', 
						'La divulgaci�n del plan a los miembros de la instituci�n que corresponda'
						)

		-- ARTICULO 21
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			21, 
			'Base de datos', 
			''
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'C�digo de identificaci�n del evento'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'b', 
						'Tipo de evento'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'c', 
						'Factor de riesgo'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'd', 
						'L�nea de negocio asociada'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'e', 
						'Descripci�n del evento'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'f', 
						'Proceso o �rea con la que guarda relaci�n el evento'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'g', 
						'Fecha de ocurrencia o de inicio del evento'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'h', 
						'Fecha de descubrimiento del evento'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'i', 
						'Fecha de registro contable del evento, cuando corresponda'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'j', 
						'Monto bruto de la p�rdida incurrida'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'k', 
						'Monto recuperado mediante coberturas contratadas'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'l', 
						'Monto total recuperado'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'm', 
						'Cuentas contables asociadas, cuando corresponda'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'n', 
						'Identificaci�n del riesgo a que est� asociado el evento'
						)

		-- ARTICULO 22
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			22, 
			'Env�o de informaci�n a la Superintendencia de Bancos', 
			''
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Las instituciones deber�n enviar a la Superintendencia de Bancos informaci�n sobre los eventos contenidos en la base de datos a 
						 que hace referencia el art�culo 21 de este reglamento, a m�s tardar el 31 de marzo de cada a�o, con informaci�n referida a diciembre
						 del a�o anterior, conforme a las instrucciones generales que emita el �rgano supervisor'
						)


	--CAPITULO 5
		insert into Capitulos (idDocumento, noCapitulo, capitulo)
		values (@idDocumento, 5, 'DISPOSICIONES TRANSITORIAS Y FINALES')
	
		select @idCapitulo = max(idCapitulo) from Capitulos

		-- ARTICULO 23
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			23, 
			'Plazos de implementaci�n', 
			''
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Las instituciones deber�n ajustarse a las disposiciones establecidas en este reglamento, con excepci�n de lo establecido en el art�culo 16, 
						 y enviar el manual para la administraci�n del riesgo operacional y el plan de continuidad del negocio, a que se refieren los art�culos 8 y 20 respectivamente, a m�s tardar el 31 de enero de 2017'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'b', 
						'Asimismo, a m�s tardar el 30 de junio de 2018, deber�n implementar las metodolog�as a que se refiere el art�culo 16 de este reglamento y enviar la informaci�n a que se refiere el art�culo 21 correspondiente al a�o 2017'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'c', 
						'La Superintendencia de Bancos, a solicitud justificada de los interesados, podr� prorrogar cada uno de los plazos indicados hasta por doce (12) meses, por una sola vez'
						)

		-- ARTICULO 24
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			23, 
			'Casos no previstos', 
			''
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Los casos no previstos en este reglamento ser�n resueltos por la Junta Monetaria, previo informe de la Superintendencia de Bancos'
						)




-------------------------------  ESTADOS  -----------------------------------------
insert into Estados (estado, orden) values ('? Desconocido', 0),
											('Inexistente', 1),
											('Inicial', 2),
											('Repetible', 3),
											('Definido', 4),
											('Administrado', 5),
											('Optimizado', 6),
											('No aplicable', 7)
