# QT_QML_PROJECTS

This repository contains a collection of Qt/QML projects, each housed in its own directory. The purpose of this repo is to showcase various GUI applications built using Qt and QML, demonstrating different functionalities and designs. Each project directory includes source files, resources, and build configurations, with a demo GIF for each project stored in the `projects_GIF` directory.

## Project Structure

The repository is organized as follows:
- **projectX/**: Directory for each project, containing source files (`main.cpp`, QML files), resources (e.g., images), and build files (e.g., `CMakeLists.txt`).
- **projects_GIF/**: Directory containing GIFs demonstrating each project's functionality.
- **readme.md**: This file, providing an overview and details of all projects.

## Projects

### Project 1: Image Viewer with Hover Buttons

**Description**:  
Project 1 is a simple Qt/QML application that displays an image viewer with interactive hover buttons. The interface consists of three buttons labeled "Cat," "Dog," and "Fish" on the left side. Clicking each button loads the corresponding image (e.g., `cat.jpg`, `dog.jpg`, or `fish.jpg`) into a display area on the right. The buttons change color when hovered over or clicked, providing visual feedback.

**Features**:
- Custom `MyHoverButton.qml` component for reusable buttons with hover and click effects.
- Image display with aspect ratio preservation using `Image.PreserveAspectFit`.
- Resource management via `resource.qrc` for embedding images.
- Responsive layout using QML anchors.

**Files**:
- `main.cpp`: Entry point for the Qt application.
- `Main.qml`: Main QML file defining the window and layout.
- `MyHoverButton.qml`: Custom QML component for buttons.
- `resource.qrc`: Qt resource file for images.
- `image/`: Directory containing `cat.jpg`, `dog.jpg`, and `fish.jpg`.
- `CMakeLists.txt`: Build configuration for the project.

**Demo**:  
![Project 1 Demo](projects_GIF/project1.gif)

**How to Run**:
1. Ensure Qt and CMake are installed.
2. Navigate to the `project1` directory.
3. Create a build directory: `mkdir build && cd build`.
4. Run `cmake ..` to generate build files.
5. Build the project: `make`.
6. Run the executable: `./project1`.

---

## Adding New Projects

To add a new project:
1. Create a new directory (e.g., `project2`) with your source files, resources, and `CMakeLists.txt`.
2. Add a demo GIF to the `projects_GIF` directory (e.g., `project2.gif`).
3. Update this `readme.md` with a new section describing the project, including a link to the GIF.

## Contributing

Feel free to fork this repository, add new projects, or improve existing ones. Submit pull requests with a clear description of changes and include a demo GIF for new projects.

## License

This repository is licensed under the MIT License. See [LICENSE](LICENSE) for details.