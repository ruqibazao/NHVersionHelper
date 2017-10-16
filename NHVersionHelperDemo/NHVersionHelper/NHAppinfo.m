//
//	NHAppinfo.m
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "NHAppinfo.h"

NSString *const kNHAppinfoResultCount = @"resultCount";

NSString *const kNHResultAdvisories = @"advisories";
NSString *const kNHResultAppletvScreenshotUrls = @"appletvScreenshotUrls";
NSString *const kNHResultArtistId = @"artistId";
NSString *const kNHResultArtistName = @"artistName";
NSString *const kNHResultArtistViewUrl = @"artistViewUrl";
NSString *const kNHResultArtworkUrl100 = @"artworkUrl100";
NSString *const kNHResultArtworkUrl512 = @"artworkUrl512";
NSString *const kNHResultArtworkUrl60 = @"artworkUrl60";
NSString *const kNHResultBundleId = @"bundleId";
NSString *const kNHResultContentAdvisoryRating = @"contentAdvisoryRating";
NSString *const kNHResultCurrency = @"currency";
NSString *const kNHResultCurrentVersionReleaseDate = @"currentVersionReleaseDate";
NSString *const kNHResultDescriptionField = @"description";
NSString *const kNHResultFeatures = @"features";
NSString *const kNHResultFileSizeBytes = @"fileSizeBytes";
NSString *const kNHResultFormattedPrice = @"formattedPrice";
NSString *const kNHResultGenreIds = @"genreIds";
NSString *const kNHResultGenres = @"genres";
NSString *const kNHResultIpadScreenshotUrls = @"ipadScreenshotUrls";
NSString *const kNHResultIsGameCenterEnabled = @"isGameCenterEnabled";
NSString *const kNHResultIsVppDeviceBasedLicensingEnabled = @"isVppDeviceBasedLicensingEnabled";
NSString *const kNHResultKind = @"kind";
NSString *const kNHResultLanguageCodesISO2A = @"languageCodesISO2A";
NSString *const kNHResultMinimumOsVersion = @"minimumOsVersion";
NSString *const kNHResultPrice = @"price";
NSString *const kNHResultPrimaryGenreId = @"primaryGenreId";
NSString *const kNHResultPrimaryGenreName = @"primaryGenreName";
NSString *const kNHResultReleaseDate = @"releaseDate";
NSString *const kNHResultReleaseNotes = @"releaseNotes";
NSString *const kNHResultScreenshotUrls = @"screenshotUrls";
NSString *const kNHResultSellerName = @"sellerName";
NSString *const kNHResultSupportedDevices = @"supportedDevices";
NSString *const kNHResultTrackCensoredName = @"trackCensoredName";
NSString *const kNHResultTrackContentRating = @"trackContentRating";
NSString *const kNHResultTrackId = @"trackId";
NSString *const kNHResultTrackName = @"trackName";
NSString *const kNHResultTrackViewUrl = @"trackViewUrl";
NSString *const kNHResultVersion = @"version";
NSString *const kNHResultWrapperType = @"wrapperType";


@interface NHAppinfo ()
@end
@implementation NHAppinfo

