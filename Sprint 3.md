# Sprint 3

### Team (BS19-RO):	Anton Buguev, Mirna Alnoukari, Elizaveta Kovanova

[Github repository](https://github.com/TheCoolestMango/Music-Similarity-Analysis)


## Model usage

Implemented and trained SNN model now can be imported and used in other projects. We loaded it and started working on music player. 

Model is used in the following way:

1. The model is imported into Python code.
2. We also need dataset of songs and their corresponding MFCCs, so we load them as well.
3. We generate pairs of MFCCs so pretrained model can predict similarity between song fragments.
4. After prediction we can suggest the most similar song for any chosen song.

## Music player

Implemented recommendation system can be used to suggest songs in music player. Music player is the user interface where user  has many options:

1. Choose and play initial song of any genre.
2. If user wants to get similar songs for the current track, they can get list of recommended songs that are the most similar based on model prediction.
3. Play any song from the recommended playlist and get recommendations for the new song.
4. If user wants gets tired of recommendations, they can reselect genre and song.

List of songs of the same genre            |  Recommended playlist
:-------------------------:|:-------------------------:
<img src="screenshot1.jpg" width="500"/>  |  <img src="screenshot2.jpg" width="500"/>

<br />
<br />

## Task distribution
- Anton Buguev: SNN tuning and recommendation algorithm implementation
- Elizaveta Kovanova: UI frontend development
- Mirna Alnoukari: design of recommendation algorithm, documentation

## Future plans

1. Polish UI
2. Implement next/previous song play
3. Make ```.exe``` file