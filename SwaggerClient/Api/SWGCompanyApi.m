#import "SWGCompanyApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGErrorModel.h"
#import "SWGInlineResponse20023.h"
#import "SWGInlineResponse20024.h"
#import "SWGInlineResponse20025.h"
#import "SWGInlineResponse20026.h"


@interface SWGCompanyApi ()

@property (nonatomic, strong) NSMutableDictionary *defaultHeaders;

@end

@implementation SWGCompanyApi

NSString* kSWGCompanyApiErrorDomain = @"SWGCompanyApiErrorDomain";
NSInteger kSWGCompanyApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    self = [super init];
    if (self) {
        SWGConfiguration *config = [SWGConfiguration sharedConfig];
        if (config.apiClient == nil) {
            config.apiClient = [[SWGApiClient alloc] init];
        }
        _apiClient = config.apiClient;
        _defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

- (id) initWithApiClient:(SWGApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

+ (instancetype)sharedAPI {
    static SWGCompanyApi *sharedAPI;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        sharedAPI = [[self alloc] init];
    });
    return sharedAPI;
}

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.defaultHeaders[key];
}

-(void) addHeader:(NSString*)value forKey:(NSString*)key {
    [self setDefaultHeaderValue:value forKey:key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(NSUInteger) requestQueueSize {
    return [SWGApiClient requestQueueSize];
}

#pragma mark - Api Methods

///
/// Attach a location to a company
/// 
///  @param name  (optional)
///
///  @param _description  (optional)
///
///  @param latitude  (optional)
///
///  @param longitude  (optional)
///
///  @returns SWGInlineResponse20023*
///
-(NSNumber*) attachLocationsWithName: (NSString*) name
    _description: (NSString*) _description
    latitude: (NSNumber*) latitude
    longitude: (NSNumber*) longitude
    completionHandler: (void (^)(SWGInlineResponse20023* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/company/add-location"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGInlineResponse20023*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGInlineResponse20023*)data, error);
                                }
                           }
          ];
}

///
/// Retrieve the locations this Dive Centre uses
/// 
///  @param latitude  
///
///  @param longitude  
///
///  @param limit  (optional)
///
///  @returns SWGInlineResponse20024*
///
-(NSNumber*) getLocationsWithLatitude: (NSString*) latitude
    longitude: (NSString*) longitude
    limit: (NSNumber*) limit
    completionHandler: (void (^)(SWGInlineResponse20024* output, NSError* error)) handler {
    // verify the required parameter 'latitude' is set
    if (latitude == nil) {
        NSParameterAssert(latitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"latitude"] };
            NSError* error = [NSError errorWithDomain:kSWGCompanyApiErrorDomain code:kSWGCompanyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'longitude' is set
    if (longitude == nil) {
        NSParameterAssert(longitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"longitude"] };
            NSError* error = [NSError errorWithDomain:kSWGCompanyApiErrorDomain code:kSWGCompanyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/company/locations"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGInlineResponse20024*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGInlineResponse20024*)data, error);
                                }
                           }
          ];
}

///
/// Retrieve the pick up schedule for a date
/// 
///  @param date  
///
///  @returns SWGInlineResponse20025*
///
-(NSNumber*) getPickupScheduleWithDate: (NSString*) date
    completionHandler: (void (^)(SWGInlineResponse20025* output, NSError* error)) handler {
    // verify the required parameter 'date' is set
    if (date == nil) {
        NSParameterAssert(date);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"date"] };
            NSError* error = [NSError errorWithDomain:kSWGCompanyApiErrorDomain code:kSWGCompanyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/company/pick-up-schedule"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (date != nil) {
        queryParams[@"date"] = date;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGInlineResponse20025*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGInlineResponse20025*)data, error);
                                }
                           }
          ];
}

///
/// Update the companies information
/// 
///  @param _id  
///
///  @param contact  (optional)
///
///  @param _description  (optional)
///
///  @param name  (optional)
///
///  @param address1  (optional)
///
///  @param address2  (optional)
///
///  @param city  (optional)
///
///  @param county  (optional)
///
///  @param postcode  (optional)
///
///  @param countryId  (optional)
///
///  @param currencyId  (optional)
///
///  @param businessPhone  (optional)
///
///  @param businessEmail  (optional)
///
///  @param vatNumber  (optional)
///
///  @param registrationNumber  (optional)
///
///  @param website  (optional)
///
///  @returns SWGInlineResponse20026*
///
-(NSNumber*) updateCompanyWithId: (NSNumber*) _id
    contact: (NSString*) contact
    _description: (NSString*) _description
    name: (NSString*) name
    address1: (NSString*) address1
    address2: (NSString*) address2
    city: (NSString*) city
    county: (NSString*) county
    postcode: (NSString*) postcode
    countryId: (NSNumber*) countryId
    currencyId: (NSNumber*) currencyId
    businessPhone: (NSString*) businessPhone
    businessEmail: (NSString*) businessEmail
    vatNumber: (NSString*) vatNumber
    registrationNumber: (NSString*) registrationNumber
    website: (NSString*) website
    completionHandler: (void (^)(SWGInlineResponse20026* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kSWGCompanyApiErrorDomain code:kSWGCompanyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/company/update"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        queryParams[@"id"] = _id;
    }
    if (contact != nil) {
        queryParams[@"contact"] = contact;
    }
    if (_description != nil) {
        queryParams[@"description"] = _description;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (address1 != nil) {
        queryParams[@"address_1"] = address1;
    }
    if (address2 != nil) {
        queryParams[@"address_2"] = address2;
    }
    if (city != nil) {
        queryParams[@"city"] = city;
    }
    if (county != nil) {
        queryParams[@"county"] = county;
    }
    if (postcode != nil) {
        queryParams[@"postcode"] = postcode;
    }
    if (countryId != nil) {
        queryParams[@"country_id"] = countryId;
    }
    if (currencyId != nil) {
        queryParams[@"currency_id"] = currencyId;
    }
    if (businessPhone != nil) {
        queryParams[@"business_phone"] = businessPhone;
    }
    if (businessEmail != nil) {
        queryParams[@"business_email"] = businessEmail;
    }
    if (vatNumber != nil) {
        queryParams[@"vat_number"] = vatNumber;
    }
    if (registrationNumber != nil) {
        queryParams[@"registration_number"] = registrationNumber;
    }
    if (website != nil) {
        queryParams[@"website"] = website;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGInlineResponse20026*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGInlineResponse20026*)data, error);
                                }
                           }
          ];
}



@end
