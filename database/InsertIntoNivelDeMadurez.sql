use NivelDeMadurez;
go

declare @idDocumento int, @idCapitulo int, @idArticulo int, @idRequerimiento int, @idPregunta int


-- DOCUMENTO 1
insert into Documentos (documento, descripcion) 
values ('Estado de Cumplimiento JM-102-2011', '')

select @idDocumento = max(idDocumento) from Documentos
	
	-- CAPITULO 2
	insert into Capitulos (idDocumento, noCapitulo, capitulo)
	values (@idDocumento, 2, 'ORGANIZACIÓN PARA LA ADMINISTRACIÓN DEL RIESGO TECNOLÓGICO')
	
	select @idCapitulo = max(idCapitulo) from Capitulos
		
		-- ARTICULO 3
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			3, 
			'Políticas y procedimientos', 
			'Las instituciones deberán establecer e implementar políticas y procedimientos que les 
			 permitan realizar permanentemente una adecuada administración del riesgo tecnológico, de la institución, 
			 considerando la naturaleza, complejidad y volumen de sus operaciones.
			 Dichas políticas y procedimientos deberán comprender, como mínimo, las metodologías, herramientas o 
			 modelos de medición del riesgo tecnológico, así como los aspectos que se detallan en los capítulos 
			 del III al VI de este reglamento y agruparse en los temas siguientes:'
			)

		select @idArticulo = max(idArticulo) from Articulos
			
			-- REQUERIMIENTOS
			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'a', 'Infraestructura de TI, sistemas de información, bases de datos y servicios de TI')

			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'b', 'Seguridad de tecnología de la información')

			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'c', 'Continuidad de operaciones de tecnología de la información')

			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'd', 'Procesamiento de información y tercerización')

		-- ARTICULO 4
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			4, 
			'Responsabilidad del Consejo de Administración', 
			'El Consejo de Administración o quien haga sus veces, en lo sucesivo el Consejo, sin perjuicio de las 
			 responsabilidades que le asignan otras disposiciones legales aplicables, es el responsable de velar 
			 porque se implemente e instruir para que se mantenga en adecuado funcionamiento y ejecución la administración 
			 del riesgo tecnológico. Para cumplir con lo indicado en el párrafo anterior el Consejo como mínimo deberá:'
			)

		select @idArticulo = max(idArticulo) from Articulos
			
			-- REQUERIMIENTOS

			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'a', 'Aprobar las políticas y procedimientos a que se refiere el artículo anterior, el plan estratégico de TI, el plan de continuidad de operaciones de TI, así como conocer y resolver sobre las propuestas de actualización y autorizar las modificaciones respectivas')
			
			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'b', 'Conocer los reportes que le remita el Comité de Gestión de Riesgos sobre la exposición al riesgo tecnológico, los cambios sustanciales de tal exposición y su evolución en el tiempo, así como las medidas correctivas adoptadas')
			
			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'c', 'Conocer los reportes sobre el nivel de cumplimiento de las políticas y procedimientos aprobados, así como las propuestas sobre acciones a adoptar con relación a los incumplimientos. Asimismo, en caso de incumplimiento el Consejo deberá adoptar las medidas que correspondan, sin perjuicio de las sanciones legales que el caso amerite.')


		-- ARTICULO 5
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			5, 
			'Comité de Gestión de Riesgos', 
			'El Comité de Gestión de Riesgos, en lo sucesivo el Comité, estará integrado como mínimo por un 
			 miembro del Consejo y por las autoridades y funcionarios que dicho Consejo designe. El Comité estará 
			 a cargo de la dirección de la administración del riesgo tecnológico, entre otros riesgos, para lo cual 
			 deberá encargarse de la implementación, adecuado funcionamiento y ejecución de las políticas y procedimientos 
			 aprobados para dicho propósito y tendrá las funciones siguientes:'
			)
		select @idArticulo = max(idArticulo) from Articulos
			
			-- REQUERIMIENTOS

			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'a', 'Proponer al Consejo, para su aprobación, las políticas y procedimientos para la administración del riesgo tecnológico, así como el plan estratégico de TI y el plan de continuidad de operaciones de TI')
			
			select @idRequerimiento = max(idRequerimiento) from Requerimientos
				
				-- PREGUNTAS
				insert into Preguntas (idRequerimiento, orden, pregunta) values (@idRequerimiento, 1, 'Documentación obligatoria ¿Existe el documento?')
				
			
			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'b', 'Proponer al Consejo el manual de administración del riesgo tecnológico y sus actualizaciones')

			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'c', 'Analizar las propuestas sobre actualización de las políticas, procedimientos, plan estratégico de TI, plan de continuidad de operaciones de TI y su plan de pruebas, y proponer al Consejo las actualizaciones que procedan')

			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'd', 'Definir la estrategia para la implementación de las políticas y procedimientos aprobados para la administración del riesgo tecnológico y su adecuado cumplimiento')

			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'e', 'Revisar, al menos anualmente, las políticas y procedimientos y proponer la actualización, cuando proceda')

			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'f', 'Analizar los reportes que le remita la Unidad de Administración de Riesgos, a que se refiere el artículo 6 de este reglamento, sobre la exposición del riesgo tecnológico de la institución, los cambios sustanciales de tal exposición y su evolución en el tiempo, así como adoptar las medidas correctivas correspondientes')

			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'g', 'Analizar la información que le remita la Unidad de Administración de Riesgos sobre el cumplimiento de las políticas y procedimientos aprobados, así como evaluar las causas de los incumplimientos que hubieren, y proponer al Consejo acciones a adoptar con relación a dichos incumplimientos')

			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'h', 'Reportar al Consejo, al menos semestralmente y cuando la situación lo amerite, sobre la exposición al riesgo tecnológico de la institución, los cambios sustanciales de tal exposición, su evolución en el tiempo, las principales medidas correctivas adoptadas y el cumplimiento de las políticas y procedimientos aprobados')

			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'i', 'Otras funciones relacionadas que le asigne el Consejo')

		-- ARTICULO 6
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			6, 
			'Unidad de Administración de Riesgos', 
			'La Unidad de Administración de Riesgos, en lo sucesivo la Unidad, apoyará al Comité en la administración 
			 del riesgo tecnológico, para lo cual tendrá las funciones siguientes:'
			)
		select @idArticulo = max(idArticulo) from Articulos
			
			-- REQUERIMIENTOS

			insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
					@idArticulo, 
					'a', 
					'Proponer al Comité políticas y procedimientos para la administración del riesgo tecnológico, así como el plan estratégico de TI, el plan de continuidad de operaciones de TI a que se refiere el artículo 20 de este reglamento y su plan de pruebas descrito en el artículo 21'
				)

			insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
					@idArticulo, 
					'b', 
					'Revisar, al menos anualmente y cuando la situación lo amerite, las políticas, los procedimientos, el plan estratégico de TI, y para los procesos críticos, el plan de continuidad de operaciones de TI y su plan de pruebas, y proponer su actualización al Comité, atendiendo los cambios en la estrategia o situación de la institución o cuando lo requiera la normativa'
				)

			insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
					@idArticulo, 
					'c', 
					'Monitorear la exposición al riesgo tecnológico y mantener registros históricos sobre dicho monitoreo, así como medir el riesgo tecnológico'
				)

			insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
					@idArticulo, 
					'd', 
					'Analizar el riesgo tecnológico inherente de las innovaciones en TI que se implementen en la institución y el que se derive de los nuevos productos y servicios propuestos por las unidades de negocios'
				)

			insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
					@idArticulo, 
					'e', 
					'Reportar al Comité, al menos trimestralmente y cuando la situación lo amerite, sobre la exposición al riesgo tecnológico de la institución, los cambios sustanciales de tal exposición y su evolución en el tiempo, así como proponer al Comité las medidas correctivas correspondientes'
				)

			insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
					@idArticulo, 
					'f', 
					'Verificar e informar al Comité, al menos trimestralmente y cuando la situación lo amerite, sobre el nivel de cumplimiento de las políticas y procedimientos aprobados'
				)

			insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
					@idArticulo, 
					'g', 
					'Identificar las causas del incumplimiento de las políticas y procedimientos aprobados, determinar si los mismos se presentan en forma reiterada e incluir sus resultados en el informe indicado en el inciso f) anterior y proponer las medidas correctivas, debiendo mantener registros históricos sobre tales incumplimientos'
				)

			insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
					@idArticulo, 
					'h', 
					'Otras funciones relacionadas que le asigne el Comité'
				)

		-- ARTICULO 7
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			7, 
			'Plan estratégico de TI', 
			'Las instituciones, como parte de su plan estratégico general, deberán tener un plan estratégico de TI 
			alineado con la estrategia de negocios, para gestionar la infraestructura de TI, los sistemas de información, 
			la base de datos y al recurso humano de TI. El plan estratégico de TI debe incluir, como mínimo, los aspectos siguientes:'
		)

		select @idArticulo = max(idArticulo) from Articulos
			
			-- REQUERIMIENTOS

			insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
					@idArticulo, 
					'a', 
					'Objetivos de TI alineados con la estrategia de negocios en función del análisis e impacto de factores internos y externos en esta materia, tales como oportunidades, limitaciones y desempeño de la infraestructura de TI, los sistemas de información, la base de datos y el recurso humano relacionado'
				)

			insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
					@idArticulo, 
					'b', 
					'Estrategias de TI, para la consecución de los objetivos'
				)

			insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
					@idArticulo, 
					'c', 
					'Proyectos y actividades específicas'
				)

			insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
					@idArticulo, 
					'd', 
					'El presupuesto financiero para su ejecución'
				)

		-- ARTICULO 8
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			8, 
			'Organización de TI', 
			'Las instituciones deberán contar con una estructura organizacional de TI que esté alineada con el plan 
			 estratégico, asegurándose que el recurso humano de TI tenga las capacidades necesarias mediante programas 
			 de entrenamiento y capacitación, una adecuada separación de funciones, delegación de autoridad, definición 
			 de roles y asignación de responsabilidades, todo esto soportado con un marco de trabajo estructurado en procesos, 
			 los cuales deberán estar debidamente identificados.'
			)

		select @idArticulo = max(idArticulo) from Articulos
			
			-- REQUERIMIENTOS

			insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
					@idArticulo, 
					'a', 
					'Organización de TI'
				)

		-- ARTICULO 9
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			9, 
			'Manual de administración del riesgo tecnológico', 
			'Las políticas y procedimientos a que se refiere el artículo 3 de este reglamento deberán constar por 
			 escrito en un manual de administración del riesgo tecnológico que será aprobado por el Consejo.
			 El Consejo conocerá y resolverá sobre las propuestas de actualización del manual de administración del 
			 riesgo tecnológico y autorizará las modificaciones al mismo, las que deberán ser comunicadas a la Superintendencia 
			 de Bancos, dentro de los diez (10) días hábiles siguientes a su aprobación.
		 	 Las nuevas instituciones que se constituyan o se autorice su funcionamiento deberán remitir una copia del manual 
		 	a que se refiere este artículo a la Superintendencia de Bancos antes del inicio de sus operaciones.'
			)

		select @idArticulo = max(idArticulo) from Articulos
			
			-- REQUERIMIENTOS

			insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
					@idArticulo, 
					'a', 
					'Manual de administración del riesgo tecnológico'
				)

	-- CAPITULO 3
	insert into Capitulos (idDocumento, noCapitulo, capitulo)
	values (@idDocumento, 3, 'INFRAESTRUCTURA DE TI, SISTEMAS DE INFORMACIÓN, BASES DE DATOS Y SERVICIOS DE TI')
	
	select @idCapitulo = max(idCapitulo) from Capitulos
		
		-- ARTICULO 10
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			10, 
			'Esquema de la información del negocio', 
			'Las instituciones deberán contar con un esquema actualizado de la información del negocio que represente la interrelación entre la infraestructura de TI, los sistemas de información, los servicios de TI y los procesos de las principales líneas de negocio.'
		)
		
		select @idArticulo = max(idArticulo) from Articulos
			
			-- REQUERIMIENTOS
			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'a', 'Las instituciones deberán contar con un esquema actualizado de la información del negocio que represente la interrelación entre la infraestructura de TI, los sistemas de información, los servicios de TI y los procesos de las principales líneas de negocio.')


		-- ARTICULO 11
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			11, 
			'Inventarios de infraestructura de TI, sistemas de información y de bases de datos.', 
			'Las instituciones deberán mantener inventarios actualizados de su infraestructura de TI, de sus sistemas de información y de sus bases de datos que incluyan, como mínimo, lo siguiente:'
		)

		select @idArticulo = max(idArticulo) from Articulos

			-- REQUERIMIENTOS
			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'a', 'De infraestructura de TI')

			select @idRequerimiento = max(idRequerimiento) from Requerimientos

				-- PREGUNTAS
				insert into Preguntas (idRequerimiento, orden, pregunta)
				values (@idRequerimiento, 1, '1. Especificaciones técnicas de sus elementos:')
				
				select @idPregunta = max(idPregunta) from Preguntas
					
					-- INCISOS
					insert into Incisos (idPregunta, orden, inciso)
					values (@idPregunta, 1, 'i. Tipo;')
					insert into Incisos (idPregunta, orden, inciso)
					values (@idPregunta, 2, 'ii. Nombre;')
					insert into Incisos (idPregunta, orden, inciso)
					values (@idPregunta, 3, 'iii. Función; y,')
					insert into Incisos (idPregunta, orden, inciso)
					values (@idPregunta, 4, 'iv. Identificar si el mantenimiento es propio o realizado por terceros, en este último caso deberá identificarse al proveedor.')

				insert into Preguntas (idRequerimiento, orden, pregunta)
				values (@idRequerimiento, 2, '2. Ubicación física de sus elementos.')

			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'b', 'De sistemas de información')
			select @idRequerimiento = max(idRequerimiento) from Requerimientos
				
				-- PREGUNTAS
				insert into Preguntas (idRequerimiento, orden, pregunta)
				values (@idRequerimiento, 1, 'De sistemas de información: 1. Características de los sistemas de información:')
				
				select @idPregunta = max(idPregunta) from Preguntas

					-- INCISOS
					insert into Incisos (idPregunta, orden, inciso)
					values (@idPregunta, 1, 'i. Nombre;')
					insert into Incisos (idPregunta, orden, inciso)
					values (@idPregunta, 2, 'ii. Función;')
					insert into Incisos (idPregunta, orden, inciso)
					values (@idPregunta, 3, 'iii. Lenguaje de programación;')
					insert into Incisos (idPregunta, orden, inciso)
					values (@idPregunta, 4, 'iv. Versión;')
					insert into Incisos (idPregunta, orden, inciso)
					values (@idPregunta, 5, 'v. Estructura del sistema y las relaciones entre sus componentes;')
					insert into Incisos (idPregunta, orden, inciso)
					values (@idPregunta, 6, 'vi. Nombre y versión de los manejadores de bases de datos con las cuales interactúan;')
					insert into Incisos (idPregunta, orden, inciso)
					values (@idPregunta, 7, 'vii. Nombre de las bases de datos con las cuales interactúan;')
					insert into Incisos (idPregunta, orden, inciso)
					values (@idPregunta, 8, 'viii. Identificar si es desarrollo propio o realizado por terceros, en este último caso deberá identificarse al proveedor; y,')
					insert into Incisos (idPregunta, orden, inciso)
					values (@idPregunta, 9, 'ix. Identificar si el mantenimiento es propio o realizado por terceros, en este último caso deberá identificarse al proveedor.')

				insert into Preguntas (idRequerimiento, orden, pregunta)
				values (@idRequerimiento, 2, 'De sistemas de información: 2. Documentación técnica; y,')

				insert into Preguntas (idRequerimiento, orden, pregunta)
				values (@idRequerimiento, 3, 'De sistemas de información: 3. Documentación para el usuario final.')
			
			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'c', 'De bases de datos')
			select @idRequerimiento = max(idRequerimiento) from Requerimientos
				
				-- PREGUNTAS
				insert into Preguntas (idRequerimiento, orden, pregunta)
				values 
					(@idRequerimiento, 1, '1. Nombre;'),
					(@idRequerimiento, 2, '2. Descripción general de la información que contiene;'),
					(@idRequerimiento, 3, '3. Manejador de base de datos o sistema de gestión de archivos, y su versión;'),
					(@idRequerimiento, 4, '4. Nombre de los servidores en los que reside;'),
					(@idRequerimiento, 5, '5. Diccionario de datos;'),
					(@idRequerimiento, 6, '6. Diagramas de relación; y,'),
					(@idRequerimiento, 7, '7. Nombre del administrador de la base de datos.')

		-- ARTICULO 12
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			12, 
			'Administrador de base de datos', 
			'Las instituciones deberán designar uno o más administradores de base de datos para gestionar los controles de accesos, la integridad, disponibilidad y confidencialidad de los datos, así como los procesos de creación, actualización o eliminación de estructuras en las bases de datos, entre otros.'
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
			'Monitoreo de la infraestructura de TI, sistemas de información y bases de datos', 
			'Las instituciones deberán realizar evaluaciones periódicas de la capacidad y desempeño de la infraestructura de TI, de los sistemas de información y de las bases de datos, con el objeto de determinar necesidades de ampliación de capacidades o actualizaciones. Las instituciones deberán documentar y llevar registro de las evaluaciones periódicas a que se refiere este artículo y realizar análisis de tendencias para determinar capacidades futuras.'
		)

		select @idArticulo = max(idArticulo) from Articulos
			
			-- REQUERIMIENTOS
			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'a', 'Monitoreo de la infraestructura de TI, sistemas de información y bases de datos')

		-- ARTICULO 14
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			14, 
			'Adquisición, mantenimiento e implementación de infraestructura de TI, sistemas de información y bases de datos', 
			'Las instituciones deberán contar con procesos documentados y planes operativos para la adquisición, mantenimiento e implementación de la infraestructura de TI, los sistemas de información y las bases de datos. Dichos procesos deberán incluir, como mínimo, los aspectos siguientes:'
		)

		select @idArticulo = max(idArticulo) from Articulos
			
			-- REQUERIMIENTOS
			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'a', 'En lo referente a adquisición y mantenimiento')

			select @idRequerimiento = max(idRequerimiento) from Requerimientos
			
				-- PREGUNTAS
				insert into Preguntas (idRequerimiento, orden, pregunta)
				values (@idRequerimiento, 1, '1. Selección de proveedores, considerando factibilidad tecnológica y económica; y,'),
						(@idRequerimiento, 2, '2. Contratación, considerando la suscripción y ejecución.')

			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'b', 'En lo referente a implementación')

			select @idRequerimiento = max(idRequerimiento) from Requerimientos

				-- PREGUNTAS
				insert into Preguntas (idRequerimiento, orden, pregunta)
				values (@idRequerimiento, 1, '1. Realización de pruebas; y,'),
						(@idRequerimiento, 2, '2. Registro y monitoreo de la implementación.')


		-- ARTICULO 15
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			15, 
			'Gestión de servicios de TI', 
			'Las instituciones deberán realizar una adecuada gestión de los servicios de TI de acuerdo con las prioridades del negocio estableciendo, como mínimo, los aspectos siguientes:'
		)

		select @idArticulo = max(idArticulo) from Articulos

			-- REQUERIMIENTOS
			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'a', 'Un catálogo que comprenda la definición de cada uno de los servicios de TI.')

			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'b', 'Acuerdos de niveles de servicio de TI establecidos entre las áreas del negocio y las áreas de TI.')

			select @idRequerimiento = max(idRequerimiento) from Requerimientos

				-- PREGUNTAS
				insert into Preguntas (idRequerimiento, orden, pregunta)
				values (@idRequerimiento, 1, 'Dichos acuerdos deben comprender: 1. Los compromisos de las áreas de negocios;'),
						(@idRequerimiento, 2, '2. Los compromisos de las áreas de TI;'),
						(@idRequerimiento, 3, '3. Los requerimientos de soporte para el servicio de TI;'),
						(@idRequerimiento, 4, '4. Las condiciones del servicio de TI; y,'),
						(@idRequerimiento, 5, '5. El registro, monitoreo y actualización para la mejora de los servicios de TI.')

			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'c', 'Procesos de gestión de incidentes y de problemas')

			select @idRequerimiento = max(idRequerimiento) from Requerimientos

				-- PREGUNTAS
				insert into Preguntas (idRequerimiento, orden, pregunta)
				values (@idRequerimiento, 1, 'Los cuales deben comprender: 1. La clasificación, registro, atención, análisis de tendencias y monitoreo de los incidentes presentados por los usuarios;'),
						(@idRequerimiento, 2, '2. El escalamiento de incidentes para su atención y resolución, cuando aplique; y,'),
						(@idRequerimiento, 3, '3. La identificación, análisis, registro y monitoreo de la causa raíz de los problemas y su posterior resolución.')

			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'd', 'Procesos de gestión de cambios en infraestructura de TI, sistemas de información y bases de datos')

			select @idRequerimiento = max(idRequerimiento) from Requerimientos

				-- PREGUNTAS
				insert into Preguntas (idRequerimiento, orden, pregunta)
				values (@idRequerimiento, 1, 'Los cuales deben comprender: 1. La evaluación del impacto, priorización y autorización del cambio;'),
						(@idRequerimiento, 2, '2. Los cambios de emergencia; y,'),
						(@idRequerimiento, 3, '3. Realización de pruebas, registro y monitoreo del cambio.')

		-- ARTICULO 16
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			16, 
			'Ciclo de vida de los sistemas de información', 
			'Las instituciones deberán implementar metodologías adecuadamente documentadas para el análisis, diseño, desarrollo, pruebas, puesta en producción, mantenimiento, control de versiones y control de calidad de los sistemas de información. Las actividades de desarrollo y producción deberán realizarse en ambientes distintos.'
		)

		select @idArticulo = max(idArticulo) from Articulos

			-- REQUERIMIENTOS 
			insert into Requerimientos (idArticulo, noInciso, inciso)
			values (@idArticulo, 'a', 'Ciclo de vida de los sistemas de información')

