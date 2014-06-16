
#import "NSData+Hash.h"
#import "NSData+HexString.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSData (Hash)

#define DATA_BY_HASHING_WITH(ALG) \
- (NSData *)dataByHashingWith##ALG {\
	unsigned char hash[CC_##ALG##_DIGEST_LENGTH];\
	if (CC_##ALG([self bytes], (CC_LONG)[self length], hash)) {\
		NSData *data = [NSData dataWithBytes:hash length:CC_##ALG##_DIGEST_LENGTH];\
		return data;\
	}\
	return nil;\
}

#define STRING_BY_HASHING_WITH(ALG) \
- (NSString *)stringByHashingWith##ALG {\
	return [[self dataByHashingWith##ALG] hexString];\
}

DATA_BY_HASHING_WITH(MD2)
DATA_BY_HASHING_WITH(MD4)
DATA_BY_HASHING_WITH(MD5)
DATA_BY_HASHING_WITH(SHA1)
DATA_BY_HASHING_WITH(SHA224)
DATA_BY_HASHING_WITH(SHA256)
DATA_BY_HASHING_WITH(SHA384)
DATA_BY_HASHING_WITH(SHA512)

STRING_BY_HASHING_WITH(MD2)
STRING_BY_HASHING_WITH(MD4)
STRING_BY_HASHING_WITH(MD5)
STRING_BY_HASHING_WITH(SHA1)
STRING_BY_HASHING_WITH(SHA224)
STRING_BY_HASHING_WITH(SHA256)
STRING_BY_HASHING_WITH(SHA384)
STRING_BY_HASHING_WITH(SHA512)

@end
