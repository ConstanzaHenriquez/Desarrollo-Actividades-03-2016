Proceso Tienda_de_despacho
	
camion_1<-0;	
	Escribir "Ingrese Distancia a la Ciudad 1: "Sin Saltar
	leer ciudad_1;
	Mientras ciudad_1<9 o ciudad_1>600 hacer
		Escribir "Intente Nuevamente"
		leer ciudad_1;
	FinMientras
	
	Escribir "Ingrese Distancia a la Ciudad 2: "Sin Saltar
	leer ciudad_2;
	Mientras ciudad_2<9 o ciudad_2>600 hacer
		Escribir "Intente Nuevamente"
		leer ciudad_2;
	FinMientras
	
	Escribir "Ingrese Distancia a la Ciudad 3: "Sin Saltar
	leer ciudad_3;
	Mientras ciudad_3<9 o ciudad_3>600 hacer
		Escribir "Intente Nuevamente"
		leer ciudad_3;
	FinMientras
	
	Escribir "Ingrese Distancia a la Ciudad 4: "Sin Saltar
	leer ciudad_4;
	Mientras ciudad_4<9 o ciudad_4>600 hacer
		Escribir "Intente Nuevamente"
		leer ciudad_4;
	FinMientras
	
repetir
	viajes_realizados<-viajes_realizados+1;
	Repetir
		Escribir "Ingrese Peso de la Carga(menor a 1500kg): "
		leer carga;
		si carga<0 o carga>1500 Entonces
			Escribir "Intente Nuevamente"
			Escribir " "
		FinSi
	Hasta Que (carga>=0 y carga<=1500)
	
	si carga>=700 entonces
		Escribir "Se Utilizara el Camion Petrolero."
		si camion_1=0 entonces
			camion_1<-(60*11) //km que recorre el camion
			camion_1_combustible<-camion_1_combustible+60;
			camion_1_petroleo<-camion_1_petroleo+(60*610);
			camion<-1;
		FinSi
	Sino
		Escribir "Se ultilizara el Camion Con Bencina"
		si camion_2=0 entonces
			camion_2<-(40*13);
			camion_2_combustible_suma<-camion_2_combustible_suma+40;
			camion_2_combustible<-camion_2_combustible+(40*850);
			camion<-2;
		finsi
	FinSi
	
	
	
	Repetir
		Escribir "Ingrese la Ciudad de Destino(1,2,3,4), ingrese 0 si decea salir: "Sin Saltar
		leer ciudad;
		si ciudad<0 o ciudad>4 entonces
			Escribir "Intente nuevamente"
			Escribir " "
		FinSi
	Hasta Que (ciudad>=0 y ciudad<=4)	
	
	Segun ciudad hacer
		1: 	ciudad_1<-(ciudad_1*2); //Por 2, por que tiene que ir y volver a la tienda.(km que recorre en total)
			km_recorridos<-km_recorridos+ciudad_1;
			km_ciudad_1<-km_ciudad_1+ciudad_1;
			viajes_ciudad_1<-viajes_ciudad_1+1
			
			
			Segun camion hacer
				1: //Camion_1
					si camion_1<ciudad_1 entonces
				km_faltantes_camion_1<-ciudad_1-camion_1;//cantidad de km que faltan para que termine su recorrido.
				ltr_petroleo_faltante_camion_1<-(km_faltantes_camion_1*60)/660;// cantidad de petroleo que falta para terminar su recorrido
				dinero_extra_petroleo_camion_1<-trunc((ltr_petroleo_faltante_camion_1*610))+dinero_extra_petroleo_camion_1;//dinero que gasta para terminar su recorrido
				
				Escribir km_faltantes_camion_1
				Escribir ltr_petroleo_faltante_camion_1
				Escribir dinero_extra_petroleo_camion_1
			Sino
				si camion_1>=ciudad_1 Entonces
					km_restantes_camion_1<-camion_1-ciudad_1;
					escribir km_restantes_camion_1
					Escribir " "
					
					
					si km_restantes_camion_1>0 entonces
						camion_1<-km_restantes_camion_1;
					Sino
						km_restantes_camion_1<-0;
						camion_1<-0;
					FinSi
				FinSi
			FinSi
			
			
				2:	//Camion_2				
			si camion_2<ciudad_1 entonces
				km_faltantes_camion_2<-ciudad_1-camion_2;//cantidad de km que faltan para que termine su recorrido.
				ltr_combustible_faltante_camion_2<-(km_faltantes_camion_2*40)/520;// cantidad de petroleo que falta para terminar su recorrido
				dinero_extra_combustible_camion_2<-trunc((ltr_combustible_faltante_camion_2*850))+dinero_extra_petroleo_camion_2;//dinero que gasta para terminar su recorrido
				
				Escribir km_faltantes_camion_2
				Escribir ltr_combustible_faltante_camion_2
				Escribir dinero_extra_combustible_camion_2
			Sino
				si camion_2>=ciudad_1 Entonces
					km_restantes_camion_2<-camion_2-ciudad_1;
					escribir km_restantes_camion_2
					Escribir " "
					
					si km_restantes_camion_2>0 entonces
						camion_2<-km_restantes_camion_2;
					Sino
						km_restantes_camion_2<-0;
						camion_2<-0;
					FinSi
				FinSi
			FinSi
				
			finsegun


