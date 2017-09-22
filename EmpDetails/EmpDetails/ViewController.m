//
//  ViewController.m
//  EmpDetails
//
//  Created by Vijay on 27/06/17.
//  Copyright © 2017 Neorays. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerEmpDetails.h"
#import "TableViewCell.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController
{
   // NSString *name,*empId;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
//    self.namesArray = @[@"Sudha",@"Bhagya",@"Raghu",@"Bhaskar"];
//    self.empIdArray = @[@"id01",@"id02",@"id03",@"id04"];
    
    
    EmpModel *emp1 = [[EmpModel alloc] initWithEmployeeDetails:@"raghu" eid:@"Emp 01" salary:@"1000" designation:@"Dev"];
    EmpModel *emp2 = [[EmpModel alloc] initWithEmployeeDetails:@"bhaskar" eid:@"Emp 02" salary:@"1000" designation:@"Dev"];
    EmpModel *emp3 = [[EmpModel alloc] initWithEmployeeDetails:@"bhagya" eid:@"Emp 03" salary:@"1000" designation:@"Dev"];
    
    
    EmpModel *emp4 = [[EmpModel alloc] initWithEmployeeDetails:@"Sudha" eid:@"Emp 04" salary:@"1000" designation:@"Dev"];
    
    
    
    self.empList = [[NSArray alloc] initWithObjects:emp1,emp2,emp3,emp4 ,nil];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
    
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.empList.count;
    
}



-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
 
   EmpModel *emp = [self.empList objectAtIndex:indexPath.row];

    
    //    NSLog(@"row1 is %ld", (long)indexPath.row);
//    
//
//    cell.empId.text = [self.empIdArray objectAtIndex:indexPath.row];
//    NSLog(@"row2 is %ld",(long)indexPath.row);
    
    
    
    cell.empId.text = emp.eid;
    cell.name.text = emp.name;
    cell.salary.text = emp.salary;
    cell.designation.text = emp.designation;
    return cell;
}
//- (IBAction)okButton:(UIButton *)sender {
//    
//    
//    [self performSegueWithIdentifier:@"details" sender:self];
//}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.selectedEmployee = [self.empList objectAtIndex:indexPath.row];
    //empId = [self.empIdArray objectAtIndex:indexPath.row];
    [self performSegueWithIdentifier:@"second" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{

    
    if ([segue.identifier isEqualToString:@"second"]) {
        ViewControllerEmpDetails *eDet = [segue destinationViewController];
        eDet.empDetails = self.selectedEmployee;
    }
}


@end
