//
//  ViewController.m
//  DragonFashion
//
//  Created by Syed Amaanullah on 1/13/15.
//  Copyright (c) 2015 Syed Amaanullah. All rights reserved.
//

#import "ViewController.h"
#import "Dragon.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSArray *dragons;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Dragon *smaug = [[Dragon alloc]init];
    smaug.fullname = @"Smaug the Magnificent";
    smaug.signatureClothingItem = @"Snapback";
    Dragon *joe = [[Dragon alloc]init];
    joe.fullname = @"Joe Dra Gon";
    joe.signatureClothingItem = @"Hoodie";
    Dragon *bob = [[Dragon alloc]init];
    bob.fullname = @"Bobo";
    bob.signatureClothingItem = @"Leather Jacket";
    Dragon *max = [[Dragon alloc]init];
    max.fullname = @"Max the Mighty";
    max.signatureClothingItem = @"Jeans";
    self.dragons = [NSArray arrayWithObjects:smaug, joe, bob, max, nil];

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


@end
