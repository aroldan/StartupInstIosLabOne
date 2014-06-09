//
//  HSGroceryAislesTableViewController.m
//  HelloWorldApp
//
//  Created by Anthony Roldan on 6/4/14.
//  Copyright (c) 2014 HubSpot. All rights reserved.
//

#import "HSGroceryAislesTableViewController.h"
#import "HSGroceryAisleCell.h"
#import "HSGroceryAisle.h"

@interface HSGroceryAislesTableViewController ()

@property (nonatomic) NSArray *aisles;

@end

@implementation HSGroceryAislesTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.aisles = [self generateAisles];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSArray *)generateAisles {
    // inline array declaration. cool.
    NSArray *aisleNames = @[
                            @"Produce",
                            @"Bread",
                            @"Juices",
                            @"Canned Goods",
                            @"Frozen Goods",
                            @"Meat",
                            @"Fish",
                            @"International Foods",
                            @"Beer and Wine",
                            ];
    
    NSArray *items = @[@"Taco Meat",
                       @"Tecate",
                       @"Cilantro",
                       @"Cheerios",
                       @"Peanut Butter",
                       @"Ice Cream",
                       @"Jelly",
                       @"Refried Beans",
                       @"Baguette",
                       @"Olives",
                       @"Chicken Breast",
                       @"Marshmallow Fluff",
                       @"Salmon",
                       @"Green Beans",
                       @"Canned Tuna",
                       @"Mint Chutney",
                       @"Carrots",
                       @"Sandwiches"];
    
    // NSArrays and NSDictionaries (including those declared statically) are immutable
    // if you want a mutable type, you have to say so.
    NSMutableArray *aisles = [[NSMutableArray alloc] init]; // [[NSObject alloc] init] is what you think should be new NSObject();
    
    for (NSString *aisleName in aisleNames) { // for .. in syntax is best practice
        // but how do we get the index?
        NSLog(@"I want to make aisle #n with name %@", aisleName);    }
    
    // if you need the index you can use this method
    [aisleNames enumerateObjectsUsingBlock:^(id aisleName, NSUInteger idx, BOOL *stop) {
        HSGroceryAisle *newAisle = [[HSGroceryAisle alloc] initWithName:aisleName andNumber:[NSNumber numberWithUnsignedInteger:idx + 1]];
        [aisles addObject:newAisle];
    }];

    return [aisles copy]; // copy to get an immutable copy of this array
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSLog(@"Preparing for segue.");
}

#pragma mark - UITableViewDelegate methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"Selected row with index %ld", indexPath.row);
}

#pragma mark - UITableViewDataSource methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.aisles count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // this is smart enough to create new cells if we need them, but will "recycle" cells to ensure smooth scrolling
    // and keep memory use under control once you have a lot of them.
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AisleCell" forIndexPath:indexPath];
    HSGroceryAisleCell *groceryCell = (HSGroceryAisleCell *) cell;

    // fetch model object
    HSGroceryAisle *aisle = self.aisles[indexPath.row];
    
    // assign properties to view
    [groceryCell.nameLabel setText:aisle.name];
    
    return cell;
}


@end
