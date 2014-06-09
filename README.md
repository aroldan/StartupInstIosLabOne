# HelloWorldApp

### Lab 1 in the iOS Learning Series

Let's get started with a simple app with two tabs. Check out this repository and open the project in Xcode. Run it in the simulator and you will see a simple app.

One tab is just a static view, while the other is a UITableView with a list of objects.

### Goals

In this lab, you should accomplish several things:

 1. Add new aisles to the list of aisles in the UITableView.
 1. Modify the UITableView to show the number of each aisle as well as the name.
 1. Modify the `generateAisles` method to attach random items to each aisle.
 1. Make it so that tapping on each aisle brings you to a new UITableView with items from that aisle.

If you look in the Models folder, you'll see that each `HSGroceryAisle` has an NSArray called `items`. The aisles are set up in the `generateAisles` method of `HSGroceryAislesTableViewController`.

Need some hints? Peek in the hints folder.