
#import "NSData+HexString.h"

@implementation NSData (HexString)

- (NSString *)hexString {
	NSMutableString *hex = [NSMutableString stringWithCapacity:[self length]*2];
	[self enumerateByteRangesUsingBlock:^(const void *bytes, NSRange byteRange, BOOL *stop) {
		const unsigned char *dataBytes = (const unsigned char *)bytes;
		for (NSUInteger i = byteRange.location; i < byteRange.length; ++i) {
			[hex appendFormat:@"%02x", dataBytes[i]];
		}
	}];
	return hex;
}

@end
