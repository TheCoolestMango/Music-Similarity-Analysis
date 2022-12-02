from tensorflow import keras
# from tensorflow.keras import backend as K
import numpy as np
import json


# Function to read the JSON file with MFCC's
def load_data(json_path='Data/mel_specs.json'):
  with open(json_path, "r") as fp:
        data = json.load(fp)

  X = (data['mfcc']) # Contains name of the song and corresponding MFCC's
  y = (data['labels']) # Contains genre labels of each song
  return X, y

# Function to generate pairs for each MFCC of each song
def create_pairs(plots, labels):
  pair_plots, pair_names = [], []
  num_labels = len(np.unique(labels)) # number of labels

  # Get indices of songs of each genre
  indices = [np.where(labels == i)[0] for i in range(num_labels)]

  # Create two pairs for each song
  for idx1 in range(len(plots)):
    # Get the current song name, MFCC and genre
    name1 = plots[idx1][0]
    plot1 = plots[idx1][1]
    label1 = labels[idx1]

    # Take random MFCC of other song with the same genre
    idx2 = np.random.choice(indices[label1])
    name2 = plots[idx2][0]
    plot2 = plots[idx2][1]

    # Add pair
    pair_plots.append([plot1, plot2])
    pair_names.append([name1, name2])

    # Take random MFCC of other song with different genre
    idx3 = np.where(labels != label1)[0]
    rand_idx3 = np.random.choice(idx3)
    name3 = plots[rand_idx3][0]
    plot3 = plots[rand_idx3][1]
    
    # Add pair
    pair_plots.append([plot1, plot3])
    pair_names.append([name1, name3])
  return np.array(pair_plots), pair_names

# Function to generate recommendation list
def recommendation_list(song_name, num_songs=10):
  fav_song = song_name
  # Create list of similar songs, where 1st song is selected song
  fav_pairs = [[np.array([0]), [fav_song, fav_song]]]

  # Check each generated pair of songs
  for i in range(len(song_names)):
    # If only one of songs in pair is requested song, then we keep the songs difference and song names
    if (fav_song == song_names[i][0]) ^ (fav_song == song_names[i][1]):
      fav_pairs.append([song_diff[i], song_names[i]])
  
  # Sort the list of pairs based on song difference in increasing order
  # The smaller the difference, the better
  fav_pairs = sorted(fav_pairs, key=lambda l: l[0])
  
  # For each pair of songs keep the name of the song if it is not selected song
  recommended_list = [pair[1][0] if pair[1][0] !=
                      fav_song else pair[1][1] for pair in fav_pairs[:num_songs]]
  return recommended_list

# Import the model
model = keras.models.load_model('Data/Model')
print("\nModel imported")

# Import the JSON file
json_path = 'Data/mel_specs.json'
orig_x_data, orig_y_data = load_data(json_path)
print("JSON imported")

# Refactor data
X, y = [], []
for i, x_d in enumerate(orig_x_data):
  for j in range(len(x_d)):
    X.append([x_d[j][0][0], np.array(x_d[j][1]).T])
    y.append(orig_y_data[i])
y = np.array(y)

# Genreate pairs of MFCC and song names
mfcc_pairs, song_names = create_pairs(X, y)
print("Pairs created")

# Estimate the difference between paired MFCC's
song_diff = model.predict([mfcc_pairs[:,0], mfcc_pairs[:,1]], verbose=0)
print("Songs predicted")


print(recommendation_list('jazz.00024.wav'))