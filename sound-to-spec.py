import librosa, librosa.display
import numpy as np
import os, glob
import json
import math

# Global consts
SAMPLE_RATE = 22050
N_SEGMENTS = 10
DURATION = 30 #sec
SAMPLES_PER_TRACK = SAMPLE_RATE * DURATION

# Function to create a mel-spectrogram of a track located at filepath
def create_melspect(genre_and_filename, n_mfcc=13, n_fft = 2048, hop_length = 512):
    # store created mfccs for all segments
    mfccs = []

    reference_path = 'Data/genres_original' + genre_and_filename
    signal, sr = librosa.load(reference_path, sr=SAMPLE_RATE)

    samples_per_seg = int(SAMPLES_PER_TRACK / N_SEGMENTS)
    expected_n_vec = math.ceil(samples_per_seg / hop_length)

    # Process segments extracting mfccs
    for seg in range(N_SEGMENTS):
        start_sample = samples_per_seg * seg
        end_sample = start_sample + samples_per_seg

        # Create mfcc for a slice of a signal
        mfcc = librosa.feature.mfcc(y=signal[start_sample:end_sample], sr=sr, n_fft=n_fft, n_mfcc=n_mfcc, hop_length=hop_length)
        mfcc = mfcc.T

        # check if num_samples is as expected
        if len(mfcc) == expected_n_vec:
            mfccs.append(mfcc.tolist())

    #print(np.array(mfccs).shape)
    return mfccs


# Create dictionary containing spectrograms
mel_specs = {
    'mfcc': [],
    'mapping': [],
    'labels': []
}

path = 'Data/genres_original'
# List of genres
genres = os.listdir(path)

# Create a dictionary with genre as key, and values are lists of track names of said genres
filepaths = {}

# To read from these filepaths later
for genre in genres:
  filepath = path + "/" + genre
  filepaths[genre] = os.listdir(filepath)

# Create spectrograms for all tracks of all genres and save them in mfcc dictionary
for j in range(len(genres)):
    genre = genres[j]
    mel_specs['mapping'].append(genre)
    print('\n' + genre + ' started')
    for i in range(len(filepaths[genre])):
        genre_and_name = '/' + genre + '/' + filepaths[genre][i]
        mel_specs['mfcc'].append(create_melspect(genre_and_name))
        mel_specs['labels'].append(j)

# save mel_specs as .json file
with open('mel_specs.json', 'w') as fp:
    json.dump(mel_specs, fp, indent=4)
    print('\nSaved specrograms in a .json file!')
