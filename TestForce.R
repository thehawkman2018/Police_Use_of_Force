tdh <- td %>%
  group_by(ForceTypeAction) %>%
  summarize(n())
##tdh <- filter(tdh)
##tdh$Year <- as.character(tdh$Year)
names(tdh)[2] <- paste("Count")
tdh <- filter(tdh, tdh$Count > 1000)
tdh %>% arrange(Count,asc = TRUE)
pl <- ggplot(tdh,aes(ForceTypeAction,Count))+geom_text(aes(label = Count),vjust=-1) + geom_point() + theme(text = element_text(size=20),axis.text.x=element_text(angle=45,hjust=1)) + ylim(1000,7000) + 
  ggtitle("Force Type Action 2008 - 2020") + xlab("Force Type Action > 1000")

png(filename = "ForceTypeAction.png", width=600, height=600)
print(pl) 
dev.off()
