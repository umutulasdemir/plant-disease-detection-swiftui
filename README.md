# Plant Disease Detection

An iOS application using SwiftUI for detecting plant diseases. This app integrates four different classification models trained with ResNet and served via a Flask API.

## Features

- Detects various plant diseases using ResNet classification models.
- Provides a user-friendly interface to capture or upload images of plants.
- Displays disease diagnosis results with detailed information.

## Technologies Used

- **SwiftUI**: For building the iOS app interface.
- **ResNet**: Trained models used for disease classification.
- **Flask**: Backend API to serve the classification models.
- **REST API**: For communication between the Swift app and the Flask server.

## Installation

### Prerequisites

- Xcode installed on your Mac.
- Python and Flask installed on your system.

### Steps

1. **Clone the repository**

    ```bash
    git clone https://github.com/umutulasdemir/plant-disease-detection.git
    ```

2. **Install dependencies**

    ```bash
    pip install -r requirements.txt
    ```

3. **Adjust Your IP Address and Run the Flask server**

    ```bash
    python app.py
    ```

4. **Open the Xcode project**

    ```bash
    open plant-disease-detection/PlantDiseaseDetection.xcodeproj
    ```

5. **Build and run the iOS app on a simulator or a real device**

## Usage

1. Open the app on your iOS device.
2. Capture or upload an image of a plant leaf.
3. Get the disease diagnosis result and detailed information.

## Demo

<img src="https://github.com/umutulasdemir/plant-disease-detection-swiftui/assets/68897681/3df9940c-5d90-429b-be97-3ffd12634950" width="350">

## Contributing

Feel free to fork the repository and submit pull requests. For major changes, please open an issue first to discuss what you would like to change.
