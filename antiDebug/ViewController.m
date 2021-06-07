//
//  ViewController.m
//  antiDebug
//
//  Created by hank on 2021/5/31.
//

#import "ViewController.h"
#import "MyPtraceHeader.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //告诉系统,当前进程.拒绝被debugserver附加!
    //arg1:ptrace要做到事情
    //arg2:需要操作的进程
    //arg4/arg3:取决于第一个参数!
    ptrace(PT_DENY_ATTACH, 0, 0, 0);
    //如果附加就闪退!!
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"66666🍺🍺🍺🍺");
}


@end
