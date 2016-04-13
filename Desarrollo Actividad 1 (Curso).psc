Proceso Curso
	
	cont<-0;
	j<-cont;
	Escribir "Ingrese el Numero de semestres: "sin saltar
	leer num_semestres;
	
	Repetir
		cont<-cont+1;
		Escribir "Ingrese numero de alumnos en el semestre ",cont," :";sin saltar
		leer num_alumnos;
		k<-num_alumnos;
		Escribir "Ingrese el numero de notas en el semestre ",cont," :";sin saltar
		leer num_notas;
		i<-num_notas
		cont<-j
		Repetir
			cont<-cont+1
			Escribir "Ingrese notas del alumno ",cont," :";
			num_notas<-i
				Repetir
					leer notas
					suma_notas<-suma_notas+notas;
					suma_alumnos<-suma_alumnos+notas;
					
					prom_curso<-suma_notas/i;
					
					
					num_notas<-num_notas-1;
				Hasta Que num_notas=0
				
					prom_alumnos<-suma_alumnos/i;
					si prom_alumnos>prom_mayor entonces
						prom_mayor<-prom_alumnos
					FinSi
					suma_alumnos<-suma_alumnos+notas;
					si prom_alumnos>=1.0 y prom_alumnos<=3.5 entonces
						alumnos_reprobados<-alumnos_reprobados+1;
					Sino
						si prom_alumnos>=3.6 y prom_alumnos<=3.9 Entonces
							alumnos_examen<-alumnos_examen+1;
						Sino
							si prom_alumnos>=4.0 y prom_alumnos<=7.0 Entonces
								alumnos_aprobados<-alumnos_aprobados+1
							FinSi
						FinSi
					FinSi

				suma_alumnos<-0;
			num_alumnos<-num_alumnos-1;
		Hasta Que num_alumnos=0 
		cont<-cont-1;
		num_semestres<-num_semestres-1;
	Hasta Que num_semestres=0 
	//Porcentajes
	porc_reprobados<-(alumnos_reprobados*100)/k;
	porc_examen<-(alumnos_examen*100)/k;
	porc_aprobados<-(alumnos_aprobados*100)/k;
	Escribir " "
	Escribir "Cantidad: "
	Escribir "Aprobados: ",alumnos_aprobados;
	Escribir "Reprobados: ",alumnos_reprobados;
	Escribir "Examen: ",alumnos_examen;
	Escribir " "
	Escribir "Porcentajes: "
	Escribir "Aprobados: ",porc_aprobados,"%";
	Escribir "Reprobados: ",porc_reprobados,"%";
	Escribir "Examen: ",porc_examen,"%";
	Escribir " "
	Escribir "Promedio del Curso: ",prom_curso;
	Escribir " "
	Escribir "Mejor Alumno: ",prom_mayor;
FinProceso
