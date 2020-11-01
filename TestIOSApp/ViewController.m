//
//  ViewController.m
//  TestSingleApp
//
//  Created by Leach Chen on 2020/10/31.
//

#import "ViewController.h"

@interface ViewController ()
//@property (weak, nonatomic) IBOutlet UIButton *test;
- (void)showError:(NSString *)errorMsg;
@property UIButton *loginBtn;
@property UIButton *loginBtn1;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    [self.view setBackgroundColor:[UIColor whiteColor]];
//    UILabel *loginLab = [[UILabel alloc] initWithFrame:CGRectMake(55, 43, 199, 80)];
//    [loginLab setText:@"测试文本"];
//    [loginLab setBackgroundColor:[UIColor grayColor]];
//    [self.view addSubview:loginLab];

    self.loginBtn = [[UIButton alloc] initWithFrame:self.view.bounds];
    [self.loginBtn setBackgroundColor:[UIColor grayColor]];
    [self.loginBtn addTarget:self action:@selector(button:) forControlEvents:UIControlEventTouchUpInside];
    [self.loginBtn setTag:101];
    [self.view addSubview:self.loginBtn];
    
//    self.loginBtn1 = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
//    [self.loginBtn1 setBackgroundColor:[UIColor redColor]];
//    [self.loginBtn1 addTarget:self action:@selector(button1:) forControlEvents:UIControlEventTouchUpInside];
//    [self.loginBtn1 setTag:102];
//    [self.view addSubview:self.loginBtn1];
    
    //[self.loginBtn1 setHidden:true];
    
}

-(void)button:(UIButton *) button{
    [self.loginBtn1 setHidden:false];
    [self.loginBtn1 setBounds:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
}

-(void)button1:(UIButton *) button{
    [self.loginBtn setHidden:false];
    [self.view bringSubviewToFront:self.loginBtn];
    [self.loginBtn1 setBounds:CGRectMake(37, 180, 317, 237)];
}

//- (IBAction)test:(id)sender {
//    NSLog(@"aaaaaaaabbb");
//    [self showError:@"Test Message"];
//}

- (void)showError:(NSString *)errorMsg {
    // 1.弹框提醒
    // 初始化对话框
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:errorMsg preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil]];
    // 弹出对话框
    [self presentViewController:alert animated:true completion:nil];
}


@end
