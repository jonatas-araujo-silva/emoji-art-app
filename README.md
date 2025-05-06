# 🎨 Emoji Art App – SwiftUI Project

This project is a SwiftUI-based **emoji artwork canvas**, designed to demonstrate advanced user interaction techniques, modern UI composition, and a clean MVVM architecture.

---

## 🚀 Key Highlights

### 🧱 Declarative UI with SwiftUI

- Entire UI built using **SwiftUI**, with responsive layouts, `GeometryReader`, `ZStack`, `VStack`, and custom `Canvas` views.
- Demonstrates **layered view composition** and adaptive layout behavior for dynamic canvas resizing.

### 🧠 State Management

- `@State`, `@GestureState`, and `@ObservedObject` to manage user interactions and emoji placement.
- UI updates **reactively** with drag-and-drop positioning and canvas zooming.

### 🧰 Swift Proficiency

- **Structs & Classes**: Distinction between view models, models, and views using Swift best practices.
- **Drag and Drop APIs**: Integrates native iOS drag-and-drop using `onDrop`, `NSItemProvider`, and asynchronous decoding.
- **Gesture Recognition**: Uses `MagnificationGesture` and `DragGesture` for canvas zoom/pan behavior.
- **Animation**: Smooth transitions and emoji movement with implicit animations.

### 🧩 MVVM Architecture

- **Model**: `EmojiArtModel` defines the canvas state and emoji positions.
- **ViewModel**: `EmojiArtDocument` (as `ObservableObject`) handles app logic and state.
- **View**: `EmojiArtDocumentView` builds the canvas, palette, and drag-drop interactions.

### 👆 Handling User Interaction

- Supports **drag-and-drop** of emojis from a palette onto a resizable canvas.
- Handles **pinch-to-zoom**, **double-tap to zoom-to-fit**, and **pan gestures** for full control of the canvas view.
- Dragging emojis around the canvas updates their position in real time.

### 🎨 Animations & Gestures

- Smooth emoji dragging and scaling via **SwiftUI animations**.
- Supports **gesture composition**: pinch-to-zoom, pan, and tap gestures work together seamlessly.

### 💾 Data Persistence

- Document-based architecture allows saving and restoring emoji artwork.
- Supports **undo/redo**, integrating with `UIDocument` for file management.

### 📁 Code Organization & Modularity

- Architecture ready for **feature expansion**, such as multiple canvas layers or user-defined palettes.
