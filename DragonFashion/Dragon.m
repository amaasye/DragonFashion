//
//  Dragon.m
//  DragonFashion
//
//  Created by Syed Amaanullah on 1/13/15.
//  Copyright (c) 2015 Syed Amaanullah. All rights reserved.
//

#import "Dragon.h"

@implementation Dragon


-(instancetype)initWithFullname:(NSString *)fullname {
    self = [super init];
    self.fullname = fullname;
    return self;
}

-(instancetype)initWithFullname:(NSString *)fullname signatureClothingItem:(NSString *)clothingItem {
    self = [self initWithFullname:fullname];
    self.signatureClothingItem = clothingItem;
    return self;
}
- (NSString *)description
{
    return [NSString stringWithFormat:@"Dragon: %@ (%@)", self.fullname, self.signatureClothingItem];
}



@end
