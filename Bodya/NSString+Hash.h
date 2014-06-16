

#import <Foundation/Foundation.h>

@interface NSString (Hash)

- (NSData *)dataByHashingWithMD2UsingEncoding:(NSStringEncoding)encoding;
- (NSData *)dataByHashingWithMD4UsingEncoding:(NSStringEncoding)encoding;
- (NSData *)dataByHashingWithMD5UsingEncoding:(NSStringEncoding)encoding;
- (NSData *)dataByHashingWithSHA1UsingEncoding:(NSStringEncoding)encoding;
- (NSData *)dataByHashingWithSHA224UsingEncoding:(NSStringEncoding)encoding;
- (NSData *)dataByHashingWithSHA256UsingEncoding:(NSStringEncoding)encoding;
- (NSData *)dataByHashingWithSHA384UsingEncoding:(NSStringEncoding)encoding;
- (NSData *)dataByHashingWithSHA512UsingEncoding:(NSStringEncoding)encoding;
- (NSString *)stringByHashingWithMD2UsingEncoding:(NSStringEncoding)encoding;
- (NSString *)stringByHashingWithMD4UsingEncoding:(NSStringEncoding)encoding;
- (NSString *)stringByHashingWithMD5UsingEncoding:(NSStringEncoding)encoding;
- (NSString *)stringByHashingWithSHA1UsingEncoding:(NSStringEncoding)encoding;
- (NSString *)stringByHashingWithSHA224UsingEncoding:(NSStringEncoding)encoding;
- (NSString *)stringByHashingWithSHA256UsingEncoding:(NSStringEncoding)encoding;
- (NSString *)stringByHashingWithSHA384UsingEncoding:(NSStringEncoding)encoding;
- (NSString *)stringByHashingWithSHA512UsingEncoding:(NSStringEncoding)encoding;

@end
