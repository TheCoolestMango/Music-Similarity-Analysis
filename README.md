# Music-Similarity-Analysis
A Deep Learning algorithm for suggesting similar tracks based on a user's input track

## Team
* Anton Buguev
* Mirna Alnoukari
* Elizaveta Kovanova

## Abstract
### Description
The algorithm will recommend a playlist based on a list of user's liked tracks using tracks' characteristics (to make an analysis of chords, notes, rate, frequency etc., and track's metadata (such as track's name, its artist, album, genre, etc.).
### Data used
The algorithm requires a data-set of different music compositions of different genres, pace and artists.
### Expectation
The implemented model should be capable of finding tracks similar to a couple of liked tracks.

# Prerequisites
The algorithm is implemented in Python v3. Installation instruction can be found [here](https://www.python.org/downloads/)\
Further libraries can be installed using ```pip```. Pip installation instruction can be found [here](https://pip.pypa.io/en/stable/installation/)
## Libraries
The following libraries are required to run code:
* Librosa: ```pip install librosa```
* Numpy: ``` pip install numpy```

# Sprint 1
## Preprocessing
### Implemented by Elizaveta Kovanova
A python script ```sound-to-spec.py``` performs preprocessing:
 * All sample tracks are divided by segments
 * Each segment is converted to a MFCCs (mel-frequency cepstrum coefficient) and added to dictionary
 * Resulting database is added to the .json file, sorted by genres and labeled by genre-index

Required data (1000 tracks of different genres) can be found and downloaded from [here](https://drive.google.com/drive/folders/15l6HypCKKLkd7Kl9SQzOHt90uZ0J01Y9?usp=sharing)\
\
The dataset ```mel_specs.json``` is a dictionary generated using python script ```sound-to-spec.py``` with following key values:
  * mfccs: contains list of all segmented 1000 tracks converted to MFCCs
  * mapping: list of 10 genres
  * labels: contains index (in the mapping) of the MFCC's corresponding genre
  
 Using the dataset ```mel_specs.json``` track's feature vector can be extracted using a CNN
Created dataset was uploaded to [GoogleDrive](https://drive.google.com/drive/folders/1JFRL-0wX8s20UJdJ98LvnZHj1ftAQd-l)
