#import <UIKit/UIKit.h>


@interface NHAppinfo : NSObject

@property (nonatomic, assign) NSInteger resultCount;

@property (nonatomic, strong) NSArray * advisories;
@property (nonatomic, strong) NSArray * appletvScreenshotUrls;
@property (nonatomic, assign) NSInteger artistId;
@property (nonatomic, strong) NSString * artistName;
@property (nonatomic, strong) NSString * artistViewUrl;
@property (nonatomic, strong) NSString * artworkUrl100;
@property (nonatomic, strong) NSString * artworkUrl512;
@property (nonatomic, strong) NSString * artworkUrl60;
@property (nonatomic, strong) NSString * bundleId;
@property (nonatomic, strong) NSString * contentAdvisoryRating;
@property (nonatomic, strong) NSString * currency;
@property (nonatomic, strong) NSString * currentVersionReleaseDate;
@property (nonatomic, strong) NSString * descriptionField;
@property (nonatomic, strong) NSArray * features;
@property (nonatomic, strong) NSString * fileSizeBytes;
@property (nonatomic, strong) NSString * formattedPrice;
@property (nonatomic, strong) NSArray * genreIds;
@property (nonatomic, strong) NSArray * genres;
@property (nonatomic, strong) NSArray * ipadScreenshotUrls;
@property (nonatomic, assign) BOOL isGameCenterEnabled;
@property (nonatomic, assign) BOOL isVppDeviceBasedLicensingEnabled;
@property (nonatomic, strong) NSString * kind;
@property (nonatomic, strong) NSArray * languageCodesISO2A;
@property (nonatomic, strong) NSString * minimumOsVersion;
@property (nonatomic, assign) double price;
@property (nonatomic, assign) NSInteger primaryGenreId;
@property (nonatomic, strong) NSString * primaryGenreName;
@property (nonatomic, strong) NSString * releaseDate;
@property (nonatomic, strong) NSString * releaseNotes;
@property (nonatomic, strong) NSArray * screenshotUrls;
@property (nonatomic, strong) NSString * sellerName;
@property (nonatomic, strong) NSArray * supportedDevices;
@property (nonatomic, strong) NSString * trackCensoredName;
@property (nonatomic, strong) NSString * trackContentRating;
@property (nonatomic, assign) NSInteger trackId;
@property (nonatomic, strong) NSString * trackName;
@property (nonatomic, strong) NSString * trackViewUrl;
@property (nonatomic, strong) NSString * version;
@property (nonatomic, strong) NSString * wrapperType;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;


@end
