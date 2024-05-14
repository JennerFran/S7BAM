 y <- arima.sim(model = list(order = c(1, 1, 1), 
                        ar = 0.8, ma = 0.6), n = 200)
 
 plot(y)
 acf(y)
 pacf(y)
 
 model <- arima(y, order = c(1, 1, 1))
 coefficients(model)
 
 acf(resid(model))
 
 predict(model, n.ahead = 5) ## Comentario
 