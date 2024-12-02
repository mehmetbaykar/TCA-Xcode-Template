
# Xcode TCA Template

## Overview

This repository provides a **TCA (The Composable Architecture) Template** for Xcode, making it easy for developers to scaffold projects with TCA support quickly. The template is pre-configured to take advantage of the latest **TCA** and **SwiftUI** features, allowing for more structured and maintainable Swift apps.

## TCA Architecture

The Composable Architecture is a library for building modular, predictable, and testable applications. Below is a visual representation of its architecture:

![TCA Architecture](https://github.com/mehmetbaykar/TCA-Xcode-Template/blob/master/Images/image_tca_graph.webp?raw=true)

## Compatibility

This template is compatible with the following:

- **TCA Version**: Designed to work with **TCA 1.15.0**, which includes the new **Reducer Macro**.
- **Swift Version**: Requires **Swift 5.9** or higher.
- **Xcode Version**: Tested with **Xcode 16.0 RC**.

## Installation Instructions

Follow the steps below to install the Xcode TCA template:

### 1. Download the Repository
- Either download the repository directly or clone it using Git.

### 2. Navigate to Xcode's File Templates Directory
- In your terminal, run the following command to go to the correct directory where Xcode expects to find templates:
  
  ```bash
  cd ~/Library/Developer/Xcode/Templates/File\ Templates/
  ```

  *(Note: If this directory does not exist, create it manually using Finder or `mkdir` in the terminal.)*

### 3. Add the Template
- Copy and paste the `Feature.xctemplate` folder from the downloaded repository into this directory:
  
  ```bash
  ~/Library/Developer/Xcode/Templates/File\ Templates/Feature.xctemplate/
  ```

### 4. Use the Template in Xcode
- Open Xcode, start a new project, and when you add a new file, the `Feature` template should be available in the options.

## Folder Structure

Let's walk through an example of using this template. Imagine you're adding a feature called `AddItem` using this template. The resulting folder structure would look like this:
```
AddItem/
├── AddItemFeature.swift
├── AddItemView.swift
```

In this example, two key files are created:

- `AddItemFeature.swift`: This file contains the **Reducer** logic, handling state and actions related to the feature.
- `AddItemView.swift`: This file defines the **SwiftUI View** for the feature, linking user interactions to the state and actions in `AddItemFeature`.

This structure helps keep your code organized and modular, ensuring separation of concerns between the business logic and the user interface.


## Code Breakdown

### AddItemFeature.swift

This file contains the logic for managing the state and actions of the **AddItem** feature. Here's the complete code:

```swift
import ComposableArchitecture
import Foundation

@Reducer
public struct AddItemFeature {
    @ObservableState public struct State: Equatable {
        public var title = "AddItem"
    }

    public enum Action: Equatable {
        case setTitle(String)
        case onAppear
    }

    public var body: some Reducer<State, Action> {
        Reduce { state, action in
            switch action {
            case let .setTitle(title):
                state.title = title
                return .none

            case .onAppear:
                return .none
            }
        }
    }
}
```

### AddItemView.swift

This file defines the user interface and connects it to the feature's state and actions using **SwiftUI**:

```swift
import ComposableArchitecture
import SwiftUI

struct AddItemView: View {
    @Bindable var store: StoreOf<AddItemFeature>

    var body: some View {
        Form {
            Text("Hello World")
        }
        .navigationTitle(Text(store.title))
        .onAppear {
            store.send(.onAppear)
        }
    }
}

#if DEBUG

    #Preview {
        @Previewable var store: StoreOf<AddItemFeature> = .init(
            initialState: AddItemFeature.State()
        ) {
            AddItemFeature()
        }

        NavigationStack {
            AddItemView(store: store)
        }
    }

#endif
```

## How This Template Helps You

By using this template, you get a boilerplate setup for TCA-based development. It includes a ready-to-use **Reducer** and a **SwiftUI View**. This speeds up the process of setting up new features in your app and ensures your architecture stays modular, testable, and maintainable.

## Feedback

Feel free to try out the template and share any feedback or issues you may encounter!

## References

- [The Composable Architecture](https://github.com/pointfreeco/swift-composable-architecture)
- [Pointfree](https://www.pointfree.co)
- [Xcode Project and File Templates](https://www.kodeco.com/26582967-xcode-project-and-file-templates)

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=mehmetbaykar/TCA-Xcode-Template&type=Date)](https://star-history.com/#mehmetbaykar/TCA-Xcode-Template&Date)