2:			ciudad_2<-(ciudad_2*2); //Por 2, por que tiene que ir y volver a la tienda.(km que recorre en total)
			km_recorridos<-km_recorridos+ciudad_2;
			km_ciudad_2<-km_ciudad_2+ciudad_2;
			viajes_ciudad_2<-viajes_ciudad_2+1
			
			Segun camion hacer
				1: //Camion_1
			si camion_1<ciudad_2 entonces
				km_faltantes_camion_1<-ciudad_2-camion_1;//cantidad de km que faltan para que termine su recorrido.
				ltr_petroleo_faltante_camion_1<-(km_faltantes_camion_1*60)/660;// cantidad de petroleo que falta para terminar su recorrido
				dinero_extra_petroleo_camion_1<-trunc((ltr_petroleo_faltante_camion_1*610))+dinero_extra_petroleo_camion_1;//dinero que gasta para terminar su recorrido
				
				Escribir km_faltantes_camion_1
				Escribir ltr_petroleo_faltante_camion_1
				Escribir dinero_extra_petroleo_camion_1
			Sino
				si camion_1>=ciudad_2 Entonces
					km_restantes_camion_1<-camion_1-ciudad_2;
					escribir km_restantes_camion_1
					Escribir " "

					si km_restantes_camion_1>0 entonces
						camion_1<-km_restantes_camion_1;
					Sino
						km_restantes_camion_1<-0;
						camion_1<-0;
					FinSi
				FinSi
			FinSi
			
				2:	//Camion_2	
				si camion_2<ciudad_2 entonces
					km_faltantes_camion_2<-ciudad_2-camion_2;//cantidad de km que faltan para que termine su recorrido.
					ltr_combustible_faltante_camion_2<-(km_faltantes_camion_2*40)/520;// cantidad de petroleo que falta para terminar su recorrido
					dinero_extra_combustible_camion_2<-trunc((ltr_combustible_faltante_camion_2*850))+dinero_extra_petroleo_camion_2;//dinero que gasta para terminar su recorrido
					
					Escribir km_faltantes_camion_2
					Escribir ltr_combustible_faltante_camion_2
					Escribir dinero_extra_combustible_camion_2
				Sino
					si camion_2>=ciudad_2 Entonces
						km_restantes_camion_2<-camion_2-ciudad_2;
						escribir km_restantes_camion_2
						Escribir " "
						
						si km_restantes_camion_2>0 entonces
							camion_2<-km_restantes_camion_2;
						Sino
							km_restantes_camion_2<-0;
							camion_2<-0;
						FinSi
					FinSi
				FinSi
			
	finsegun
	
3:			ciudad_3<-(ciudad_3*2); //Por 2, por que tiene que ir y volver a la tienda.(km que recorre en total)
			km_recorridos<-km_recorridos+ciudad_3;
			km_ciudad_3<-km_ciudad_3+ciudad_3;
			viajes_ciudad_3<-viajes_ciudad_3+1
			
			
			Segun camion hacer
				1: //Camion_1
			si camion_1<ciudad_3 entonces
				km_faltantes_camion_1<-ciudad_1-camion_1;//cantidad de km que faltan para que termine su recorrido.
				ltr_petroleo_faltante_camion_1<-(km_faltantes_camion_1*60)/660;// cantidad de petroleo que falta para terminar su recorrido
				dinero_extra_petroleo_camion_1<-trunc((ltr_petroleo_faltante_camion_1*610))+dinero_extra_petroleo_camion_1;//dinero que gasta para terminar su recorrido
				
				Escribir km_faltantes_camion_1
				Escribir ltr_petroleo_faltante_camion_1
				Escribir dinero_extra_petroleo_camion_1
			Sino
				si camion_1>=ciudad_3 Entonces
					km_restantes_camion_1<-camion_1-ciudad_3;
					escribir km_restantes_camion_1
					Escribir " "
					
					si km_restantes_camion_1>0 entonces
						camion_1<-km_restantes_camion_1;
					Sino
						km_restantes_camion_1<-0;
						camion_1<-0;
					FinSi
				FinSi
			FinSi
			
		2:	//Camion_2	
				si camion_2<ciudad_3 entonces
					km_faltantes_camion_2<-ciudad_3-camion_2;//cantidad de km que faltan para que termine su recorrido.
					ltr_combustible_faltante_camion_2<-(km_faltantes_camion_2*40)/520;// cantidad de petroleo que falta para terminar su recorrido
					dinero_extra_combustible_camion_2<-trunc((ltr_combustible_faltante_camion_2*850))+dinero_extra_petroleo_camion_2;//dinero que gasta para terminar su recorrido
					
					Escribir km_faltantes_camion_2
					Escribir ltr_combustible_faltante_camion_2
					Escribir dinero_extra_combustible_camion_2
				Sino
					si camion_2>=ciudad_3 Entonces
						km_restantes_camion_2<-camion_2-ciudad_3;
						escribir km_restantes_camion_2;
						Escribir " ";
						
						si km_restantes_camion_2>0 entonces
							camion_2<-km_restantes_camion_2;
						Sino
							km_restantes_camion_2<-0;
							camion_2<-0;
						FinSi
					FinSi
				FinSi
		FinSegun
			
			
