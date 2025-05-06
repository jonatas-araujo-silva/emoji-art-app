
import SwiftUI


private struct EmojiBackground: ViewModifier, Animatable {
    var isSelected: Bool
    
    func body(content: Content) -> some View {
        RoundedRectangle(cornerRadius: Constants.selectedEmojiCornerRadius)
            .stroke(isSelected ? Color.green : Color.clear,
                    lineWidth: Constants.selectedEmojiLineWidth)
            .overlay(content)
    }
    
    private struct Constants {
        static let selectedEmojiCornerRadius = CGFloat(12)
        static let selectedEmojiLineWidth = CGFloat(5)
    }
}

extension View {
    func emojiBackground(isSelected: Bool) -> some View {
        modifier(EmojiBackground(isSelected: isSelected))
    }
}

private struct EmojiContextMenu: ViewModifier {
    let onDeleteAction: () -> Void
    
    init(_ onDelete: @escaping () -> Void) {
        onDeleteAction = onDelete
    }
    
    func body(content: Content) -> some View {
        content.contextMenu {
            AnimatedActionButton("Delete", systemImage: "minus.circle", role: .destructive) {
                withAnimation {
                    onDeleteAction()
                }
            }
        }
    }
}

extension View {
    func emojiContextMenu(onDeleteAction: @escaping () -> Void) -> some View {
        modifier(EmojiContextMenu(onDeleteAction))
    }
}
