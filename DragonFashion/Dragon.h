//
//  Dragon.h
//  DragonFashion
//
//  Created by Syed Amaanullah on 1/13/15.
//  Copyright (c) 2015 Syed Amaanullah. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dragon : NSObject
@property NSString *fullname;
@property NSString *signatureClothingItem;
-(instancetype)initWithFullname:(NSString *)fullname;
-(instancetype)initWithFullname:(NSString *)fullname signatureClothingItem:(NSString *)clothingItem;

@end
