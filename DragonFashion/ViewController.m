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
    smaug.fullname = @"Smaug";
    self.dragons = [NSArray arrayWithObjects:smaug, nil];

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dragons.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    Dragon *dragon = [self.dragons objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCellID" forIndexPath:indexPath];
    cell.textLabel.text = dragon.fullname;
    return cell;
}


@end