4:			ciudad_4<-(ciudad_4*2); //Por 2, por que tiene que ir y volver a la tienda.(km que recorre en total)
	km_recorridos<-km_recorridos+ciudad_4;
	km_ciudad_4<-km_ciudad_4+ciudad_4;
	viajes_ciudad_4<-viajes_ciudad_4+1
	
	Segun camion hacer
		1: //Camion_1
	si camion_1<ciudad_4 entonces
		km_faltantes_camion_1<-ciudad_4-camion_1;//cantidad de km que faltan para que termine su recorrido.
		ltr_petroleo_faltante_camion_1<-(km_faltantes_camion_1*60)/660;// cantidad de petroleo que falta para terminar su recorrido
		dinero_extra_petroleo_camion_1<-trunc((ltr_petroleo_faltante_camion_1*610))+dinero_extra_petroleo_camion_1;//dinero que gasta para terminar su recorrido
		
		Escribir km_faltantes_camion_1
		Escribir ltr_petroleo_faltante_camion_1
		Escribir dinero_extra_petroleo_camion_1
	Sino
		si camion_1>=ciudad_4 Entonces
			km_restantes_camion_1<-camion_1-ciudad_4;
			escribir km_restantes_camion_1
			Escribir " "
			
			si km_restantes_camion_1>0 entonces
				camion_1<-km_restantes_camion_1;
			Sino
				km_restantes_camion_1<-0;
				camion_1<-0;
			FinSi
		FinSi
	FinSi
	
2:	//Camion_2	
		si camion_2<ciudad_4 entonces
			km_faltantes_camion_2<-ciudad_4-camion_2;//cantidad de km que faltan para que termine su recorrido.
			ltr_combustible_faltante_camion_2<-(km_faltantes_camion_2*40)/520;// cantidad de petroleo que falta para terminar su recorrido
			dinero_extra_combustible_camion_2<-trunc((ltr_combustible_faltante_camion_2*850))+dinero_extra_petroleo_camion_2;//dinero que gasta para terminar su recorrido
			
			Escribir km_faltantes_camion_2
			Escribir ltr_combustible_faltante_camion_2
			Escribir dinero_extra_combustible_camion_2
		Sino
			si camion_2>=ciudad_4 Entonces
				km_restantes_camion_2<-camion_2-ciudad_4;	
				escribir km_restantes_camion_2
				Escribir " "
				
				si km_restantes_camion_2>0 entonces
					camion_2<-km_restantes_camion_2;
				Sino
					km_restantes_camion_2<-0;
					camion_2<-0;
				FinSi
			FinSi
		FinSi
	finsegun
		0: escribir "¡Hasta Luego!"
	FinSegun
	
Hasta Que ciudad=0;

Escribir "(a) Cantida de viejes realizados: ",viajes_realizados-1;
Escribir "(b) Kilometros recorridos: ",km_recorridos;
Escribir "(c) Consumo total del combustible: ",camion_1_combustible+camion_2_combustible_suma+ltr_petroleo_faltante_camion_1+ltr_combustible_faltante_camion_2;
Escribir "(d) Costo total en combustible: $",camion_1_petroleo+camion_2_combustible+dinero_extra_petroleo_camion_1+dinero_extra_combustible_camion_2;
Escribir "(e) Numero de viajes y cantidad de km recorridos a cada ciudad: "
Escribir "Ciudad 1: ",viajes_ciudad_1," viajes y ",km_ciudad_1," km recorridos";
Escribir "Ciudad 2: ",viajes_ciudad_2," viajes y ",km_ciudad_2," km recorridos";
Escribir "Ciudad 3: ",viajes_ciudad_3," viajes y ",km_ciudad_3," km recorridos";
Escribir "Ciudad 4: ",viajes_ciudad_4," viajes y ",km_ciudad_4," km recorridos";
FinProceso
