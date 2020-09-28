tdh <- td %>%
  group_by(Year) %>%
  summarize(n(),ForceTypeAction)
tdh <- filter(tdh,Year > 1970)
tdh$Year <- as.character(tdh$Year)
names(tdh)[2] <- paste("Count")
pl <- qplot(tdh$Year, tdh$Count, xlab="Year", ylab = "Count", main = "Police use of force by Year")
print(pl)
