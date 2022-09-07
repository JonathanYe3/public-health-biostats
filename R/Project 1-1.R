library(ggplot2)

likelihood_pdf <- function(p){
      density <- p*(1-p)^7
      return(density)
}

x_lower <- 0
x_upper <- 0.5

ggplot(data.frame(x = c(x_lower, x_upper)), aes(x = x)) + 
      stat_function(fun = likelihood_pdf,
                    geom = "area", fill = "blue", alpha = 0.5) + 
      stat_function(fun = likelihood_pdf) + 
      labs(x = "\n x", y = "f(x) \n", 
           title = "Likelihood Distribution Plot \n") + 
      theme(plot.title = element_text(hjust = 0.5), 
            axis.title.x = element_text(face="bold", colour="blue", size = 12),
            axis.title.y = element_text(face="bold", colour="blue", size = 12))
