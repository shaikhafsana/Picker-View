//
//  ViewController.m
//  ASPickerController
//
//  Created by Felix ITs 02 on 20/02/17.
//  Copyright © 2017 Afsana. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cameraAction:(id)sender {
    UIImagePickerController *picker=[[UIImagePickerController alloc]init];
    picker.delegate=self;
    picker.sourceType=UIImagePickerControllerSourceTypeCamera;
    picker.allowsEditing=YES;
    [self presentViewController:picker animated:YES completion:nil];
}

- (IBAction)galleryAction:(id)sender {
    UIImagePickerController *picker=[[UIImagePickerController alloc]init];
    picker.delegate=self;
    picker.sourceType=UIImagePickerControllerSourceTypePhotoLibrary;
    picker.allowsEditing=YES;
    [self presentViewController:picker animated:YES completion:nil];

}
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(nullable NSDictionary<NSString *,id> *)editingInfo NS_DEPRECATED_IOS(2_0, 3_0);
{
    NSLog(@"%@",editingInfo);
    UIImage *imge = editingInfo [UIImagePickerControllerOriginalImage];
    _imgView.image=imge;
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
