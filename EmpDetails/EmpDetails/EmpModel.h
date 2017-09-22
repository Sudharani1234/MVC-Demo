//
//  EmpModel.h
//  EmpDetails
//
//  Created by Vijay on 27/06/17.
//  Copyright © 2017 Neorays. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EmpModel : NSObject

@property (strong, nonatomic) NSString *name, *eid, *salary, *designation;

- (instancetype)initWithEmployeeDetails:(NSString *)name eid:(NSString *)empId salary:(NSString *)salary designation:(NSString *)desig;


@end