/****************************************************************/
	--Capitulo 4
	insert into Capitulos (idDocumento, noCapitulo, capitulo)
	values (@idDocumento, 4, 'SEGURIDAD DE TECNOLOGÍA DE LA INFORMACIÓN')

	select @idCapitulo = max(idCapitulo) from Capitulos

		-- ARTICULO 17
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			17, 
			'Gestión de la seguridad de la información', 
			'Las instituciones deberán gestionar la seguridad de su información con el objeto de garantizar la confidencialidad, integridad y disponibilidad de los datos, así como
			 mitigar los riesgos de pérdida, extracción indebida y corrupción de la información, debiendo considerar, como mínimo, los aspectos siguientes:'
			)
		
		select @idArticulo = max(idArticulo) from Articulos

				--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
						values (
							@idArticulo, 
							'a', 
							'Identificación y clasificación de la información de acuerdo a criterios de sensibilidad y criticidad'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
						values (
							@idArticulo, 
							'b', 
							'Roles y responsabilidades para la gestión de la seguridad de la información'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
						values (
							@idArticulo, 
							'c', 
							'Monitoreo de la seguridad de la información'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
						values (
							@idArticulo, 
							'd', 
							'Seguridad física que incluya controles y medidas de prevención para resguardar adecuadamente la infraestructura de TI de acuerdo a la importancia definida
							por la institución conforme al riesgo a que esté expuesta'
						)

				select @idRequerimiento = max(idRequerimiento) from Requerimientos
				
						--Preguntas
						insert into Preguntas (idRequerimiento, orden, pregunta)
						values (@idRequerimiento, 1, 'Deben considerarse:')
				
						select @idPregunta = max(idPregunta) from Preguntas

								--Incisos
									insert into Incisos (idPregunta, orden, inciso)
									values (@idPregunta, 1, '1. Ubicación física y sus controles de acceso;')
									insert into Incisos (idPregunta, orden, inciso)
									values (@idPregunta, 2, '2. Acondicionamiento del espacio físico que considere factores tales como temperatura, humedad y prevención de incendios;')
									insert into Incisos (idPregunta, orden, inciso)
									values (@idPregunta, 3, '3. Vigilancia, que incluya factores tales como personal de seguridad, sistemas de video y sensores;')
									insert into Incisos (idPregunta, orden, inciso)
									values (@idPregunta, 4, '4. Suministro ininterrumpido de energía eléctrica; y,')
									insert into Incisos (idPregunta, orden, inciso)
									values (@idPregunta, 5, '5. Adecuado manejo del cableado de red y energía eléctrica.')

				
				  insert into Requerimientos (idArticulo, noInciso, inciso)
				  values (
					@idArticulo, 
					'e', 
					'Seguridad lógica que incluya controles y medidas de prevención para resguardar la integridad y seguridad de los sistemas de información y de los datos'
					)

				  select @idRequerimiento = max(idRequerimiento) from Requerimientos

						--Preguntas
						insert into Preguntas (idRequerimiento, orden, pregunta)
						values (@idRequerimiento, 1, 'Deben considerarse:')
				
						select @idPregunta = max(idPregunta) from Preguntas

								--Incisos
									insert into Incisos (idPregunta, orden, inciso)
									values (@idPregunta, 1, '1. Administración de los permisos a los sistemas de información, datos y elementos de la infraestructura de TI,
															que incluya registro y bitácoras del proceso y revisiones periódicas de los permisos;')
									insert into Incisos (idPregunta, orden, inciso)
									values (@idPregunta, 2, '2. Revisión del uso de permisos para detectar actividades no autorizadas;')
									insert into Incisos (idPregunta, orden, inciso)
									values (@idPregunta, 3, '3. Bitácoras de las transacciones realizadas en los sistemas de información y críticos; y,')
									insert into Incisos (idPregunta, orden, inciso)
									values (@idPregunta, 4, '4. Pruebas periódicas para detectar vulnerabilidades en la infraestructura de TI, los sistemas de información y las bases de datos.')
		-- ARTICULO 18
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			18, 
			'Copias de respaldo', 
			'Las instituciones deberán tener copias de la información de la infraestructura de TI, sistemas de información y bases de datos, para lo cual deberán considerar, como mínimo, los aspectos siguientes:'
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Información a respaldar, periodicidad y validación de las copias de respaldo'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'b', 
						'Procedimientos de restauración de las copias de respaldo'
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
						'Ubicación de las copias de respaldo de la documentación de los procedimientos de restauración'
						)

	-- ARTICULO 19
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			19, 
			'Operaciones y servicios financieros a través de canales electrónicos', 
			'Las instituciones que realicen operaciones y presten servicios financieros a través de canales electrónicos deberán implementar, como mínimo, lo siguiente:'
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Mecanismos para la protección y control de la infraestructura de TI, los sistemas de nformación y las bases de datos'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'b', 
						'Medidas de seguridad en el intercambio de información a través de los canales electrónicos. Cualquier intercambio de información sensible debe estar respaldado
						por un certificado digital, cifrado de datos y otro mecanismo que permita garantizar la transferencia de información'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'c', 
						'Programas de educación y divulgación de información para clientes'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'd', 
						'Registro y bitácora de las transacciones efectuadas'
						)

	--Capitulo 5
	insert into Capitulos (idDocumento, noCapitulo, capitulo)
	values (@idDocumento, 5, 'CONTINUIDAD DE OPERACIONES DE TECNOLOGÍA DE LA INFORMACIÓN')

	select @idCapitulo = max(idCapitulo) from Capitulos

		--ARTICULO 20
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			20, 
			'Plan de continuidad de operaciones de TI.', 
			'Las instituciones deberán contar con un plan de continuidad de operaciones de TI, que esté alineado a las necesidades de la institución, para recuperar los procesos críticos de las principales líneas de negocio soportados por TI, así como la información asociada en caso de una interrupción. 
			 Las nuevas instituciones que se constituyan o se autorice su funcionamiento deberán remitir una copia del plan de continuidad de operaciones de TI a que se refiere este artículo a la Superintendencia de Bancos antes del inicio de sus operaciones.
			 Las modificaciones al plan de continuidad de operaciones de TI deberán ser comunicadas a la Superintendencia de Bancos dentro de los diez (10) días hábiles siguientes a su aprobación.
			 El plan de continuidad de operaciones de TI deberá incluir, como mínimo, los aspectos siguientes:'
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
							'Identificación de los procesos críticos de las principales líneas de negocio'
								)

				insert into Requerimientos (idArticulo, noInciso, inciso)
						values (
							@idArticulo, 
							'c', 
							'Identificación de los procesos de TI que son necesarios para soportar los procesos identificados en el inciso b) anterior'
								)

				insert into Requerimientos (idArticulo, noInciso, inciso)
						values (
							@idArticulo, 
							'd', 
							'Procedimientos y canales de comunicación'
								)

				insert into Requerimientos (idArticulo, noInciso, inciso)
						values (
							@idArticulo, 
							'e', 
							'Procedimientos de recuperación y restaruación de operaciones y procesos críticos'
								)

				insert into Requerimientos (idArticulo, noInciso, inciso)
						values (
							@idArticulo, 
							'f', 
							'Identificación y descripción de responsabilidades del personal clave para la continuidad de operaciones de TI y listado de proveedores'
								)

				insert into Requerimientos (idArticulo, noInciso, inciso)
						values (
							@idArticulo, 
							'g', 
							'Recursos necesarios para la recuperación'
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
							'Identificación de factores de dependencia interna y externa de la institución, tales como proveedores, personal de la entidad u otros, 
							y las acciones para mitigar el riesgo de dicha dependencia'
								)

		--ARTICULO 21
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			21, 
			'Pruebas al plan de continuidad de operaciones de TI', 
			'Las instituciones deberán elaborar como parte del plan de continuidad de TI un plan de pruebas que incluya, como mínimo: alcance, escenarios y periodicidad. Los resultados de las pruebas realizadas deberán documentarse y, cuando corresponda,
		 	 adecuar el plan de continuidad de operaciones de TI en función de los resultados obtenidos.'
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
			'Capacitación del personal clave para la continuidad de operaciones de TI', 
			'Las instituciones deberán mantener capacitado al personal clave, a que se refiere el inciso f) del artículo 20 de este reglamento,
			 para activar o probar el plan de continuidad de operaciones de TI y sus modificacciones.'
				)
		
		select @idArticulo = max(idArticulo) from Articulos

		--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
						values (
							@idArticulo, 
							'a', 
							'Capacitación del personal clave para la continuidad de operaciones de TI'
								)

		--ARTICULO 23
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			23, 
			'Centro de cómputo alterno', 
			'Las instituciones deberán contar con un centro de cómputo alterno con las características físicas y lógicas necesarias para dar continuidad a las operaciones y los procesos 
			 críticos de negocios, cumpliendo con el Reglamento para la Administración del Riesgo Tecnológico JM-102-2011. Requisitos establecidos en este reglamento referentes a seguridad
			 de tecnología de la información, infraestructura de TI, sistemas de información y bases de datos. El centro de cómputo alterno deberá estar en una buena ubicación distinta
			 del centro de cómputo principal, de tal forma que no se vean expuestos a un mismo nivel de riesgo ante la ocurrencia de un mismo desastre. Se entenderá por desastre todo evento
		     que interrumpa las operaciones normales de un negocio.
		     En ese caso el centro de cómputo alterno esté ubicado fuera del territorio nacional, las instituciones deberán permitir a la Superintendencia de Bancos el libre acceso a su 
		     infraestructura de TI, sistemas de información y bases de datos, y proporcionar a ésta la información que les requiera.'
				)
		
		select @idArticulo = max(idArticulo) from Articulos

		--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
						values (
							@idArticulo, 
							'a', 
							'Centro de cómputo alterno'
								)

	--Capitulo 6
	insert into Capitulos (idDocumento, noCapitulo, capitulo)
	values (@idDocumento, 6, 'PROCESAMIENTO DE INFORMACIÓN Y TERCERIZACIÓN')

	select @idCapitulo = max(idCapitulo) from Capitulos

			-- ARTICULO 24
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			24, 
			'Procesamiento de la información', 
			'Las instituciones podrán procesar su información dentro o fuera del territorio nacional debiendo contar para el efecto con la infraestructura de TI, sistemas de información, bases de datos y
			 personal técnico capacitado con el propósito de asegurar la disponibilidad, integridad, confidencialidad y accesibilidad de la información. Asimismo las instituciones deberán contar con la 
			 autorización previa de la Superintendencia de Bancos para cambiar el sitio donde se procesa la información hacia otro país.
			 En el caso de procesamiento fuera del territorio nacional, previamente deberán contar con autorización de la Superintendencia de Bancos y cumplir con los requisitos siguientes:'
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Contar con un centro de cómputo alterno, conforme lo establecido con el artículo anterior, ubicado en el territorio nacional'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'b', 
						'Disponer de personal técnico y uno o más administradores de bases de datos, en el territorio nacional, capacitados para operar en el centro de cómputo alterno'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'c', 
						'Replicación en el tiempo real hacia servidores locales de su información procesada fuera del territorio nacional'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'd', 
						'Permitir a la Superintendencia de Bancos el libre acceso a su infraestructura de TI, sistemas de información, bases de datos e instalaciones ubicadas fuera del
						 territorio nacional, y proporcionar a ésta la información que le requiera'
						)

		-- ARTICULO 25
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			25, 
			'Tercerización', 
			'Cuando se contraten servicios de terceros para el procesamiento de su información, las instituciones serán las responsables de cumplir con lo establecido en este reglamento.
			 Lo establecido en este artículo, es sin perjuicio del cumplimiento de lo indicado en los artículos 23 y 24 de este reglamento. En los contratos que se suscriban deberán incluir, como mínimo lo siguiente:'
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Que la Superintendencia de Bancos tendrá libre acceso a las instalaciones de los contratados, infraestructura de TI, sistemas de información y bases de datos, 
						 relacionadas con el servicio contratado por la institución'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'b', 
						'Que el contratado tiene la obligación de proporcionarle a la Superintendencia de Bancos, cuando ésta se lo requiera, toda la información y/o documentos relacionados
						 con las operaciones y servicios de tercerización prestados a la institución por el contratado'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'c', 
						'Que el contratado guardará la confidencialidad de las operaciones y servicios que realizare y demás información a que tenga acceso con motivo de su relación con la institución contratante'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'd', 
						'Que el contratado se compromete a cumplir con la institución lo establecido en este reglamento, relativo a la infraestructura de TI, sistemas de información, bases de datos, servicios de TI,
						 seguridad de tecnología de la información y continuidad de operaciones de tecnología de la información'
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
			'Las instituciones que al momento del inicio de vigencia de este reglamento se encuentren operando, deberán presentar a la Superintendencia de Bancos un plan de implementación
			 aprobado por el Consejo, para ajustarse a las disposiciones de esta normativa, dentro de los seis (6) meses siguientes a la fecha en que cobre vigencia el mismo.
			 La ejecución del plan indicado en el párrafo anterior, no deberá exceder de veinticuatro (24) meses contados a partir de vencido el plazo para la entrega de dicho plan.'
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
			'Las instituciones deberán enviar a la Superintendencia de Bancos el manual de administración del riesgo tecnológico y el plan de continuidad de operaciones de TI,
			 dentro de los cinco (5) días siguientes de vencido el plazo para la ejecución del plan indicado en el artículo 26.'
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
			'Envío de información a la Superintendencia de Bancos', 
			'Las instituciones deberán enviar a la Superintendencia de Bancos información relacionada con el riesgo tecnológico conforme a las instrucciones generales que el órgano supervisor les indique.'
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Envío de información a la Superintendencia de Bancos'
						)

			-- ARTICULO 29
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			29, 
			'Casos no previstos', 
			'Los casos no previstos en este reglamento serán resueltos por la Junta Monetaria, previo informe de la Superintendencia de Bancos.'
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
		values (@idDocumento, 2, 'ORGANIZACIÓN PARA LA ADMINISTRACIÓN DEL RIESGO TECNOLÓGICO')

		select @idCapitulo = max(idCapitulo) from Capitulos

		-- ARTICULO 3
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			3, 
			'Políticas y procedimientos', 
			''
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Nivel de tolerancia al riesgo operacional para la institución, en términos de frecuencias y severidades'
						)

			    insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'b', 
						'Sistemas de información gerencial relacionados con el proceso de administración del riesgo operacional'
						)

			    insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'c', 
						'Metodologías para identificar, medir, monitorear, controlar, prevenir y mitigar el riesgo operacional'
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
			'Responsabilidad del Consejo de Administración', 
			''
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Aprobar las políticas, procedimientos y sistemas a que se refiere el artículo anterior; asimismo, conocer y resolver sobre las propuestas de actualización y autorizar las modificaciones respectivas'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'b', 
						'Aprobar el manual para la administración del riesgo operacional a que se refiere el artículo 8 de este reglamento, así como sus correspondientes modificaciones'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'c', 
						'Conocer anualmente y cuando la situación lo amerite, los reportes sobre el nivel de cumplimiento de las políticas y procedimientos aprobados para la administración del riesgo operacional'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'd', 
						'Conocer anualmente y cuando la situación lo amerite, los reportes que le remita el Comité de Gestión de Riesgos sobre la exposición al riesgo operacional, los cambios sustanciales de tal exposición y 
						 el cumplimiento del nivel de tolerancia, así como las medidas para su mitigación y/o adecuada administración'
						)


		-- ARTICULO 5
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			5, 
			'Responsabilidad del Comité de Gestión de Riesgos', 
			''
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Proponer al Consejo las políticas, procedimientos y sistemas para la administración del riesgo operacional'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'b', 
						'Proponer al Consejo el manual para la administración del riesgo operacional'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'c', 
						'Analizar las propuestas sobre actualización de las políticas, procedimientos, plan estratégico de TI, plan de continuidad 
						 de operaciones de TI y su plan de pruebas, y proponer al Consejo las actualizaciones que procedan'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'd', 
						'Analizar las propuestas sobre actualización de políticas, procedimientos y sistemas, así como proponer al Consejo la actualización 
						 del manual de administración del riesgo operacional, cuando proceda'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'e', 
						'Aprobar la estrategia para la implementación de las políticas, procedimientos y sistemas para la administración del riesgo operacional y su adecuado cumplimiento'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'f', 
						'Analizar semestralmente y cuando la situación lo amerite, los reportes que le remita la Unidad de Administración de Riesgos sobre la exposición al riesgo operacional, 
						 los cambios sustanciales de tal exposición, el cumplimiento del nivel de tolerancia y las medidas para su mitigación y/o adecuada administración. Lo anterior deberá reportarse al 
						 Consejo anualmente y cuando la situación lo amerite'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'g', 
						'Analizar semestralmente y cuando la situación lo amerite, la información que le remita la Unidad de Administración de Riesgos sobre el nivel de cumplimiento de las 
						 políticas y procedimientos aprobados para la administración del riesgo operacional, así como evaluar las causas de los incumplimientos que hubieren e informar al Consejo 
						 sobre las medidas adoptadas con relación a dichos , incumplimientos. Lo anterior deberá reportarse al Consejo anualmente y cuando la situación lo amerite'
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
			'Funciones de la Unidad de Administración de Riesgos', 
			''
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Proponer al Comité las políticas, procedimientos y sistemas para la administración del riesgo operacional que incluyan metodologías para identificar, medir, 
						 monitorear, controlar, prevenir y mitigar dicho riesgo; para el efecto, la Unidad podrá requerir la colaboración de las unidades administrativas 
						 de la institución, en las áreas de su competencia'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'b', 
						'Revisar anualmente las políticas, procedimientos y sistemas aprobados, así como proponer su actualización al Comité, cuando proceda'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'c', 
						'Monitorear la exposición al riesgo operacional y consolidar los reportes que le remitan  sobre dicho monitoreo'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'd', 
						'Reportar al Comité semestralmente y cuando la situación lo amerite, sobre la exposición al riesgo operacional, los cambios sustanciales de tal exposición, 
						 el cumplimiento del nivel de tolerancia y las actividades relevantes para su mitigación y/o adecuada administración'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'e', 
						'Verificar e informar al Comité, semestralmente, sobre el nivel de cumplimiento de las políticas y procedimientos aprobados para la administración del riesgo 
						 operacional, así como proponer al Comité las medidas correctivas correspondientes'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'f', 
						'Identificar las causas de los incumplimientos a las políticas y procedimientos aprobados, si los hubiere, incluyendo el nivel de tolerancia al riesgo operacional,
						 determinar si dichos incumplimientos se presentan en forma reiterada e informar sobre los resultados y medidas correctivas al Comité, debiendo mantener registros históricos sobre tales incumplimientos'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'g', 
						'Administrar la base de datos de eventos de riesgo operacional a que se refiere el artículo 21 de este reglamento; y,'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'h', 
						'Otras que le asigne el Comité'
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
						'El Gerente General, o quien haga sus veces, será responsable de implementar la administración del riesgo operacional conforme a las disposiciones del Consejo, 
						 así como asegurar que se cumpla con la capacitación, las estrategias y los objetivos de la administración del riesgo operacional'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'b', 
						'Los gerentes de las unidades de negocios y unidades operativas, o quienes hagan sus veces, deben cumplir con las políticas y procedimientos aprobados para la administración del riesgo operacional'
						)

		-- ARTICULO 8
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			8, 
			'Manual para la administración del riesgo operacional', 
			''
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Las políticas, procedimientos y sistemas a que se refiere el artículo 3 de este reglamento deberán constar por escrito en un manual para la administración del riesgo operacional que será aprobado por el Consejo'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'b', 
						'El Consejo conocerá y resolverá sobre las propuestas de actualización del manual para la administración del riesgo operacional y autorizará las modificaciones al mismo, las que deberán ser comunicadas a la 
						 Superintendencia de Bancos, dentro de los diez (10) días hábiles siguientes a su aprobación'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'c', 
						'Las nuevas instituciones que se constituyan y aquellas a las que se les autorice su establecimiento o su funcionamiento deberán remitir una copia del manual referido en este artículo a la Superintendencia de Bancos 
						 antes del inicio de sus operaciones. Asimismo, las instituciones a las que se les autorice la incorporación a un grupo financiero deberán remitir dicho manual durante los treinta (30) días hábiles posteriores a su autorización. 
						 La Superintendencia de Bancos, a solicitud justificada de los interesados, podrá prorrogar el plazo indicado hasta por treinta (30) días adicionales, por una sola vez'
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
						'Las instituciones como parte de sus políticas, procedimientos y sistemas para la administración del riesgo operacional deben determinar los factores
						 de riesgo operacional a los cuales se encuentran, expuestas, considerando los relativos a recursos humanos, procesos internos, tecnología de la información y factores externos'
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
						'Las instituciones deberán gestionar los eventos de riesgo operacional asociados a los recursos humanos, para lo cual deberán contar con políticas, procedimientos y sistemas que 
						 incluyan los perfiles de puestos y procedimientos de selección, contratación, inducción, capacitación y monitoreo permanente de su personal'
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
						'Las instituciones deberán gestionar los eventos de riesgo asociados a los procesos internos, para lo cual deberán definir, documentar, estandarizar y actualizar los procesos necesarios
						 para la realización de sus operaciones y la prestación de sus servicios'
						)

		-- ARTICULO 12
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			12, 
			'Tecnología de la información', 
			''
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Las instituciones deberán gestionar los eventos de riesgo asociados a la tecnología de la información, relacionados con la interrupción, alteración o falla de la infraestructura de tecnología
						 de la información, sistemas de información, bases de datos y procesos de tecnología de la información, conforme lo dispuesto en el Reglamento para la Administración del Riesgo Tecnológico'
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
						'Las instituciones deberán gestionar su exposición a los eventos ajenos al control de la institución, que pueden alterar el desarrollo de sus actividades, para lo cual deberán tomar en consideración, 
						 entre otros, las fallas en los servicios públicos, la ocurrencia de desastres naturales, atentados y actos delictivos, las fallas en servicios críticos provistos por terceros y las contingencias legales'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'b', 
						'Con la finalidad de mitigar la comisión de atentados y actos delictivos en contra de la institución, de sus empleados en el ejercicio de sus funciones o de sus usuarios cuando hagan uso de los 
						 servicios que brinda, las instituciones deberán implementar las políticas, los procedimientos y las medidas de mitigación correspondientes, que permitan una adecuada administración de la seguridad bancaria. 
						 Dichas políticas y procedimientos deberán estar contenidos en el manual a que se refiere el artículo 8 de este reglamento'
						)

	--CAPITULO 4
		insert into Capitulos (idDocumento, noCapitulo, capitulo)
		values (@idDocumento, 4, 'ADMINISTRACIÓN DEL RIESGO OPERACIONAL')
	
		select @idCapitulo = max(idCapitulo) from Capitulos

		-- ARTICULO 14
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			14, 
			'Proceso para la administración del riesgo operacional', 
			''
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Para la adecuada administración del riesgo operacional, las instituciones deberán contar con un proceso integral que debe contener la identificación, medición, monitoreo, control, prevención y mitigación'
						)

		-- ARTICULO 15
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			15, 
			'Identificación', 
			''
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Para efectos de lo dispuesto en este reglamento, las instituciones deberán establecer un proceso de identificación de los eventos de riesgo operacional, agrupándolos en las categorías y clasificándolos 
						 de acuerdo a las líneas de negocio, conforme a las instrucciones generales que emita la Superintendencia de Bancos'
						)

		-- ARTICULO 16
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			16, 
			'Medición', 
			''
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Las instituciones deberán implementar metodologías que les permitan estimar las pérdidas en términos de frecuencias y severidades para evaluar o medir los eventos de riesgo operacional'
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
						'Para llevar a cabo el seguimiento y control de los eventos de riesgo operacional, así como del nivel de exposición al mismo, las instituciones deberán desarrollar procesos de seguimiento 
						 periódico que permitan la rápida detección y corrección de las deficiencias; establecer indicadores de riesgo operacional; y, contar con sistemas de información que permitan la generación 
						 de reportes en forma oportuna para apoyar la toma de decisiones'
						)

		-- ARTICULO 18
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			18, 
			'Control, prevención y mitigación', 
			''
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Las instituciones deberán establecer mecanismos de control que permitan verificar el cumplimiento de las políticas y procedimientos establecidos en este reglamento y prevenir la ocurrencia 
						 de eventos de riesgo operacional; así como implementar medidas que busquen mitigar los eventos de riesgo identificados. Para la implementación de dichas medidas, deberán contar con controles 
						 auxiliares internos, en los cuales se describan las acciones a ejecutar, su plazo estimado y los responsables directos de cada acción'
						)

		-- ARTICULO 19
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			19, 
			'Contratación de servicios de terceros', 
			''
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Criterios para determinar qué actividades pueden ser contratadas'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'b', 
						'Lineamientos y condiciones para prevenir y, cuando esto no sea posible, gestionar los conflictos de interés que 
						 puedan surgir con los miembros del Consejo, gerentes, funcionarios y empleados de la institución'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'c', 
						'Procedimientos para la debida diligencia en la selección del proveedor'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'd', 
						'Lineamientos y procedimientos para la formalización, autorización y finalización de la contratación, incluyendo la delimitación 
						 de responsabilidades entre las partes, así como la confidencialidad y seguridad de la información'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'e', 
						'Procedimientos para el seguimiento y control de la prestación de los servicios'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'f', 
						'Evaluación y monitoreo de los riesgos asociados con el acuerdo de contratación y con la capacidad del proveedor de continuar prestando el servicio'
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
						'La identificación de eventos que ponen en riesgo la continuidad del negocio, las actividades a realizar para superarlos, las alternativas de operación, y el retorno a las actividades normales'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'b', 
						'La asignación de roles y responsabilidades para la continuidad del negocio; así como las acciones a ejecutar durante y una vez ocurrido el evento que ponga en riesgo la continuidad del negocio'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'c', 
						'Capacitación del personal clave para activar el plan de continuidad de negocio'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'd', 
						'La realización de las pruebas necesarias para confirmar su eficacia y eficiencia'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'e', 
						'La divulgación del plan a los miembros de la institución que corresponda'
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
						'Código de identificación del evento'
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
						'Línea de negocio asociada'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'e', 
						'Descripción del evento'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'f', 
						'Proceso o área con la que guarda relación el evento'
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
						'Monto bruto de la pérdida incurrida'
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
						'Identificación del riesgo a que está asociado el evento'
						)

		-- ARTICULO 22
		insert into Articulos (idCapitulo, noArticulo, articulo, descripcion)
		values (
			@idCapitulo, 
			22, 
			'Envío de información a la Superintendencia de Bancos', 
			''
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Las instituciones deberán enviar a la Superintendencia de Bancos información sobre los eventos contenidos en la base de datos a 
						 que hace referencia el artículo 21 de este reglamento, a más tardar el 31 de marzo de cada año, con información referida a diciembre
						 del año anterior, conforme a las instrucciones generales que emita el órgano supervisor'
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
			'Plazos de implementación', 
			''
			)
		
			select @idArticulo = max(idArticulo) from Articulos

			--Requerimientos 
				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'a', 
						'Las instituciones deberán ajustarse a las disposiciones establecidas en este reglamento, con excepción de lo establecido en el artículo 16, 
						 y enviar el manual para la administración del riesgo operacional y el plan de continuidad del negocio, a que se refieren los artículos 8 y 20 respectivamente, a más tardar el 31 de enero de 2017'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'b', 
						'Asimismo, a más tardar el 30 de junio de 2018, deberán implementar las metodologías a que se refiere el artículo 16 de este reglamento y enviar la información a que se refiere el artículo 21 correspondiente al año 2017'
						)

				insert into Requerimientos (idArticulo, noInciso, inciso)
				values (
						@idArticulo, 
						'c', 
						'La Superintendencia de Bancos, a solicitud justificada de los interesados, podrá prorrogar cada uno de los plazos indicados hasta por doce (12) meses, por una sola vez'
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
						'Los casos no previstos en este reglamento serán resueltos por la Junta Monetaria, previo informe de la Superintendencia de Bancos'
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
