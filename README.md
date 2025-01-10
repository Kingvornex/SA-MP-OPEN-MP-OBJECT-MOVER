# Object Movement Script

## Description

This project is a script written in C++ designed to handle dynamic object creation and movement in a game or simulation environment. It leverages libraries such as `open.mp` and `streamer` to manage multiplayer interactions and object streaming. The primary functionality includes moving objects to specified coordinates with defined offsets and saving these movements into a log file for debugging or record-keeping purposes.

## Features

- **Dynamic Object Creation**: Create and position objects dynamically in the game world.
- **Position Offsets**: Apply predefined offsets to object coordinates for movement adjustments.
- **Logging**: Save object creation commands to a file for debugging and tracking purposes.
- **Directory Management**: Automatically create required directories if they do not exist.

## Installation

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/username/repository.git
   ```
2. **Navigate to the Project Directory**:
   ```bash
   cd repository
   ```
3. **Compile the Script**:
   Use your preferred C++ compiler to build the project.

## Usage

1. **Initialization**:
   Ensure the necessary directories exist or will be created by the script.
2. **Running the Script**:
   Execute the compiled script within your game or simulation environment.
3. **Logging**:
   Check the `MAP_FILE` (default: `ACNR/ACNR-DEBUG/MAPs.txt`) for a log of all object creation commands.

## Functions

### `MoveTheObject`
Moves an object to new coordinates with specified rotations and saves the command to a file.

- **Parameters**:
  - `modelid`: The ID of the model to be moved.
  - `Float:x`, `Float:y`, `Float:z`: The new coordinates for the object.
  - `Float:rx`, `Float:ry`, `Float:rz`: The rotation values for the object.

### `SaveDebug`
Saves a string to a specified file, creating the file if it does not exist.

- **Parameters**:
  - `const filename[]`: The path to the file.
  - `const stringl[]`: The string to be written to the file.

### `OnFilterScriptInit`
Initializes the script, creates necessary directories, and moves multiple objects.

## Contributing

1. **Fork the Repository**
2. **Create a New Branch**:
   ```bash
   git checkout -b feature/YourFeatureName
   ```
3. **Commit Your Changes**:
   ```bash
   git commit -m 'Add some feature'
   ```
4. **Push to the Branch**:
   ```bash
   git push origin feature/YourFeatureName
   ```
5. **Open a Pull Request**

## License

This project is licensed under the MIT License. See the LICENSE file for details.

## Contact

For questions or feedback, please contact [Your Name] at [Your Email].

