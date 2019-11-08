#Para borrar todas las variables del entorno
rm(list = setdiff(ls(), lsf.str()))

#Funcion uniforme tabla
geometrica_simulation = data.frame(
   R = c(),
   formula_r = c(),
   X = c(),
   stringsAsFactors = FALSE
)

create_df = function(num, t1,res) {
   aux = data.frame(
   valor_aleatorio_R = num, 
   llegada_horas = t1,
   salida_horas = res,
   stringsAsFactors = FALSE
   )
   aux
}

resultado = character(0)
uniform_a = 1.1
uniform_b = 2
valores_R = c(0.0589,0.6733,0.4799,0.9486,0.6139)
for (x in 1:length(valores_R)){
   # vaR = c(valor_aleatorio_R)
    #funcion
    llegada_t = -2 * log(1 - valores_R[x]) 
    salida_t = uniform_a + (uniform_b - uniform_a) * valores_R[x]
 
    num = x
    geometrica_simulation = rbind(geometrica_simulation,create_df(valores_R[x],format(llegada_t,2), format(salida_t,2)))
}
print(geometrica_simulation)
