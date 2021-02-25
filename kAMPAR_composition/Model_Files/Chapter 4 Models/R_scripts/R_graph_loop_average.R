# Plot separate ggplot figures in a loop.
library(ggplot2)
library(viridis)

# Make list of variable names to loop over.
temp = list.files(pattern="*.csv")


for (i in temp) {myfiles <- lapply(i,
                                   FUN = function(files) {
                                       read.csv(files, header = TRUE, sep = ",")
                                   })
df<-as.data.frame(myfiles)

a <- ggplot(`df`, aes(T)) + geom_line(aes(y = S831_u,colour = "S831_u")) + geom_line(aes(y = S831_P, colour ="S831_P")) + geom_line(aes(y = S831_PP, colour ="S831_PP")) + scale_colour_viridis(discrete = TRUE) + theme_classic() + labs(x = "T(s)", y = "#", colour = "") + expand_limits(y=c(0, 75)) + theme(axis.text=element_text(size=16), axis.title=element_text(size=16,face='bold'), legend.text=element_text(size=16))

ggsave(a,filename=paste0(i,"_S831",".png"), dpi = 320)

b <- ggplot(`df`, aes(T)) + geom_line(aes(y = S845_u,colour = "S845_u")) + geom_line(aes(y = S845_P, colour ="S845_P")) + geom_line(aes(y = S845_PP, colour ="S845_PP")) + scale_colour_viridis(discrete = TRUE) + theme_classic() + labs(x = "T(s)", y = "#", colour = "") + expand_limits(y=c(0, 75)) + theme(axis.text=element_text(size=16), axis.title=element_text(size=16,face='bold'), legend.text=element_text(size=16))

ggsave(b, filename=paste0(i,"S845",".png"), dpi = 320)

c <- ggplot(`df`, aes(T)) + geom_line(aes(y = S818_u,colour = "S818_u")) + geom_line(aes(y = S818_p, colour ="S818_p")) + geom_line(aes(y = S818_pp, colour ="S818_pp")) + scale_colour_viridis(discrete = TRUE) + theme_classic() + labs(x = "T(s)", y = "#", colour = "") + expand_limits(y=c(0, 75)) + theme(axis.text=element_text(size=16), axis.title=element_text(size=16,face='bold'), legend.text=element_text(size=16))

ggsave(c, filename=paste0(i,"S818",".png"), dpi = 320)

d <- ggplot(`df`, aes(T)) + geom_line(aes(y = I1_P,colour = "I1_P")) + geom_line(aes(y = I1_u, colour ="I1_u")) + scale_colour_viridis(discrete = TRUE) + theme_classic() + labs(x = "T(s)", y = "#", colour = "") + theme(axis.text=element_text(size=16), axis.title=element_text(size=16,face='bold'), legend.text=element_text(size=16))

ggsave(d,filename=paste0(i,"I1",".png"), dpi = 320)

e <- ggplot(`df`, aes(T)) + geom_line(aes(y = PKA_a,colour = "PKA_a")) + geom_line(aes(y = PKA_i, colour ="PKA_i")) + scale_colour_viridis(discrete = TRUE) + theme_classic() + labs(x = "T(s)", y = "#", colour = "") + theme(axis.text=element_text(size=16), axis.title=element_text(size=16,face='bold'), legend.text=element_text(size=16))

ggsave(e,filename=paste0(i,"PKA",".png"), dpi = 320)

f <- ggplot(`df`, aes(T)) + geom_line(aes(y = PP2B,colour = "PP2B")) + geom_line(aes(y = Phos_CK_subunits, colour ="Phos_CK_subunits")) + geom_line(aes(y = Phos_CK_hexamers, colour ="Phos_CK_hexamers")) + scale_colour_viridis(discrete = TRUE) + theme_classic() + labs(x = "T(s)", y = "#", colour = "") + theme(axis.text=element_text(size=16), axis.title=element_text(size=16,face='bold'), legend.text=element_text(size=16))

ggsave(f,filename=paste0(i,"CK",".png"), dpi = 320)

g <- ggplot(`df`, aes(T)) + geom_line(aes(y = Slots,colour = "Slots")) + geom_line(aes(y = Synaptic_12,colour = "Synaptic_12")) + geom_line(aes(y = Synaptic_23,colour = "Synaptic_23")) + geom_line(aes(y = Synaptic_receptors,colour = "Synaptic_receptors")) + scale_colour_viridis(discrete = TRUE) + theme_classic() + labs(x = "T(s)", y = "#", colour = "") + expand_limits(y=c(0, 75)) + theme(axis.text=element_text(size=16), axis.title=element_text(size=16,face='bold'), legend.text=element_text(size=16))

ggsave(g,filename=paste0(i,"Slots",".png"), dpi = 320)

h <- ggplot(`df`, aes(T)) + geom_line(aes(y = Free_PP,colour = "Free_PP")) + scale_colour_viridis(discrete = TRUE) + theme_classic() + labs(x = "T(s)", y = "#", colour = "") + theme(axis.text=element_text(size=16), axis.title=element_text(size=16,face='bold'), legend.text=element_text(size=16))

ggsave(h,filename=paste0(i,"PP1",".png"), dpi = 320)

j <- ggplot(`df`, aes(T)) + geom_line(aes(y = CaM_CaMKII_C4,colour = "CaM_CaMKII_C4")) + geom_line(aes(y = CaMKII_CaM,colour = "CaM_CaMKII")) + geom_line(aes(y = Active_CaM,colour = "Active_CaM")) + scale_colour_viridis(discrete = TRUE) + theme_classic() + labs(x = "T(s)", y = "#", colour = "") + theme(axis.text=element_text(size=16), axis.title=element_text(size=16,face='bold'), legend.text=element_text(size=16))

ggsave(j,filename=paste0(i,"CaM",".png"), dpi = 320)

k <- ggplot(`df`, aes(T)) + geom_line(aes(y = AMPAR1,colour = "AMPAR1")) + geom_line(aes(y = AMPAR12,colour = "AMPAR12")) + geom_line(aes(y = AMPAR23,colour = "AMPAR23")) + scale_colour_viridis(discrete = TRUE) + theme_classic() + labs(x = "T(s)", y = "#", colour = "") + theme(axis.text=element_text(size=16), axis.title=element_text(size=16,face='bold'), legend.text=element_text(size=16))

ggsave(k,filename=paste0(i,"ampar",".png"), dpi = 320)

l <- ggplot(`df`, aes(T)) + geom_line(aes(y = K868_ub, colour= "K868_ub")) + geom_line(aes(y = K868_ub2,colour = "K868_ub2")) + geom_line(aes(y = K868_ub3,colour = "K868_ub3")) + geom_line(aes(y = K868_ub4,colour = "K868_ub4")) + geom_line(aes(y = K868_ub5,colour = "K868_ub5")) + scale_colour_viridis(discrete = TRUE) + theme_classic() + labs(x = "T(s)", y = "#", colour = "") + theme(axis.text=element_text(size=16), axis.title=element_text(size=16,face='bold'), legend.text=element_text(size=16))

ggsave(l,filename=paste0(i,"k868",".png"), dpi = 320)

m <- ggplot(`df`, aes(T)) + geom_line(aes(y = Calcium_Levels,colour = "Calcium_Levels")) + scale_colour_viridis(discrete = TRUE) + theme_classic() + labs(x = "T(s)", y = "#", colour = "") + theme(axis.text=element_text(size=16), axis.title=element_text(size=16,face='bold'), legend.text=element_text(size=16))

ggsave(m,filename=paste0(i,"Ca",".png"), dpi = 320) 



}
