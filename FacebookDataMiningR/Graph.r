install.packages("httpuv")
install.packages("Rfacebook")
install.packages("RColorBrewer")
install.packages("RCurl")
install.packages("rjson")
install.packages("httr")

library(Rfacebook)
library(httpuv)
library(RColorBrewer)

acess_token="EAACEdEose0cBABUwBy756VZACsnsu4o50S6FdoGy4iQ4ce3pvjEE3jZCZCG8LsQtluzWPwen9wWWKf75gEWrUCbWuGP8U4Pxv31GmmE7R0GZAqZBirZCioMB8bnTZA3x9CcmcDZC9eBJzp7xOeCxWaLfpkUVSRn3xKMLkaWXR3oEIwZDZD"

options(RCurlOptions=list(verbose=FALSE,capath=system.file("CurlSSL","cacert.pem",package="RCurl"),ssl.verifypeer=FALSE))

me<-getUsers("me",token=acess_token)

myFriends<-getFriends(acess_token,simplify=FALSE)


table(myFriends)

pie(table(myFriends$gender),col=brewer.pal(5,"Set1"))

pie(table(myFriends$locale),col=brewer.pal(5,"Set1"))


