//
//  ViewControllerEmpDetails.h
//  EmpDetails
//
//  Created by Vijay on 27/06/17.
//  Copyright © 2017 Neorays. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EmpModel.h"

@interface ViewControllerEmpDetails : UIViewController

@property (strong,nonatomic) NSString *nme,*eid;


@property (weak, nonatomic) IBOutlet UILabel *l1;
@property (weak, nonatomic) IBOutlet UILabel *l2;
@property (weak, nonatomic) IBOutlet UILabel *l3;
@property (weak, nonatomic) IBOutlet UILabel *l4;

@property (strong, nonatomic) EmpModel *empDetails;

//@property (nonatomic, assign) id<ViewControllerDelegate> delegate;
//@property(nonatomic,assign) id<UIPageViewControllerDelegate> delegate;
@end
