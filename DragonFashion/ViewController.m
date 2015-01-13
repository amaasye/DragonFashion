//
//  ViewController.m
//  DragonFashion
//
//  Created by Syed Amaanullah on 1/13/15.
//  Copyright (c) 2015 Syed Amaanullah. All rights reserved.
//

#import "ViewController.h"
#import "Dragon.h"
#import "DragonViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSArray *dragons;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Dragon *smaug = [[Dragon alloc]initWithFullname:@"Smaug" signatureClothingItem:@"Snapback"];
    Dragon *joe = [[Dragon alloc]initWithFullname:@"Joe" signatureClothingItem:@"Hoodie"];
    Dragon *bob = [[Dragon alloc]initWithFullname:@"Bob" signatureClothingItem:@"Leather Jacket"];
    Dragon *max = [[Dragon alloc]initWithFullname:@"Max" signatureClothingItem:@"Jeans"];
    self.dragons = [NSArray arrayWithObjects:smaug, joe, bob, max, nil];

    for (Dragon *dragon in self.dragons) {
        NSLog(@"%@", dragon);
    }

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dragons.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    Dragon *dragon = [self.dragons objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCellID" forIndexPath:indexPath];
    cell.textLabel.text = dragon.fullname;
    cell.detailTextLabel.text = dragon.signatureClothingItem;
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSIndexPath *selectedIndexPath = self.tableView.indexPathForSelectedRow;
    Dragon *dragonThatWasTapped = [self.dragons objectAtIndex:selectedIndexPath.row];
    DragonViewController *vc = segue.destinationViewController;
    vc.dragon = dragonThatWasTapped;
}


@end
