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
   formula_log = t1,
   valor = res,
   stringsAsFactors = FALSE
   )
   aux
}

resultado = character(0)
valores_R = c(0.0589,0.6733,0.4799,0.9486,0.6139)
for (x in 1:length(valores_R)){
    valor_aleatorio_R = ceiling(runif(1,1,50)) 
   # vaR = c(valor_aleatorio_R)
    #funcion
    var_x = log(1-valores_R[x])/log(0.4)
    num = x
    geometrica_simulation = rbind(geometrica_simulation,create_df(valores_R[x],toString(var_x),formatC(var_x,1)))
}
print(geometrica_simulation)
