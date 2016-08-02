//
//  ViewController.m
//  TextView
//
//  Created by youminuo on 16/8/2.
//  Copyright © 2016年 youminuo. All rights reserved.
//

#import "ViewController.h"
#import "TextView.h"

@interface ViewController ()<UITextViewDelegate>
@property (nonatomic,strong) TextView *textView;
@property (nonatomic,strong) UIButton *submitButton;
@end

@implementation ViewController
#pragma mark 懒加载
- (TextView *)textView {
    if (_textView == nil) {
        _textView = [[TextView alloc] initWithFrame:CGRectMake(0, 30, self.view.frame.size.width, 150)];
        _textView.font = [UIFont systemFontOfSize:15];
        _textView.placeholder = @"请输入您要反馈的问题";
        _textView.alwaysBounceVertical = YES;
        _textView.keyboardDismissMode = UIScrollViewKeyboardDismissModeOnDrag;
        _textView.delegate = self;
    }
    return _textView;
}

- (UIButton *)submitButton{
    if (!_submitButton) {
        _submitButton = [[UIButton alloc]initWithFrame:CGRectMake(76, 230, self.view.frame.size.width - 76 * 2, 45)];
        _submitButton.backgroundColor = [UIColor grayColor];
        [_submitButton setTitle:@"提交" forState:UIControlStateNormal];
        [_submitButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _submitButton.layer.cornerRadius = 5;
        _submitButton.enabled = NO;
    }
    return _submitButton;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor blackColor];
    [self.view addSubview:self.textView];
    [self.view addSubview:self.submitButton];
}

#pragma mark UITextViewDelegate
- (void)textViewDidChange:(UITextView *)textView {
    if (self.textView.hasText) {
        self.submitButton.backgroundColor = [UIColor yellowColor];
    }else{
        self.submitButton.backgroundColor = [UIColor grayColor];
    }
    self.submitButton.enabled = self.textView.hasText;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
