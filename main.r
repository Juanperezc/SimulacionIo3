#Para borrar todas las variables del entorno
rm(list = setdiff(ls(), lsf.str()))

#Funcion uniforme tabla
uniform_simulation = data.frame(
   Iteraciones = c(),
   valor_aleatorio_R = c(),
   muestra_t = c(),
   stringsAsFactors = FALSE
)
create_df = function(num, t1,res) {
   aux = data.frame(
   Iteraciones = num, 
   valor_aleatorio_R = t1,
   muestra_t = res,
   stringsAsFactors = FALSE
   )
   aux
}
cantidad_de_maquinas = 4
uniform_a = 1
uniform_b = 4
resultado = character(0)
for (x in 1:cantidad_de_maquinas){
    valor_aleatorio_R = ceiling(runif(1,1,50)) 
    vaR = c(valor_aleatorio_R)
    #funcion
    muestra_t = uniform_a + (uniform_b - uniform_a)*valor_aleatorio_R
    num = x
    uniform_simulation = rbind(uniform_simulation,create_df(num,toString(vaR),muestra_t))
}
print(uniform_simulation)
