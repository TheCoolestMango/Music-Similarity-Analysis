#importing libraries 

import os
from tkinter import *
import tkinter as tk
from tkinter.ttk import *
from tkinter import filedialog
from pygame import mixer
import Recommendation

DEFAULT_PATH = "C:/Users/bugue/Desktop/DL/Project"

# Create a GUI window
root = Tk()
root.title("Music Player")
root.geometry("920x600+200+85")
root.configure(background='#212121')
root.resizable(False, False)
mixer.init()

last_song = '' # last played song
paused = False # if the current song is paused

# Play song when button is pressed
def PlayMusic(is_paused, last_played):
       # Save the name of last played song
       global last_song
       last_song = last_played
       # Get the name of the selected song
       Music_Name = Playlist.get(ACTIVE)
       # If no song was selected, then select the first automatically
       if Playlist.curselection() == ():
              Playlist.selection_set((0,), last=None)
       # Get the directory of the selected song
       Music_Name = DEFAULT_PATH + '/Data/genres_original/' + Music_Name[:-10] + '/' + Music_Name
       # If the last played song is different from the selected, then we need to load the song from folder
       if last_song != Music_Name:
              # Load the song
              mixer.music.load(Music_Name)
              # Starts playing
              mixer.music.play()
              # Update the name of the last song
              last_song = Music_Name
              # Change the button to Pause image
              ButtonPlay.configure(image=ButtonPause_Image)
       # If the selected song is the same as last played, then we just need to continue playing it
       else:
              global paused
              paused = is_paused
              # If the song was paused, then we unpause it
              if paused:
                     mixer.music.unpause()
                     paused = False
                     # Change the button to Pause image
                     ButtonPlay.configure(image=ButtonPause_Image)
              # Otherwise unpause it
              else:
                     mixer.music.pause()
                     paused = True
                     # Change the button to Play image
                     ButtonPlay.configure(image=ButtonPlay_Image)

# Play the next song
def PlayNext():
       global last_song, paused
       # Get the index of selected song
       next_song = Playlist.curselection()
       # Get the index of the next song
       next_song = next_song[0] + 1
       # Get the name of the next song
       Music_Name = Playlist.get(next_song)
       # Get directory of the selected song
       Music_Name = DEFAULT_PATH + '/Data/genres_original/' + \
           Music_Name[:-10] + '/' + Music_Name
       # Load and play the next song
       mixer.music.load(Music_Name)
       mixer.music.play()
       
       # Update the name of the last played song
       last_song = Music_Name
       # Update the state of the song
       paused = False
       # Change the button to the Pause button
       ButtonPlay.configure(image=ButtonPause_Image)

       # Switch selection to the next song
       Playlist.selection_clear(0, END)
       Playlist.activate(next_song)
       Playlist.selection_set(next_song, last=None)


def PlayPrev():
       global last_song, paused
       # Get the index of selected song
       prev_song = Playlist.curselection()
       # Get the index of the previous song
       prev_song = prev_song[0] - 1
       # Get the name of the previous song
       Music_Name = Playlist.get(prev_song)
       # Get directory of the selected song
       Music_Name = DEFAULT_PATH + '/Data/genres_original/' + \
              Music_Name[:-10] + '/' + Music_Name
       # Load and play the previous song
       mixer.music.load(Music_Name)
       mixer.music.play()

       # Update the name of the last played song
       last_song = Music_Name
       # Update the state of the song
       paused = False
       # Change the button to the Pause button
       ButtonPlay.configure(image=ButtonPause_Image)

       # Switch selection to the previous song
       Playlist.selection_clear(0, END)
       Playlist.activate(prev_song)
       Playlist.selection_set(prev_song, last=None)

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
       # Get the name of the selected song
       Music_Name = Playlist.get(ACTIVE)
       # Clear the playlist
       Playlist.delete(0, END)
       # Get the list of recommended songs
       Recommended_list = Recommendation.recommendation_list(Music_Name)
       # Add each song to the playlist
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
Frame_buttons.place(x=45, y=350)

# Buttons
ButtonPlay_Image = PhotoImage(file=DEFAULT_PATH+"/images/play.png")
ButtonPause_Image = PhotoImage(file=DEFAULT_PATH+"/images/pause.png")

ButtonPlay = tk.Button(Frame_buttons, image=ButtonPlay_Image,
       command=lambda: PlayMusic(paused, last_song))
ButtonPlay.grid(row=0, column=1, pady=5, padx=5)

ButtonPrev_Image = PhotoImage(file=DEFAULT_PATH+"/images/prev.png")
ButtonNext_Image = PhotoImage(file=DEFAULT_PATH+"/images/next.png")

ButtonPrev = tk.Button(Frame_buttons, image=ButtonPrev_Image,
                       command=PlayPrev)
ButtonPrev.grid(row=0, column=0, pady=5, padx=5)

ButtonNext = tk.Button(Frame_buttons, image=ButtonNext_Image,
                       command=PlayNext)
ButtonNext.grid(row=0, column=2, pady=5, padx=5)


label_recommend = Label(text='Click on Rock\nif you want recommendations')
label_recommend.place(x=550, y=350)
ButtonRecommend = PhotoImage(file=DEFAULT_PATH+"/images/menu.png")
Button(root, image=ButtonRecommend,
       command=RecommendMusic).place(x=550, y=390)

Frame_Music = Frame(root, relief=RIDGE)
Frame_Music.place(x=330, y=350, width=180, height=250)

# Label for genre choice
label_genre = Label(text='Select genre:')
label_genre.place(x=330, y=280)

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