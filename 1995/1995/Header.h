//
//  Header.h
//  1995
//
//  Created by Lg on 2017/3/15.
//  Copyright © 2017年 Lg. All rights reserved.
//



#ifndef PrefixHeader_pch
#define PrefixHeader_pch

/*** 如果希望某些内容能拷贝到任何源代码文件(OC\C\C++等), 那么就不要写在#ifdef __OBJC__和#endif之间 ***/


/***** 在#ifdef __OBJC__和#endif之间的内容, 只会拷贝到OC源代码文件中, 不会拷贝到其他语言的源代码文件中 *****/
#ifdef __OBJC__



/*** 日志 ***/
#ifdef DEBUG
#define XMGLog(...) NSLog(__VA_ARGS__)
#else
#define XMGLog(...)
#endif

#define XMGLogFunc XMGLog(@"%s", __func__);

/*** 颜色 ***/
#define XMGColorA(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)/255.0]
#define XMGColor(r, g, b) XMGColorA((r), (g), (b), 255)
#define XMGRandomColor XMGColor(arc4random_uniform(255), arc4random_uniform(255), arc4random_uniform(255))
#define XMGrayColor(v) XMGColor((v), (v), (v))
#define XMGCommonBgColor XMGrayColor(206)

#endif
/***** 在#ifdef __OBJC__和#endif之间的内容, 只会拷贝到OC源代码文件中, 不会拷贝到其他语言的源代码文件中 *****/

#endif
