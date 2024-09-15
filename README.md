
# Xcode TCA Template

## Overview

This repository provides a **TCA (The Composable Architecture) Template** for Xcode, allowing developers to quickly scaffold projects with built-in TCA support. It's designed to work with the latest features of **TCA** and **SwiftUI**.

## TCA Architecture

![TCA Architecture](https://github.com/mehmetbaykar/TCA-Xcode-Template/blob/master/Images/image_tca_graph.webp?raw=true)

## Compatibility

- **TCA Version**: Compatible with **TCA 1.15.0** using the new **Reducer Macro**.
- **Swift Version**: Supports **Swift 6.0**.
- **Xcode Version**: Tested with **Xcode 16.0 RC**.

## Installation Instructions

To install the Xcode TCA template, follow these steps:

### 1. Download the Repository
- Download or clone this repository to your local machine.

### 2. Navigate to Xcode's File Templates Directory
- Open your terminal and run the following command to navigate to the Xcode File Templates directory:
  
  ```bash
  cd ~/Library/Developer/Xcode/Templates/File\ Templates/
  ```
  *(If the `File Templates` folder does not exist, create it manually.)*

### 3. Add the Template
- Copy and paste the `Feature.xctemplate` folder into:

  ```bash
  ~/Library/Developer/Xcode/Templates/File\ Templates/{Feature.xctemplate}
  ```

### 4. Use the Template
- Open Xcode, create a new project, and add a new file. You should now see the `Feature` template available among the options.

## Feedback

Feel free to try it out and let me know what you think!

## References

- [The Composable Architecture](https://github.com/pointfreeco/swift-composable-architecture)
- [Pointfree](https://www.pointfree.co)
- [Xcode Project and File Templates](https://www.kodeco.com/26582967-xcode-project-and-file-templates)
