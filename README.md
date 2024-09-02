# Test App

This is a simple mobile app built using Flutter. The app allows users to manage a list of items where each item has a title and description. Users can add new items to the list, view them, and delete items they no longer need. The app is designed to be responsive and works well on both iOS and Android platforms.

## Table of Contents

- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Running the App](#running-the-app)
- [Usage](#usage)
  - [Adding an Item](#adding-an-item)
  - [Deleting an Item](#deleting-an-item)
- [Project Structure](#project-structure)
- [Contributing](#contributing)
- [License](#license)

## Features

- **Display a List of Items:** View all the items with their title and description.
- **Add New Items:** Add new items to the list using a form.
- **Delete Items:** Remove items from the list with a single tap.
- **Responsive Design:** Works seamlessly on both iOS and Android devices.

## Getting Started

### Prerequisites

Before you begin, ensure you have met the following requirements:

- [Flutter SDK](https://flutter.dev/docs/get-started/install) installed on your machine.
- [Android Studio](https://developer.android.com/studio) or [Xcode](https://developer.apple.com/xcode/) for iOS development.
- A device or emulator running Android or iOS.

### Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/reagandennis/test_app.git
   ```

2. **Navigate to the project directory:**

   ```bash
   cd test_app
   ```

3. **Install dependencies:**

   Run the following command to get all the dependencies listed in `pubspec.yaml`:

   ```bash
   flutter pub get
   ```

### Running the App

You can run the app on an emulator or a physical device.

#### For Android:

1. **Start an Android emulator** or connect a physical Android device.
2. **Run the app:**

   ```bash
   flutter run
   ```

#### For iOS:

1. **Open the project in Xcode** by running:

   ```bash
   open ios/Runner.xcworkspace
   ```

2. **Choose a device** from the top toolbar in Xcode.
3. **Build and run the app** by clicking on the play button or using the command:

   ```bash
   flutter run
   ```

## Usage

### Adding an Item

1. Click on the `+ New` button on the top right of the main screen.
2. Fill in the **Item Title** and **Description** in the form.
3. Click on the `Add Item` button to add the item to the list.

### Deleting an Item

1. To delete an item, tap on the red trash icon on the right side of the item you want to delete.
2. The item will be removed from the list.

## Project Structure

```
test_app/
│
├── android/                 # Android-specific files
├── ios/                     # iOS-specific files
├── lib/
│   ├── main.dart            # Main entry point of the app
│   ├── item_list.dart       # Widget displaying the list of items
│   ├── add_item_form.dart   # Widget for the add item form
│
├── pubspec.yaml             # Project metadata and dependencies
└── README.md                # Project documentation
```

### Key Files

- `main.dart`: Contains the main entry point for the app and sets up the basic app structure.
- `item_list.dart`: Displays the list of items with their title and description.
- `add_item_form.dart`: Provides the form to add a new item to the list.

## Contributing

Contributions are always welcome! Here's how you can contribute:

1. Fork the repository.
2. Create a new branch for your feature or bugfix (`git checkout -b feature-name`).
3. Commit your changes (`git commit -am 'Add new feature'`).
4. Push to the branch (`git push origin feature-name`).
5. Create a Pull Request.

Please make sure your code follows the standard coding guidelines and is well-documented.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

