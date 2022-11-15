#importing libraries 

import os
from tkinter import *
from tkinter.ttk import *
from tkinter import Tk
from tkinter import filedialog
from pygame import mixer
import Recommendation

DEFAULT_PATH = "C:/Users/bugue/Desktop/DL/Project"
print(DEFAULT_PATH)

# Create a GUI window
root = Tk()
root.title("Music Player")
root.geometry("720x600+290+85")
root.configure(background='#212121')
root.resizable(False, False)
mixer.init()

# Add songs to the list
def AddMusic():
       path = filedialog.askdirectory()
       print(path)
       if path:
              songs = os.listdir(path)
              for song in songs:
                     if song.endswith(".wav"):
                            Playlist.insert(END, song)

# Play song when button is pressed
def PlayMusic():
       Music_Name = Playlist.get(ACTIVE)
       Music_Name = DEFAULT_PATH + '/Data/genres_original/' + Music_Name[:-10] + '/' + Music_Name
       mixer.music.load(Music_Name)
       mixer.music.play()

# Update current genre on genre change
def ChangeGenre(event):
       curr_genre = selected_genre.get()
       Playlist.delete(0, END)
       path = DEFAULT_PATH + '/Data/genres_original/' + curr_genre
       if path:
              songs = os.listdir(path)

       for song in songs:
              if song.endswith(".wav"):
                     Playlist.insert(END, song)

# Create Recommendation list
def RecommendMusic():
       Music_Name = Playlist.get(ACTIVE)
       Playlist.delete(0, END)
       Recommended_list = Recommendation.recommendation_list(Music_Name)

       for song in Recommended_list:
              if song.endswith(".wav"):
                   Playlist.insert(END, song)


# icon
image_icon = PhotoImage(file="images/icon3.png")
root.iconphoto(False, image_icon)

# Background image
Background = PhotoImage(file="images/top_image.png")
Label(root, image=Background, background="#0f1a2b").pack()

# logo
logo = PhotoImage(file=DEFAULT_PATH+"/images/logo.png")
Label(root, image=logo, background="#0f1a2b").place(x=45, y=140)

# background for buttons
Frame_buttons = Frame(root, relief=RIDGE)
Frame_buttons.place(x=45, y=350, width=202, height=150)

# Buttons
ButtonPlay = PhotoImage(file=DEFAULT_PATH+"/images/play.png")
Button(root, image=ButtonPlay,
       command=PlayMusic).place(x=115, y=360)

ButtonStop = PhotoImage(file=DEFAULT_PATH+"/images/stop.png")
Button(root, image=ButtonStop,
       command=mixer.music.stop).place(x=50, y=425)

ButtonResume = PhotoImage(file=DEFAULT_PATH+"/images/resume.png")
Button(root, image=ButtonResume,
       command=mixer.music.unpause).place(x=115, y=425)

ButtonPause = PhotoImage(file=DEFAULT_PATH+"/images/pause.png")
Button(root, image=ButtonPause,
       command=mixer.music.pause).place(x=180, y=425)

label_recommend = Label(text='Click on Rock\nif you want recommendations')
label_recommend.place(x=550, y=350)
ButtonRecommend = PhotoImage(file=DEFAULT_PATH+"/images/menu.png")
Button(root, image=ButtonRecommend,
       command=RecommendMusic).place(x=550, y=390)


# Label 
# Menu = PhotoImage(file="images/menu.png")
# Label(root, image=Menu).pack(padx=10, pady=50, side=RIGHT)

Frame_Music = Frame(root, relief=RIDGE)
Frame_Music.place(x=330, y=350, width=180, height=250)

#Button(root, text="Open Folder", width=15, command=AddMusic).place(x=330, y=300)

# Label for genre choice
label_genre = Label(text='Select genre:')
label_genre.place(x=331, y=280)

# genre choice
genres = ['blues', 'country', 'classical', 'disco', 'hiphop', 'jazz', 'metal', 'pop', 'reggae', 'rock']
selected_genre = StringVar(root)
genre_choice = Combobox(root, values=genres, textvariable=selected_genre)
genre_choice.place(x=330, y=300)
# prevent typing a value
genre_choice['state'] = 'readonly'

genre_choice.bind('<<ComboboxSelected>>', ChangeGenre)

Scroll = Scrollbar(Frame_Music)
Playlist = Listbox(Frame_Music, width=100, font=("Times new roman", 10), background="#333333", fg="grey", selectbackground="lightblue", cursor="hand2", bd=0, yscrollcommand=Scroll.set)
Scroll.config(command=Playlist.yview)
Scroll.pack(side=RIGHT, fill=Y)
Playlist.pack(side=LEFT, fill=BOTH)

# Execute Tkinter

root.mainloop()