### Project Overview - Birdwatching 
This project explores differences in binding techniques between TCA WithViewStore, TCA WithPerceptionTracking, and Vanilla SwiftUI.

The project consists of three identical views, differing only in how the data is handled. Each view reuses a simple increment/decrement bird counter subview. The main goal is to observe when the child view and parent view get re-rendered. To achieve this, a `.background(.random)` modifier was added to each parent and subview. The app also includes a reset counter functionality displayed in the parent view.

### Expectations
- When the bird count is incremented or decremented, only the child view should be re-rendered.
- When resetting the counter, the parent view should always be re-rendered, and the child view should only be re-rendered if the bird count was not equal to zero.

### Actual Results with TCA
Both the parent and child views are updated on every state update.

### Actual Results with Vanilla SwiftUI
Everything works as expected.

### Question
Am I doing something wrong with TCA bindings, or is this behavior expected?

https://github.com/mirkobraic/ExperimentingWithTCA/assets/22961673/cf0bfdc4-f2cc-4f3e-bfcd-9d8121874de7

