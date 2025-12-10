enum Constants {
    /// Icon Names
    static var closeIconName: String { "xmark.circle.fill" }
    static var menuIconName: String { "line.3.horizontal" }
    static var houseFillIconName: String { "house.fill" }
    static var folderFillIconName: String { "folder.fill" }
    static var paperplaneFillIconName: String { "paperplane.fill" }
    static var pencilCircleFillIconName: String { "pencil.circle.fill" }
    
    static var imageList: [String] {
        [Constants.houseFillIconName, Constants.folderFillIconName, Constants.paperplaneFillIconName, Constants.pencilCircleFillIconName]
    }

    static var homeText: String { "Home" }
    static var filesText: String { "Files" }
    static var sendText: String { "Send" }
    static var editText: String { "Edit" }
    
    static var textList: [String] { [Constants.homeText, Constants.filesText, Constants.sendText, Constants.editText] }
}
