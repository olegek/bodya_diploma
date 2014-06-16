

#import <Foundation/Foundation.h>

@interface NSData (Hash)

- (NSData *)dataByHashingWithMD2;
- (NSData *)dataByHashingWithMD4;
- (NSData *)dataByHashingWithMD5;
- (NSData *)dataByHashingWithSHA1;
- (NSData *)dataByHashingWithSHA224;
- (NSData *)dataByHashingWithSHA256;
- (NSData *)dataByHashingWithSHA384;
- (NSData *)dataByHashingWithSHA512;
- (NSData *)stringByHashingWithMD2;
- (NSData *)stringByHashingWithMD4;
- (NSData *)stringByHashingWithMD5;
- (NSData *)stringByHashingWithSHA1;
- (NSData *)stringByHashingWithSHA224;
- (NSData *)stringByHashingWithSHA256;
- (NSData *)stringByHashingWithSHA384;
- (NSData *)stringByHashingWithSHA512;

@end
