# Swift---Generic-resolvers

#### Swift - resolve table cell by generic

Usage:

Cell implementation:
```swift
class MyCellTableViewCell: UITableViewCell, IdentifierProtocol {
}
```
Cell registration - somewhere in viewController:
```swift
class MyCellTableViewCell: UITableViewCell, IdentifierProtocol {
    func registerCell() {
        myTable.registerCell(cell: MyCellTableViewCell.self)
    }
    
    func getCell() -> UITableViewCell {
        let cell: MyCellTableViewCell = tableview.resolveCellIdentifier()
    }
}
```


#### Swift - resolve viewController from storyboard

Controller implementation:
```swift
class MyViewController: IdentifierProtocol, ControllerIdentifierProtocol {
    static var storyboarIdentifier: String = StoryboardNames.content.rawValue
}
```

Resolve ViewController from storyboard:
```swift
func loadMyViewController() {
    let myVc = MyViewController.loadFromStoryboard()
}
```
