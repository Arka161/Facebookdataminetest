install.packages("httpuv")
install.packages("Rook")
install.packages("Rfacebook")
install.packages("httr")
install.packages("rjson")



library(Rfacebook)
library(Rook)
library(httpuv)

fb_oauth <- fbOAuth(app_id="254903181594171", app_secret="90437ea62d41a1cff7555d019c26e9b3")
token="EAACEdEose0cBAGL2NATZBPOIaw8RsbtU2zYkSHmok8UAyo2fOekedm2ZBwrrCSgDx66JlD3cSehv4WE09L0H9rOLVw3jXiDN31K3Ff6jtbFLNmZAQvvPSKNPVnm3YKgpOHPZCvZA2UBfFsLYFzMuW83Nx6nEZC4tj7gEAjmszQVgZDZD"

load('fb_oauth') 

me <- getUsers("me", token=token)
me$name

my_newsfeed <- getNewsfeed(token=fb_oauth, n=100)
my_newsfeed
my_likes <- getLikes(user="me", token=token)
my_likes