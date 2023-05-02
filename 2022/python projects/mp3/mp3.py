# importing packages
from pytube import YouTube
import os

# url input
yt = YouTube("https://www.youtube.com/watch?v=pi68OuW6H9A") #input youtube url

# extract audio only
video = yt.streams.filter(only_audio=True).first()

# destination to save file
print("Enter destination (leave blank to save in current directory)")
destination = str(input(" ")) or '.'

# download the file
out_file = video.download(output_path=destination)

# save the file
base, ext = os.path.splitext(out_file)
new_file = base + '.mp3'
os.rename(out_file, new_file)

# result
print(yt.title + " has been successfully downloaded.")