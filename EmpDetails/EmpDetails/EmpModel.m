//
//  EmpModel.m
//  EmpDetails
//
//  Created by Vijay on 27/06/17.
//  Copyright © 2017 Neorays. All rights reserved.
//

#import "EmpModel.h"

@implementation EmpModel

- (instancetype)initWithEmployeeDetails:(NSString *)name eid:(NSString *)empId salary:(NSString *)salary designation:(NSString *)desig
{
    self = [super init];
    if (self) {
        self.name = name;
        self.eid = empId;
        self.salary = salary;
        self.designation = desig;

        
    }
    return self;
}





@end
