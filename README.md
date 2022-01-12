
Breaking Bad App overview


This app will display Characters and Episodes of Breaking Bad. 
  Character view displays the characters with an image and when each character is tapped on it displays another view with all the character details. Episodes view has a list of the episode number, season, and title and also a detail view of the episode when the cell is tapped on.

The Episode and Character model files are to display the data in a vertical grid and the episodes in a list view. The model files conform to codable and identifiable, identifiable makes a unique identifier to keep track of it.

API Call (ViewModels)

-URL variable is to make sure we get a valid URL
-for characters, character, and episodes we have switch cases for each data endpoint to make sure we get the data from the api calls in each function
-each function is fetching some data, characters by id, all characters, episodes

For both views, I created @State variables that takes in the view models for characters and episodes to instantiate it.
The onAppear function in both views is making the call to the API to get the data and set it to fetch characters function, passing the data onto the grid for characters and list/hstack for episodes

*Technologies Used
  - SwiftUI

*Arcitecture
  - MVVM

*Views
- Tab bar for characters and episodes
- List View for characters
- List View for episodes

*Models
  - Character
  - Episode

