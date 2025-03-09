Image App
This is a Flutter application that allows users to search for images using an API and manage their favorite images. The app consists of two main screens: the Search Screen and the Favorite Screen.

Project Structure
The project is organized into the following directories:

lib/

├── base/

│ ├── api/

│ ├── enum/

│ ├── extension/

│ ├── theme/

│ └── utils/

├── data/

│ ├── model/

│ ├── repo/

│ └── source/

├── domain/

│ ├── repo/

│ └── source/

├── navigation/

│ ├── app_router.dart

│ ├── app_router.gr.dart

│ └── app_router_path.dart

├── presentation/

│ ├── favourite/

│ ├── home/

│ ├── provider/

│ ├── widget/

│ ├── global_provider.dart

│ └── main.dart

lib

base
api: Contains API-related utilities.
enum: Enums used across the app.
extension: Custom extensions.
theme: App theme configurations.
utils: Utility functions and helpers.

data
model: Data models for the app.
repo: Repository implementations.
source: Data sources (e.g., local, remote).

domain
repo: Repository interfaces.
source: Domain-specific data sources.

navigation
app_router.dart: Main router configuration.
app_router.gr.dart: Generated router file.
app_router_path.dart: Path definitions for navigation.

presentation
favourite: UI and logic for the Favorite Screen.
home: UI and logic for the Search Screen.
provider: State management providers.
widget: Reusable widgets.
global_provider.dart: Global state providers.
main.dart: Entry point of the application.

Features
Search Screen
AppBar: Displays the title of the app.
Search Bar and Button: Allows users to input search queries and trigger the search action.
Navigate to Favorite Screen: A button to navigate to the Favorite Screen.
Image Search: Fetches up to 20 images from the API on search action.
Grid View: Displays images in a 2-per-row grid.

Image Widget:
Displays the image.
Shows the owner's name below the image.
Displays the image size in a readable format (KB, MB, etc.).
Tapping on the image adds it to favorites.


Favorite Screen
Image Display: Displays favorited images in the same manner as the Search Screen.
Remove Favorite: On pressing an image, a dialog asks the user if they want to remove the image from favorites.



Dependencies
flutter_riverpod: For state management.
dio: For making HTTP requests.
auto_route: For navigation.
cached_network_image: For caching and displaying network images.

Use this command to generate code
flutter packages pub run build_runner build --delete-conflicting-outputs