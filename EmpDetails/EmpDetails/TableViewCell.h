//
//  TableViewCell.h
//  EmpDetails
//
//  Created by Vijay on 27/06/17.
//  Copyright © 2017 Neorays. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *name;

@property (weak, nonatomic) IBOutlet UILabel *empId;

@property (weak, nonatomic) IBOutlet UILabel *designation;

@property (weak, nonatomic) IBOutlet UILabel *salary;

@end
