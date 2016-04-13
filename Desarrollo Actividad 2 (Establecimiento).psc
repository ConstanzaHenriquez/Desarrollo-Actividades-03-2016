Proceso Establecimiento
	
	peor_colegio<-600;
	Escribir "Ingrese Numero de Establecimientos: "Sin Saltar;
	leer num_establecimiento;
	
	Repetir
		cont<-cont+1;
		Escribir "Ingrese numero de alumnos en el establecimiento ",cont,":";sin saltar
		leer num_alumno;
		i<-num_alumno;
		Escribir "Ingrese Puntajes de los alumnos del establecimiento ",cont,":";
		
		Repetir
			
			Repetir
				leer porc_alumno;
				si porc_alumno>600 o porc_alumno<0 entonces
					Escribir "Puntaje Fuera de Rango, ¡Intente Nuevamente!"
				FinSi
			Hasta Que (porc_alumno<=600 y porc_alumno>=0);
			
				suma_todos<-suma_todos+porc_alumno
				prom_todos<-(suma_todos)/i
				
				suma_colegio<-suma_colegio+porc_alumno
				prom_colegio<-(suma_colegio)/i
				
				si porc_alumno<=300 entonces
					bajo<-bajo+1
				sino 
					si porc_alumno>=301 y porc_alumno<=499 entonces
					mediano<-mediano+1	
					Sino
						si porc_alumno>=500 Entonces
						alto<-alto+1
						FinSi
					FinSi
					
				FinSi
				num_alumno<-num_alumno-1
			Hasta Que num_alumno=0
			

			si prom_colegio>mejor_colegio entonces
					num_colegio_mejor<-cont;
					mejor_colegio<-prom_colegio
			FinSi	
			si prom_colegio<peor_colegio Entonces
					num_colegio_peor<-cont;
						peor_colegio<-prom_colegio;
			FinSi
			porc_bajo<-trunc((bajo*100)/i);
			porc_mediano<-trunc((mediano*100)/i);
			porc_alto<-trunc((alto*100)/i);
			
			si porc_bajo>=70 entonces
				resumen_bajo<-resumen_bajo+1;
					Escribir "COLEGIO INSUFICIENTE"
			Sino
				si porc_mediano>=70 entonces
					resumen_mediano<-resumen_mediano+1;
						Escribir "SUFICIENTE"
				Sino
					si porc_alto>=70 entonces
						resumen_alto<-resumen_alto+1;
							Escribir "COLEGIO BUENO"
					FinSi
				FinSi
			FinSi
			
			porc_bajo<-0;
			porc_mediano<-0;
			porc_alto<-0;
					
			bajo<-0
			mediano<-0
			alto<-0
		suma_colegio<-0			
		num_establecimiento<-num_establecimiento-1;
	Hasta Que num_establecimiento=0
	
	
Escribir "Colegio(s) en la calificacion de INSUFICIENTE: ",resumen_bajo;
Escribir "Colegio(s) en la calificacion de SUFICIENTE: ",resumen_mediano;
Escribir "Colegio(s) en la calificacion de BUENO: ",resumen_alto;
Escribir " "
Escribir "Mejor Colegio:  Colegio N° ",num_colegio_mejor,", con ",mejor_colegio," Puntos."
Escribir "Peor Colegio:  Colegio N° ",num_colegio_peor,", con ",peor_colegio," Puntos."
FinProceso
