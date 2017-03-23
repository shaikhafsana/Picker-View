//
//  ViewController.h
//  ASPickerController
//
//  Created by Felix ITs 02 on 20/02/17.
//  Copyright © 2017 Afsana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@property (strong, nonatomic) IBOutlet UIImageView *imgView;
- (IBAction)cameraAction:(id)sender;

- (IBAction)galleryAction:(id)sender;

@end

