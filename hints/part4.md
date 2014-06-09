# Make it so that tapping on each aisle brings you to a new UITableView with items from that aisle.

To add a new UITableViewController, we need to create a new view on the storyboard and link it to a new class.

Find Table View Controller in the components library of Interface Builder, and drag it into the storyboard. 

Now we have to create a custom class that will extend UITableViewController and implement methods. The existing file `HSGroceryAislesTableViewController` is pretty close.

Once you've created that class, you can link it to the view in your storyboard with the identity inspector on the right side of Interface Builder.

There are two ways to make the drill down work:

* You can create a "selection segue" by control-clicking the cell in the first table view and dragging it to the new TableView. To pass variables to the new UITableViewController, you can add implementation details to the `prepareForSegue` method of `HSGroceryAislesTableViewController`.
* You can name the second TableViewControler with a storyboard ID and use the [instantiateViewControllerWithIdentifier](https://developer.apple.com/library/ios/documentation/uikit/reference/UIStoryboard_Class/Reference/Reference.html#//apple_ref/occ/instm/UIStoryboard/instantiateViewControllerWithIdentifier:) method of the UIStoryboard. To pass variables, you can set the properties of the new UIViewController after instantiating it and then use the `self.navigationController pushViewController:animated:` method to push it onto the stack.

Both are totally legit.