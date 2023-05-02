#importing packages
import pytube as pt

#url input
yt = pt.YouTube("https://www.youtube.com/watch?v=2OPVViV-GQk&")

#extract only audio
t = yt.streams.filter(only_audio=True)

#file download
t[0].download()

#still in production
#too much problem occur