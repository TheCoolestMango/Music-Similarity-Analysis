# Music Similarity Analysis

###### Team (BS19-RO):	Anton Buguev	Mirna Alnoukari	Elizaveta Kovanova

[Github repository](https://github.com/TheCoolestMango/Music-Similarity-Analysis)

## Project Description

The algorithm will recommend a playlist based on a list of user's liked tracks using tracks' characteristics (to make an analysis of chords, notes, rate, frequency etc., and track's metadata (such as track's name, its artist, album, genre, etc.).

## Implementation

### Sprint 1

For this project, a music dataset with 1000 tracks of 10 different genres can be found and downloaded from [here](https://drive.google.com/drive/folders/15l6HypCKKLkd7Kl9SQzOHt90uZ0J01Y9?usp=sharing)

We need to transform the audio into an image in order to use it in *Siamese Neural Networks* (SNN) that was implemented. The visual representation of an audio is a *mel-spectrogram* (spectrogram with frequencies mapped to the mel scale) as it has a better representations for the song characteristics. The following figure is an example of a generated *mel-spectrogram* for one song.

##### *Generated mel-spectrogram*
<img src="https://drive.google.com/uc?export=view&id=1pKcm0xV-DuSu0kPWC1IPALNATCkixNRH" alt="Figure 1: Example of a generated mel-spectrogram" style="zoom:120%;" />

A python script ```sound-to-spec.py``` performs preprocessing:

 * All sample tracks are divided by segments
 * Each segment is converted to a MFCCs (mel-frequency cepstrum coefficient) and added to dictionary
 * Resulting database is added to the .json file, sorted by genres and labeled by genre-index

The dataset ```mel_specs.json``` is a dictionary generated using python script ```sound-to-spec.py``` with following key values:

  * mfccs: contains list of all segmented 1000 tracks converted to MFCCs
  * mapping: list of 10 genres
  * labels: contains index (in the mapping) of the MFCC's corresponding genre

 Using the dataset ```mel_specs.json``` track's feature vector can be extracted using a CNN
Created dataset was uploaded to [GoogleDrive](https://drive.google.com/drive/folders/1JFRL-0wX8s20UJdJ98LvnZHj1ftAQd-l)

<img src="https://drive.google.com/uc?export=view&id=1yupwKL_ZFFdVd5-IElEwbhTFTVkmntgy" />

In ``` MusicAnalysis.ipynb``` we have implemented the SNN with the following procedure:

After data is preprocessed and saved in JSON file, we don't have to convert each audio file into MFCC every time. We load JSON file and divide it into set of features (MFCCs in our case) and targets (genre label). After that we split the dataset into train and test sets.

Since we decided to implement Siamese Neural Network, we need to create pairs of songs. For each created MFCC we randomly select MFCC of song which is the same genre and assign to this pair label 1, which means that this is positive pair, and we also create negative pair by randomly choosing MFCC of a song of different genre and assign to this pair label 0.

To check if everything was done correctly, let us create basic Neural Network but which has 2 inputs, it will be our Siamese Neural Network. Inside this model each input is transformed into a vector and measuring the distance between objects we can identify how similar they are. After model is created we start training. Unfortunately we can see that the model has bad performance, only 50% accuracy, which means we have to tune parameters in the future to achieve better results.

##### SNN Representation
<img src="https://drive.google.com/uc?export=view&id=1BIlEFvSZmY77CHdWGor32a1ckHaSgQ95" />


### Planning and progress

During the first sprint, we created a project plan, divided tasks as shown below. A convolutional neural network is still in process, we will decide which network is better to implement based on the obtained results from both SNN and CNN.

After this stage, we will create a recommendation algorithm that will take input tracks and recommend few similar tracks based on factors we will identify later. 
<img src="https://drive.google.com/uc?export=view&id=1kXmZJ6gIxP57p6Hzj7ZFz3mWtTzt7eXw" />
