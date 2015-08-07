//
//  Macro.h
//  GithubDemo001
//
//  Created by FairyLand on 15/3/30.
//  Copyright (c) 2015年 fulan. All rights reserved.
//

#ifndef GithubDemo001_Macro_h
#define GithubDemo001_Macro_h

/**Test Bg Color
 *  [UIColor cyanColor]
 *  [UIColor whiteColor]
 *  [UIColor clearColor]
 */
#define kTestBGColor [UIColor clearColor]

/**
 *  适配
 */
# define kMainScreen [[UIScreen mainScreen]bounds]
# define kMainScreen_size [[UIScreen mainScreen]bounds].size
# define kMainScreen_height [[UIScreen mainScreen]bounds].size.height
# define kMainScreen_width [[UIScreen mainScreen]bounds].size.width
/**640*1136||1242*2208
 *  1/3G/3GS        4/4S            5/5S                6                    6S
 *  320*480 -->> 640*960 -->> 640*1136 -->>750*1334 -->>1080*1920(1242*2208)
 *  Scale:(5||6 -->> 5s||6s)
 tabBar,navBar:x1.5
 banner            :640*260 -->> 750*304 -->>795*387
 *              6 -->> 6s:
 *
 *
 *[UIScreen mainScreen].scale)
 */
#define kScale(__size__) ({\
CGFloat scale = [UIScreen mainScreen].scale;\
(__size__) * scale / 3.f;\
})

//Alert 消息
#define kAlertMSGNil(__msg__) [[[UIAlertView alloc]initWithTitle:@"温馨提示" message:(__msg__) delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil]show]


/***************__***************/
#ifndef kNSLog_AllStruct
#define kNSLog_AllStruct YES
#define kNSLog_CGRect(_rect_) NSLog(@"%s x=%f, y=%f, w=%f, h=%f", #_rect_, _rect_.origin.x, _rect_.origin.y,_rect_.size.width, _rect_.size.height)
#define kNSLog_CGSize(_size_) NSLog(@"%s w=%f, h=%f", #_size_, _size_.width, _size_.height)
#define kNSLog_CGPoint(_point_) NSLog(@"%s x=%f, y=%f", #_point_, _point_.x, _point_.y)
#define kNSLog_NSIndexPath(_indexPath_) NSLog(@"%s_row:%d\tsection:%d",@_indexPath_,_indexPath_.row,_indexPath_.section);
#define kNSLog_UIEdges(_edges_) NSLog(@"%s left=%f, right=%f, top=%f, bottom=%f",#_edges_, _edges_.left, _edges_.right,_edges_.top, _edges_.bottom)
#define kNSLog_UIColorHSV(_color_) NSLog(@"%s h=%f, s=%f, v=%f", #_color_, _color_.hue, _color_.saturation, _color_.value)
#define kNSLog_AllSubviews(_view_) \
{\
for (UIView* view = _view_; view; view = view.superview)\
{ \
NSLog(@"%@", view);\
} \
}
#endif



#endif
