#importing libraries 
import os
import tkinter as tk
from tkinter import *
from tkinter.ttk import *
from pygame import mixer
import time
from tensorflow.keras import backend as K

import Recommendation

DEFAULT_PATH = "C:/Users/bugue/Desktop/DL/Project"
print(DEFAULT_PATH)

# Create a GUI window
root = Tk()
root.title("Music Player")
root.geometry("750x600+290+85")
root.configure(background='#212121')
root.resizable(False, False)
mixer.init()

# list of covers' paths
album_paths = {
       'blues': DEFAULT_PATH+'/images/blues.png',
       'classical': DEFAULT_PATH+'/images/classical.png',
       'country': DEFAULT_PATH+'/images/country.png',
       'disco': DEFAULT_PATH+'/images/disco.png',
       'hiphop': DEFAULT_PATH+'/images/hiphop.png',
       'jazz': DEFAULT_PATH+'/images/jazz.png',
       'metal': DEFAULT_PATH+'/images/metal.png',
       'pop': DEFAULT_PATH+'/images/pop.png',
       'reggae': DEFAULT_PATH+'/images/reggae.png',
       'rock': DEFAULT_PATH+'/images/rock.png'
}

font = ('Ubuntu',10)
last_song = '' # last played song
paused = False # if the current song is paused

def AddSongs(path):
       if path:
              songs = os.listdir(path)
       for song in songs:
              if song.endswith(".wav"):
                     Playlist.insert(END, song)

# Function to change album cover
def change_album_logo(curr_genre):
       Label(root, image=album_covers[curr_genre], background="#FFFFFF").place(x=45, y=140)


def time_update():
       # Display song position
       current_time = mixer.music.get_pos()/1000
       # MM:SS format
       conv_time = time.strftime('%M:%S', time.gmtime(current_time))

       song_pos.config(text=conv_time)
       # костыль, чтобы избежать 59:59
       if song_pos['text'] == '59:59':
              song_pos.config(text='00:00')
       # update slider
       slider.config(to=30, value=current_time)

       song_pos.after(1000, time_update)

# Play song when button is pressed
def PlayMusic(is_paused, last_played):
       # Save the name of last played song
       global last_song
       last_song = last_played
       # Get the name of the selected song
       Music_Name = Playlist.get(ACTIVE)
       # genre name
       curr_genre = Music_Name[:-10]
       # If no song was selected, then select the first automatically
       if Playlist.curselection() == ():
              Playlist.selection_set((0,), last=None)
       # Get the directory of the selected song
       Music_Name = DEFAULT_PATH + '/Data/genres_original/' + curr_genre + '/' + Music_Name
       # If the last played song is different from the selected, then we need to load the song from folder
       if last_song != Music_Name:
              # Load the song
              mixer.music.load(Music_Name)
              # Starts playing
              mixer.music.play(loops=10)
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

       # change album logo
       change_album_logo(curr_genre)

       time_update()


# Play the next song
def PlayNext():
       global last_song, paused
       # Get the index of selected song
       next_song = Playlist.curselection()
       # Get the index of the next song
       next_song = next_song[0] + 1
       # Get the name of the next song
       Music_Name = Playlist.get(next_song)
       # genre name
       curr_genre = Music_Name[:-10]
       # Get directory of the selected song
       Music_Name = DEFAULT_PATH + '/Data/genres_original/' + \
           curr_genre + '/' + Music_Name
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

       change_album_logo(curr_genre)

# Play the previous song
def PlayPrev():
       global last_song, paused
       # Get the index of selected song
       prev_song = Playlist.curselection()
       # Get the index of the previous song
       prev_song = prev_song[0] - 1
       # Get the name of the previous song
       Music_Name = Playlist.get(prev_song)
       # genre name
       curr_genre = Music_Name[:-10]
       # Get directory of the selected song
       Music_Name = DEFAULT_PATH + '/Data/genres_original/' + \
              curr_genre + '/' + Music_Name
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

       change_album_logo(curr_genre)


