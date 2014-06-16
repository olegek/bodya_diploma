
#import "NSString+Hash.h"
#import "NSData+Hash.h"
#import "NSData+HexString.h"

@implementation NSString (Hash)

#define DATA_BY_HASHING_WITH(ALG) \
- (NSData *)dataByHashingWith##ALG##UsingEncoding:(NSStringEncoding)encoding {\
	NSData *data = [self dataUsingEncoding:encoding];\
	return [data dataByHashingWith##ALG];\
}

#define STRING_BY_HASHING_WITH(ALG) \
- (NSString *)stringByHashingWith##ALG##UsingEncoding:(NSStringEncoding)encoding {\
	return [[self dataByHashingWith##ALG##UsingEncoding:encoding] hexString];\
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
