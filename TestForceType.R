tdh <- td %>%
  group_by(ForceType) %>%
  summarize(n())
names(tdh)[2] <- paste("Count")
tdh <- filter(tdh, tdh$Count > 1)
tdh <- tdh[order(tdh$Count),]
pl <- ggplot(tdh,aes(ForceType,Count)) + geom_point()+geom_text(aes(label = Count),vjust=-1) + theme(text = element_text(size=20),axis.text.x=element_text(angle=45,hjust=1)) + ylim(10,21000) + 
  ggtitle("Force Type 2008 - 2020") + xlab("Force Type")

png(filename = "ForceType1.png", width=600, height=600)
print(pl) 
dev.off()