# Update current genre on genre change
def ChangeGenre(event):
       # get the genre string from the choice box
       curr_genre = selected_genre.get()
       # empty list
       Playlist.delete(0, END)
       # append it to path
       path = DEFAULT_PATH + '/Data/genres_original/' + curr_genre
       # open all files from genre folder
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


image_path = '/home/liza/Study/pmldl/Project/images'
# icon
image_icon = PhotoImage(file=DEFAULT_PATH+"/images/icon3.png")
root.iconphoto(False, image_icon)

# Background image
Background = PhotoImage(file=DEFAULT_PATH+"/images/top_image.png")
Label(root, image=Background, background="#0f1a2b").pack()

# logo
logo_img = PhotoImage(file=DEFAULT_PATH+"/images/logo.png")
Label(root, image=logo_img, background="#000000").place(x=45, y=140)

# background for buttons
Frame_buttons = Frame(root, relief=RIDGE, width=204)
Frame_buttons.pack()
Frame_buttons.place(x=45, y=370)

# Buttons
ButtonPlay_Image = PhotoImage(file=DEFAULT_PATH+"/images/play.png")
ButtonPause_Image = PhotoImage(file=DEFAULT_PATH+"/images/pause.png")

ButtonPlay = Button(Frame_buttons, image=ButtonPlay_Image,
       command=lambda: PlayMusic(paused, last_song))
ButtonPlay.grid(row=0, column=1,pady=5,padx=7)

ButtonPrev_Image = PhotoImage(file=DEFAULT_PATH+"/images/prev.png")
ButtonNext_Image = PhotoImage(file=DEFAULT_PATH+"/images/next.png")

ButtonPrev = Button(Frame_buttons, image=ButtonPrev_Image,
                       command=PlayPrev)
ButtonPrev.grid(row=0, column=0,pady=5,padx=3)

ButtonNext = Button(Frame_buttons, image=ButtonNext_Image,
                       command=PlayNext)
ButtonNext.grid(row=0, column=2,pady=5,padx=3)


label_recommend = Label(text='Click on Rock\nif you want recommendations', font=font)
label_recommend.place(x=550, y=350)
ButtonRecommend = PhotoImage(file=DEFAULT_PATH+"/images/menu.png")
Button(root, image=ButtonRecommend,
       command=RecommendMusic).place(x=550, y=390)

# Music Slider
slider = Scale(root, from_=0, to=100, orient=HORIZONTAL, value=0, length=204)
slider.place(x=45, y=345)

# Current song position display
song_pos = Label(Frame_buttons,text='00:00', font=font)
song_pos.grid(row = 1, column=1)


Frame_Music = Frame(root, relief=RIDGE)
Frame_Music.place(x=330, y=350, width=180, height=250)

# Label for genre choice
label_genre = Label(text='Select genre:', font=font)
label_genre.place(x=331, y=280)

# genre choice
genres = ['blues', 'country', 'classical', 'disco', 'hiphop', 'jazz', 'metal', 'pop', 'reggae', 'rock']
selected_genre = StringVar(root)
# The box with list of all genres
genre_choice = Combobox(root, values=genres, textvariable=selected_genre)
genre_choice.place(x=330, y=300)
# prevent typing a value in the list
genre_choice['state'] = 'readonly'

# launch ChangeGenre on change
genre_choice.bind('<<ComboboxSelected>>', ChangeGenre)

# album dictionary genre: album-cover
album_covers = {genre:PhotoImage(file=album_paths[genre], width=200, height=200) for genre in genres}

Scroll = Scrollbar(Frame_Music)
Playlist = Listbox(Frame_Music, width=100, font=font, background="#333333", fg="grey", selectbackground="lightblue", cursor="hand2", bd=0, yscrollcommand=Scroll.set)
Scroll.config(command=Playlist.yview)
Scroll.pack(side=RIGHT, fill=Y)
Playlist.pack(side=LEFT, fill=BOTH)

# insert first playlist
# open all files from genre folder
AddSongs(path=DEFAULT_PATH + '/Data/genres_original/' + 'rock')

# Execute Tkinter

root.mainloop()