- (id)valueForUndefinedKey:(NSString *)key {

    return nil;
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {

}


/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if(![dictionary[kNHResultAdvisories] isKindOfClass:[NSNull class]]){
        self.advisories = dictionary[kNHResultAdvisories];
    }
    if(![dictionary[kNHResultAppletvScreenshotUrls] isKindOfClass:[NSNull class]]){
        self.appletvScreenshotUrls = dictionary[kNHResultAppletvScreenshotUrls];
    }
    if(![dictionary[kNHResultArtistId] isKindOfClass:[NSNull class]]){
        self.artistId = [dictionary[kNHResultArtistId] integerValue];
    }
    
    if(![dictionary[kNHResultArtistName] isKindOfClass:[NSNull class]]){
        self.artistName = dictionary[kNHResultArtistName];
    }
    if(![dictionary[kNHResultArtistViewUrl] isKindOfClass:[NSNull class]]){
        self.artistViewUrl = dictionary[kNHResultArtistViewUrl];
    }
    if(![dictionary[kNHResultArtworkUrl100] isKindOfClass:[NSNull class]]){
        self.artworkUrl100 = dictionary[kNHResultArtworkUrl100];
    }
    if(![dictionary[kNHResultArtworkUrl512] isKindOfClass:[NSNull class]]){
        self.artworkUrl512 = dictionary[kNHResultArtworkUrl512];
    }
    if(![dictionary[kNHResultArtworkUrl60] isKindOfClass:[NSNull class]]){
        self.artworkUrl60 = dictionary[kNHResultArtworkUrl60];
    }
    if(![dictionary[kNHResultBundleId] isKindOfClass:[NSNull class]]){
        self.bundleId = dictionary[kNHResultBundleId];
    }
    if(![dictionary[kNHResultContentAdvisoryRating] isKindOfClass:[NSNull class]]){
        self.contentAdvisoryRating = dictionary[kNHResultContentAdvisoryRating];
    }
    if(![dictionary[kNHResultCurrency] isKindOfClass:[NSNull class]]){
        self.currency = dictionary[kNHResultCurrency];
    }
    if(![dictionary[kNHResultCurrentVersionReleaseDate] isKindOfClass:[NSNull class]]){
        self.currentVersionReleaseDate = dictionary[kNHResultCurrentVersionReleaseDate];
    }
    if(![dictionary[kNHResultDescriptionField] isKindOfClass:[NSNull class]]){
        self.descriptionField = dictionary[kNHResultDescriptionField];
    }
    if(![dictionary[kNHResultFeatures] isKindOfClass:[NSNull class]]){
        self.features = dictionary[kNHResultFeatures];
    }
    if(![dictionary[kNHResultFileSizeBytes] isKindOfClass:[NSNull class]]){
        self.fileSizeBytes = dictionary[kNHResultFileSizeBytes];
    }
    if(![dictionary[kNHResultFormattedPrice] isKindOfClass:[NSNull class]]){
        self.formattedPrice = dictionary[kNHResultFormattedPrice];
    }
    if(![dictionary[kNHResultGenreIds] isKindOfClass:[NSNull class]]){
        self.genreIds = dictionary[kNHResultGenreIds];
    }
    if(![dictionary[kNHResultGenres] isKindOfClass:[NSNull class]]){
        self.genres = dictionary[kNHResultGenres];
    }
    if(![dictionary[kNHResultIpadScreenshotUrls] isKindOfClass:[NSNull class]]){
        self.ipadScreenshotUrls = dictionary[kNHResultIpadScreenshotUrls];
    }
    if(![dictionary[kNHResultIsGameCenterEnabled] isKindOfClass:[NSNull class]]){
        self.isGameCenterEnabled = [dictionary[kNHResultIsGameCenterEnabled] boolValue];
    }
    
    if(![dictionary[kNHResultIsVppDeviceBasedLicensingEnabled] isKindOfClass:[NSNull class]]){
        self.isVppDeviceBasedLicensingEnabled = [dictionary[kNHResultIsVppDeviceBasedLicensingEnabled] boolValue];
    }
    
    if(![dictionary[kNHResultKind] isKindOfClass:[NSNull class]]){
        self.kind = dictionary[kNHResultKind];
    }
    if(![dictionary[kNHResultLanguageCodesISO2A] isKindOfClass:[NSNull class]]){
        self.languageCodesISO2A = dictionary[kNHResultLanguageCodesISO2A];
    }
    if(![dictionary[kNHResultMinimumOsVersion] isKindOfClass:[NSNull class]]){
        self.minimumOsVersion = dictionary[kNHResultMinimumOsVersion];
    }
    if(![dictionary[kNHResultPrice] isKindOfClass:[NSNull class]]){
        self.price = [dictionary[kNHResultPrice] doubleValue];
    }
    
    if(![dictionary[kNHResultPrimaryGenreId] isKindOfClass:[NSNull class]]){
        self.primaryGenreId = [dictionary[kNHResultPrimaryGenreId] integerValue];
    }
    
    if(![dictionary[kNHResultPrimaryGenreName] isKindOfClass:[NSNull class]]){
        self.primaryGenreName = dictionary[kNHResultPrimaryGenreName];
    }
    if(![dictionary[kNHResultReleaseDate] isKindOfClass:[NSNull class]]){
        self.releaseDate = dictionary[kNHResultReleaseDate];
    }
    if(![dictionary[kNHResultReleaseNotes] isKindOfClass:[NSNull class]]){
        self.releaseNotes = dictionary[kNHResultReleaseNotes];
    }
    if(![dictionary[kNHResultScreenshotUrls] isKindOfClass:[NSNull class]]){
        self.screenshotUrls = dictionary[kNHResultScreenshotUrls];
    }
    if(![dictionary[kNHResultSellerName] isKindOfClass:[NSNull class]]){
        self.sellerName = dictionary[kNHResultSellerName];
    }
    if(![dictionary[kNHResultSupportedDevices] isKindOfClass:[NSNull class]]){
        self.supportedDevices = dictionary[kNHResultSupportedDevices];
    }
    if(![dictionary[kNHResultTrackCensoredName] isKindOfClass:[NSNull class]]){
        self.trackCensoredName = dictionary[kNHResultTrackCensoredName];
    }
    if(![dictionary[kNHResultTrackContentRating] isKindOfClass:[NSNull class]]){
        self.trackContentRating = dictionary[kNHResultTrackContentRating];
    }
    if(![dictionary[kNHResultTrackId] isKindOfClass:[NSNull class]]){
        self.trackId = [dictionary[kNHResultTrackId] integerValue];
    }
    
    if(![dictionary[kNHResultTrackName] isKindOfClass:[NSNull class]]){
        self.trackName = dictionary[kNHResultTrackName];
    }
    if(![dictionary[kNHResultTrackViewUrl] isKindOfClass:[NSNull class]]){
        self.trackViewUrl = dictionary[kNHResultTrackViewUrl];
    }
    if(![dictionary[kNHResultVersion] isKindOfClass:[NSNull class]]){
        self.version = dictionary[kNHResultVersion];
    }
    if(![dictionary[kNHResultWrapperType] isKindOfClass:[NSNull class]]){
        self.wrapperType = dictionary[kNHResultWrapperType];
    }
    return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
    NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
    if(self.advisories != nil){
        dictionary[kNHResultAdvisories] = self.advisories;
    }
    if(self.appletvScreenshotUrls != nil){
        dictionary[kNHResultAppletvScreenshotUrls] = self.appletvScreenshotUrls;
    }
    dictionary[kNHResultArtistId] = @(self.artistId);
    if(self.artistName != nil){
        dictionary[kNHResultArtistName] = self.artistName;
    }
    if(self.artistViewUrl != nil){
        dictionary[kNHResultArtistViewUrl] = self.artistViewUrl;
    }
    if(self.artworkUrl100 != nil){
        dictionary[kNHResultArtworkUrl100] = self.artworkUrl100;
    }
    if(self.artworkUrl512 != nil){
        dictionary[kNHResultArtworkUrl512] = self.artworkUrl512;
    }
    if(self.artworkUrl60 != nil){
        dictionary[kNHResultArtworkUrl60] = self.artworkUrl60;
    }
    if(self.bundleId != nil){
        dictionary[kNHResultBundleId] = self.bundleId;
    }
    if(self.contentAdvisoryRating != nil){
        dictionary[kNHResultContentAdvisoryRating] = self.contentAdvisoryRating;
    }
    if(self.currency != nil){
        dictionary[kNHResultCurrency] = self.currency;
    }
    if(self.currentVersionReleaseDate != nil){
        dictionary[kNHResultCurrentVersionReleaseDate] = self.currentVersionReleaseDate;
    }
    if(self.descriptionField != nil){
        dictionary[kNHResultDescriptionField] = self.descriptionField;
    }
    if(self.features != nil){
        dictionary[kNHResultFeatures] = self.features;
    }
    if(self.fileSizeBytes != nil){
        dictionary[kNHResultFileSizeBytes] = self.fileSizeBytes;
    }
    if(self.formattedPrice != nil){
        dictionary[kNHResultFormattedPrice] = self.formattedPrice;
    }
    if(self.genreIds != nil){
        dictionary[kNHResultGenreIds] = self.genreIds;
    }
    if(self.genres != nil){
        dictionary[kNHResultGenres] = self.genres;
    }
    if(self.ipadScreenshotUrls != nil){
        dictionary[kNHResultIpadScreenshotUrls] = self.ipadScreenshotUrls;
    }
    dictionary[kNHResultIsGameCenterEnabled] = @(self.isGameCenterEnabled);
    dictionary[kNHResultIsVppDeviceBasedLicensingEnabled] = @(self.isVppDeviceBasedLicensingEnabled);
    if(self.kind != nil){
        dictionary[kNHResultKind] = self.kind;
    }
    if(self.languageCodesISO2A != nil){
        dictionary[kNHResultLanguageCodesISO2A] = self.languageCodesISO2A;
    }
    if(self.minimumOsVersion != nil){
        dictionary[kNHResultMinimumOsVersion] = self.minimumOsVersion;
    }
    dictionary[kNHResultPrice] = @(self.price);
    dictionary[kNHResultPrimaryGenreId] = @(self.primaryGenreId);
    if(self.primaryGenreName != nil){
        dictionary[kNHResultPrimaryGenreName] = self.primaryGenreName;
    }
    if(self.releaseDate != nil){
        dictionary[kNHResultReleaseDate] = self.releaseDate;
    }
    if(self.releaseNotes != nil){
        dictionary[kNHResultReleaseNotes] = self.releaseNotes;
    }
    if(self.screenshotUrls != nil){
        dictionary[kNHResultScreenshotUrls] = self.screenshotUrls;
    }
    if(self.sellerName != nil){
        dictionary[kNHResultSellerName] = self.sellerName;
    }
    if(self.supportedDevices != nil){
        dictionary[kNHResultSupportedDevices] = self.supportedDevices;
    }
    if(self.trackCensoredName != nil){
        dictionary[kNHResultTrackCensoredName] = self.trackCensoredName;
    }
    if(self.trackContentRating != nil){
        dictionary[kNHResultTrackContentRating] = self.trackContentRating;
    }
    dictionary[kNHResultTrackId] = @(self.trackId);
    if(self.trackName != nil){
        dictionary[kNHResultTrackName] = self.trackName;
    }
    if(self.trackViewUrl != nil){
        dictionary[kNHResultTrackViewUrl] = self.trackViewUrl;
    }
    if(self.version != nil){
        dictionary[kNHResultVersion] = self.version;
    }
    if(self.wrapperType != nil){
        dictionary[kNHResultWrapperType] = self.wrapperType;
    }
    return dictionary;
    
}

