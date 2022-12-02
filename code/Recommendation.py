from tensorflow import keras
from tensorflow.keras import backend as K


model = keras.models.load_model('Data/Model')
print("Model imported")

import json

def load_data(json_path='Data/mel_specs.json'):
  with open(json_path, "r") as fp:
        data = json.load(fp)

  X = (data['mfcc'])
  y = (data['labels'])
  return X, y

json_path = 'Data/mel_specs.json'
orig_x_data, orig_y_data = load_data(json_path)
print("JSON imported")

import numpy as np

x_data, y_data = [], []
for i in range(len(orig_x_data)):
  x_d = orig_x_data[i]
  for j in range(len(x_d)):
    x_data.append([x_d[j][0][0], np.array(x_d[j][1]).T])
    y_data.append(orig_y_data[i])
X = x_data
y = np.array(y_data)

def create_pairs(plots, labels):
  pair_plots, pair_labels, pair_names = [], [], []
  num_labels = len(np.unique(labels))
  
  indices = [np.where(labels == i)[0] for i in range(num_labels)]
  
  for idx1 in range(len(plots)):
    name1 = plots[idx1][0]
    plot1 = plots[idx1][1]
    label1 = labels[idx1]

    idx2 = np.random.choice(indices[label1])
    name2 = plots[idx2][0]
    plot2 = plots[idx2][1]

    pair_plots.append([plot1, plot2])
    pair_labels.append([1])
    pair_names.append([name1, name2])

    idx3 = np.where(labels != label1)[0]
    rand_idx3 = np.random.choice(idx3)
    name3 = plots[rand_idx3][0]
    plot3 = plots[rand_idx3][1]

    pair_plots.append([plot1, plot3])
    pair_labels.append([0])
    pair_names.append([name1, name3])
  return np.array(pair_plots), pair_names

mfcc_pairs, song_names = create_pairs(X, y)
print("Pairs created")

song_diff = model.predict([mfcc_pairs[:,0], mfcc_pairs[:,1]], verbose=0)
print("Songs predicted")

def recommendation_list(song_name, num_songs=10):
  fav_song = song_name
  fav_pairs = [[np.array([0]), [fav_song, fav_song]]]
  for i in range(len(song_names)):
    if (fav_song == song_names[i][0]) ^ (fav_song == song_names[i][1]):
      fav_pairs.append([song_diff[i], song_names[i]])
  fav_pairs = sorted(fav_pairs, key=lambda l:l[0])
  recommended_list = [pair[1][0] if pair[1][0] != fav_song else pair[1][1] for pair in fav_pairs[:num_songs]]
  return recommended_list

# print(recommendation_list('jazz.00024.wav'))