//
//  ViewControllerEmpDetails.m
//  EmpDetails
//
//  Created by Vijay on 27/06/17.
//  Copyright © 2017 Neorays. All rights reserved.
//

#import "ViewControllerEmpDetails.h"
#import "TableViewCell.h"
@interface ViewControllerEmpDetails ()

@end

@implementation ViewControllerEmpDetails

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@%@",self.nme,self.eid);
    self.l1.text = self.empDetails.eid;
    self.l2.text = self.empDetails.name;
    self.l3.text = self.empDetails.salary;
    self.l4.text = self.empDetails.designation;
      
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