/**
 * Implementation of NSCoding encoding method
 */
/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
- (void)encodeWithCoder:(NSCoder *)aCoder
{
    if(self.advisories != nil){
        [aCoder encodeObject:self.advisories forKey:kNHResultAdvisories];
    }
    if(self.appletvScreenshotUrls != nil){
        [aCoder encodeObject:self.appletvScreenshotUrls forKey:kNHResultAppletvScreenshotUrls];
    }
    [aCoder encodeObject:@(self.artistId) forKey:kNHResultArtistId];	if(self.artistName != nil){
        [aCoder encodeObject:self.artistName forKey:kNHResultArtistName];
    }
    if(self.artistViewUrl != nil){
        [aCoder encodeObject:self.artistViewUrl forKey:kNHResultArtistViewUrl];
    }
    if(self.artworkUrl100 != nil){
        [aCoder encodeObject:self.artworkUrl100 forKey:kNHResultArtworkUrl100];
    }
    if(self.artworkUrl512 != nil){
        [aCoder encodeObject:self.artworkUrl512 forKey:kNHResultArtworkUrl512];
    }
    if(self.artworkUrl60 != nil){
        [aCoder encodeObject:self.artworkUrl60 forKey:kNHResultArtworkUrl60];
    }
    if(self.bundleId != nil){
        [aCoder encodeObject:self.bundleId forKey:kNHResultBundleId];
    }
    if(self.contentAdvisoryRating != nil){
        [aCoder encodeObject:self.contentAdvisoryRating forKey:kNHResultContentAdvisoryRating];
    }
    if(self.currency != nil){
        [aCoder encodeObject:self.currency forKey:kNHResultCurrency];
    }
    if(self.currentVersionReleaseDate != nil){
        [aCoder encodeObject:self.currentVersionReleaseDate forKey:kNHResultCurrentVersionReleaseDate];
    }
    if(self.descriptionField != nil){
        [aCoder encodeObject:self.descriptionField forKey:kNHResultDescriptionField];
    }
    if(self.features != nil){
        [aCoder encodeObject:self.features forKey:kNHResultFeatures];
    }
    if(self.fileSizeBytes != nil){
        [aCoder encodeObject:self.fileSizeBytes forKey:kNHResultFileSizeBytes];
    }
    if(self.formattedPrice != nil){
        [aCoder encodeObject:self.formattedPrice forKey:kNHResultFormattedPrice];
    }
    if(self.genreIds != nil){
        [aCoder encodeObject:self.genreIds forKey:kNHResultGenreIds];
    }
    if(self.genres != nil){
        [aCoder encodeObject:self.genres forKey:kNHResultGenres];
    }
    if(self.ipadScreenshotUrls != nil){
        [aCoder encodeObject:self.ipadScreenshotUrls forKey:kNHResultIpadScreenshotUrls];
    }
    [aCoder encodeObject:@(self.isGameCenterEnabled) forKey:kNHResultIsGameCenterEnabled];	[aCoder encodeObject:@(self.isVppDeviceBasedLicensingEnabled) forKey:kNHResultIsVppDeviceBasedLicensingEnabled];	if(self.kind != nil){
        [aCoder encodeObject:self.kind forKey:kNHResultKind];
    }
    if(self.languageCodesISO2A != nil){
        [aCoder encodeObject:self.languageCodesISO2A forKey:kNHResultLanguageCodesISO2A];
    }
    if(self.minimumOsVersion != nil){
        [aCoder encodeObject:self.minimumOsVersion forKey:kNHResultMinimumOsVersion];
    }
    [aCoder encodeObject:@(self.price) forKey:kNHResultPrice];	[aCoder encodeObject:@(self.primaryGenreId) forKey:kNHResultPrimaryGenreId];	if(self.primaryGenreName != nil){
        [aCoder encodeObject:self.primaryGenreName forKey:kNHResultPrimaryGenreName];
    }
    if(self.releaseDate != nil){
        [aCoder encodeObject:self.releaseDate forKey:kNHResultReleaseDate];
    }
    if(self.releaseNotes != nil){
        [aCoder encodeObject:self.releaseNotes forKey:kNHResultReleaseNotes];
    }
    if(self.screenshotUrls != nil){
        [aCoder encodeObject:self.screenshotUrls forKey:kNHResultScreenshotUrls];
    }
    if(self.sellerName != nil){
        [aCoder encodeObject:self.sellerName forKey:kNHResultSellerName];
    }
    if(self.supportedDevices != nil){
        [aCoder encodeObject:self.supportedDevices forKey:kNHResultSupportedDevices];
    }
    if(self.trackCensoredName != nil){
        [aCoder encodeObject:self.trackCensoredName forKey:kNHResultTrackCensoredName];
    }
    if(self.trackContentRating != nil){
        [aCoder encodeObject:self.trackContentRating forKey:kNHResultTrackContentRating];
    }
    [aCoder encodeObject:@(self.trackId) forKey:kNHResultTrackId];	if(self.trackName != nil){
        [aCoder encodeObject:self.trackName forKey:kNHResultTrackName];
    }
    if(self.trackViewUrl != nil){
        [aCoder encodeObject:self.trackViewUrl forKey:kNHResultTrackViewUrl];
    }
    if(self.version != nil){
        [aCoder encodeObject:self.version forKey:kNHResultVersion];
    }
    if(self.wrapperType != nil){
        [aCoder encodeObject:self.wrapperType forKey:kNHResultWrapperType];
    }
    
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    self.advisories = [aDecoder decodeObjectForKey:kNHResultAdvisories];
    self.appletvScreenshotUrls = [aDecoder decodeObjectForKey:kNHResultAppletvScreenshotUrls];
    self.artistId = [[aDecoder decodeObjectForKey:kNHResultArtistId] integerValue];
    self.artistName = [aDecoder decodeObjectForKey:kNHResultArtistName];
    self.artistViewUrl = [aDecoder decodeObjectForKey:kNHResultArtistViewUrl];
    self.artworkUrl100 = [aDecoder decodeObjectForKey:kNHResultArtworkUrl100];
    self.artworkUrl512 = [aDecoder decodeObjectForKey:kNHResultArtworkUrl512];
    self.artworkUrl60 = [aDecoder decodeObjectForKey:kNHResultArtworkUrl60];
    self.bundleId = [aDecoder decodeObjectForKey:kNHResultBundleId];
    self.contentAdvisoryRating = [aDecoder decodeObjectForKey:kNHResultContentAdvisoryRating];
    self.currency = [aDecoder decodeObjectForKey:kNHResultCurrency];
    self.currentVersionReleaseDate = [aDecoder decodeObjectForKey:kNHResultCurrentVersionReleaseDate];
    self.descriptionField = [aDecoder decodeObjectForKey:kNHResultDescriptionField];
    self.features = [aDecoder decodeObjectForKey:kNHResultFeatures];
    self.fileSizeBytes = [aDecoder decodeObjectForKey:kNHResultFileSizeBytes];
    self.formattedPrice = [aDecoder decodeObjectForKey:kNHResultFormattedPrice];
    self.genreIds = [aDecoder decodeObjectForKey:kNHResultGenreIds];
    self.genres = [aDecoder decodeObjectForKey:kNHResultGenres];
    self.ipadScreenshotUrls = [aDecoder decodeObjectForKey:kNHResultIpadScreenshotUrls];
    self.isGameCenterEnabled = [[aDecoder decodeObjectForKey:kNHResultIsGameCenterEnabled] boolValue];
    self.isVppDeviceBasedLicensingEnabled = [[aDecoder decodeObjectForKey:kNHResultIsVppDeviceBasedLicensingEnabled] boolValue];
    self.kind = [aDecoder decodeObjectForKey:kNHResultKind];
    self.languageCodesISO2A = [aDecoder decodeObjectForKey:kNHResultLanguageCodesISO2A];
    self.minimumOsVersion = [aDecoder decodeObjectForKey:kNHResultMinimumOsVersion];
    self.price = [[aDecoder decodeObjectForKey:kNHResultPrice] doubleValue];
    self.primaryGenreId = [[aDecoder decodeObjectForKey:kNHResultPrimaryGenreId] integerValue];
    self.primaryGenreName = [aDecoder decodeObjectForKey:kNHResultPrimaryGenreName];
    self.releaseDate = [aDecoder decodeObjectForKey:kNHResultReleaseDate];
    self.releaseNotes = [aDecoder decodeObjectForKey:kNHResultReleaseNotes];
    self.screenshotUrls = [aDecoder decodeObjectForKey:kNHResultScreenshotUrls];
    self.sellerName = [aDecoder decodeObjectForKey:kNHResultSellerName];
    self.supportedDevices = [aDecoder decodeObjectForKey:kNHResultSupportedDevices];
    self.trackCensoredName = [aDecoder decodeObjectForKey:kNHResultTrackCensoredName];
    self.trackContentRating = [aDecoder decodeObjectForKey:kNHResultTrackContentRating];
    self.trackId = [[aDecoder decodeObjectForKey:kNHResultTrackId] integerValue];
    self.trackName = [aDecoder decodeObjectForKey:kNHResultTrackName];
    self.trackViewUrl = [aDecoder decodeObjectForKey:kNHResultTrackViewUrl];
    self.version = [aDecoder decodeObjectForKey:kNHResultVersion];
    self.wrapperType = [aDecoder decodeObjectForKey:kNHResultWrapperType];
    return self;
    
}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
    NHAppinfo *copy = [NHAppinfo new];
    
    copy.advisories = [self.advisories copy];
    copy.appletvScreenshotUrls = [self.appletvScreenshotUrls copy];
    copy.artistId = self.artistId;
    copy.artistName = [self.artistName copy];
    copy.artistViewUrl = [self.artistViewUrl copy];
    copy.artworkUrl100 = [self.artworkUrl100 copy];
    copy.artworkUrl512 = [self.artworkUrl512 copy];
    copy.artworkUrl60 = [self.artworkUrl60 copy];
    copy.bundleId = [self.bundleId copy];
    copy.contentAdvisoryRating = [self.contentAdvisoryRating copy];
    copy.currency = [self.currency copy];
    copy.currentVersionReleaseDate = [self.currentVersionReleaseDate copy];
    copy.descriptionField = [self.descriptionField copy];
    copy.features = [self.features copy];
    copy.fileSizeBytes = [self.fileSizeBytes copy];
    copy.formattedPrice = [self.formattedPrice copy];
    copy.genreIds = [self.genreIds copy];
    copy.genres = [self.genres copy];
    copy.ipadScreenshotUrls = [self.ipadScreenshotUrls copy];
    copy.isGameCenterEnabled = self.isGameCenterEnabled;
    copy.isVppDeviceBasedLicensingEnabled = self.isVppDeviceBasedLicensingEnabled;
    copy.kind = [self.kind copy];
    copy.languageCodesISO2A = [self.languageCodesISO2A copy];
    copy.minimumOsVersion = [self.minimumOsVersion copy];
    copy.price = self.price;
    copy.primaryGenreId = self.primaryGenreId;
    copy.primaryGenreName = [self.primaryGenreName copy];
    copy.releaseDate = [self.releaseDate copy];
    copy.releaseNotes = [self.releaseNotes copy];
    copy.screenshotUrls = [self.screenshotUrls copy];
    copy.sellerName = [self.sellerName copy];
    copy.supportedDevices = [self.supportedDevices copy];
    copy.trackCensoredName = [self.trackCensoredName copy];
    copy.trackContentRating = [self.trackContentRating copy];
    copy.trackId = self.trackId;
    copy.trackName = [self.trackName copy];
    copy.trackViewUrl = [self.trackViewUrl copy];
    copy.version = [self.version copy];
    copy.wrapperType = [self.wrapperType copy];
    
    return copy;
}

@end
