//
//  ArrayData.m
//  RallyHealthPicker
//
//  Created by New on 9/30/14.
//
//

#import "ArrayData.h"

@implementation ArrayData

// theoretical array of data, in this case stings, stored in seperate model class
-(id)init
{
    _arrayOfStrings = [[NSMutableArray alloc] init];
    [_arrayOfStrings addObject:@"All"];
    [_arrayOfStrings addObject:@"Strings"];
    [_arrayOfStrings addObject:@"Accounted"];
    [_arrayOfStrings addObject:@"For"];
    
    return self;
}

@end
