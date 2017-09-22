//
//  ViewController.h
//  EmpDetails
//
//  Created by Vijay on 27/06/17.
//  Copyright © 2017 Neorays. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewControllerEmpDetails.h"
#import "EmpModel.h"

@interface ViewController : UIViewController


//- (IBAction)okButton:(UIButton *)sender;

//@property(nonatomic,strong) UITextField *activeField;
//@property (nonatomic, retain) NSMutableArray* data;
@property (strong, nonatomic) EmpModel *selectedEmployee;
@property(nonatomic,strong) NSArray *empList;
//@property(nonatomic,strong) NSArray *empIdArray;

@end

