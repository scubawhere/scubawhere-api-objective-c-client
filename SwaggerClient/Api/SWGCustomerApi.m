#import "SWGCustomerApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGInlineResponse20029.h"
#import "SWGErrorModel.h"
#import "SWGInlineResponse2003.h"
#import "SWGInlineResponse20030.h"
#import "SWGCustomer.h"


@interface SWGCustomerApi ()

@property (nonatomic, strong) NSMutableDictionary *defaultHeaders;

@end

@implementation SWGCustomerApi

NSString* kSWGCustomerApiErrorDomain = @"SWGCustomerApiErrorDomain";
NSInteger kSWGCustomerApiMissingParamErrorCode = 234513;

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
    static SWGCustomerApi *sharedAPI;
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
/// Create a new customer
/// 
///  @param email  
///
///  @param firstname  
///
///  @param lastname  
///
///  @param birthday  (optional)
///
///  @param gender  (optional)
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
///  @param phone  (optional)
///
///  @param lastDive  (optional)
///
///  @param numberOfDives  (optional)
///
///  @param chestSize  (optional)
///
///  @param showSize  (optional)
///
///  @param height  (optional)
///
///  @param certificates  (optional)
///
///  @returns SWGInlineResponse20029*
///
-(NSNumber*) createCustomerWithEmail: (NSString*) email
    firstname: (NSString*) firstname
    lastname: (NSString*) lastname
    birthday: (NSDate*) birthday
    gender: (NSNumber*) gender
    address1: (NSString*) address1
    address2: (NSString*) address2
    city: (NSString*) city
    county: (NSString*) county
    postcode: (NSString*) postcode
    countryId: (NSNumber*) countryId
    phone: (NSString*) phone
    lastDive: (NSDate*) lastDive
    numberOfDives: (NSNumber*) numberOfDives
    chestSize: (NSString*) chestSize
    showSize: (NSString*) showSize
    height: (NSString*) height
    certificates: (NSArray<NSNumber*>*) certificates
    completionHandler: (void (^)(SWGInlineResponse20029* output, NSError* error)) handler {
    // verify the required parameter 'email' is set
    if (email == nil) {
        NSParameterAssert(email);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"email"] };
            NSError* error = [NSError errorWithDomain:kSWGCustomerApiErrorDomain code:kSWGCustomerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'firstname' is set
    if (firstname == nil) {
        NSParameterAssert(firstname);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"firstname"] };
            NSError* error = [NSError errorWithDomain:kSWGCustomerApiErrorDomain code:kSWGCustomerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'lastname' is set
    if (lastname == nil) {
        NSParameterAssert(lastname);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"lastname"] };
            NSError* error = [NSError errorWithDomain:kSWGCustomerApiErrorDomain code:kSWGCustomerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/customer/add"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (email != nil) {
        queryParams[@"email"] = email;
    }
    if (firstname != nil) {
        queryParams[@"firstname"] = firstname;
    }
    if (lastname != nil) {
        queryParams[@"lastname"] = lastname;
    }
    if (birthday != nil) {
        queryParams[@"birthday"] = birthday;
    }
    if (gender != nil) {
        queryParams[@"gender"] = gender;
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
    if (phone != nil) {
        queryParams[@"phone"] = phone;
    }
    if (lastDive != nil) {
        queryParams[@"last_dive"] = lastDive;
    }
    if (numberOfDives != nil) {
        queryParams[@"number_of_dives"] = numberOfDives;
    }
    if (chestSize != nil) {
        queryParams[@"chest_size"] = chestSize;
    }
    if (showSize != nil) {
        queryParams[@"show_size"] = showSize;
    }
    if (height != nil) {
        queryParams[@"height"] = height;
    }
    if (certificates != nil) {
        queryParams[@"certificates"] = [[SWGQueryParamCollection alloc] initWithValuesAndFormat: certificates format: @"multi"];
        
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
                              responseType: @"SWGInlineResponse20029*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGInlineResponse20029*)data, error);
                                }
                           }
          ];
}

///
/// Delete a customer by ID
/// 
///  @param _id  
///
///  @returns SWGInlineResponse2003*
///
-(NSNumber*) deleteCustomerWithId: (NSNumber*) _id
    completionHandler: (void (^)(SWGInlineResponse2003* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kSWGCustomerApiErrorDomain code:kSWGCustomerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/customer/delete"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        queryParams[@"id"] = _id;
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
                                    method: @"DELETE"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGInlineResponse2003*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGInlineResponse2003*)data, error);
                                }
                           }
          ];
}

///
/// Update a customer by ID
/// 
///  @param _id  
///
///  @param email  (optional)
///
///  @param firstname  (optional)
///
///  @param lastname  (optional)
///
///  @param birthday  (optional)
///
///  @param gender  (optional)
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
///  @param phone  (optional)
///
///  @param lastDive  (optional)
///
///  @param numberOfDives  (optional)
///
///  @param chestSize  (optional)
///
///  @param showSize  (optional)
///
///  @param height  (optional)
///
///  @param certificates  (optional)
///
///  @returns SWGInlineResponse20030*
///
-(NSNumber*) editCustomerWithId: (NSNumber*) _id
    email: (NSString*) email
    firstname: (NSString*) firstname
    lastname: (NSString*) lastname
    birthday: (NSDate*) birthday
    gender: (NSNumber*) gender
    address1: (NSString*) address1
    address2: (NSString*) address2
    city: (NSString*) city
    county: (NSString*) county
    postcode: (NSString*) postcode
    countryId: (NSNumber*) countryId
    phone: (NSString*) phone
    lastDive: (NSDate*) lastDive
    numberOfDives: (NSNumber*) numberOfDives
    chestSize: (NSString*) chestSize
    showSize: (NSString*) showSize
    height: (NSString*) height
    certificates: (NSArray<NSNumber*>*) certificates
    completionHandler: (void (^)(SWGInlineResponse20030* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kSWGCustomerApiErrorDomain code:kSWGCustomerApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/customer/edit"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        queryParams[@"id"] = _id;
    }
    if (email != nil) {
        queryParams[@"email"] = email;
    }
    if (firstname != nil) {
        queryParams[@"firstname"] = firstname;
    }
    if (lastname != nil) {
        queryParams[@"lastname"] = lastname;
    }
    if (birthday != nil) {
        queryParams[@"birthday"] = birthday;
    }
    if (gender != nil) {
        queryParams[@"gender"] = gender;
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
    if (phone != nil) {
        queryParams[@"phone"] = phone;
    }
    if (lastDive != nil) {
        queryParams[@"last_dive"] = lastDive;
    }
    if (numberOfDives != nil) {
        queryParams[@"number_of_dives"] = numberOfDives;
    }
    if (chestSize != nil) {
        queryParams[@"chest_size"] = chestSize;
    }
    if (showSize != nil) {
        queryParams[@"show_size"] = showSize;
    }
    if (height != nil) {
        queryParams[@"height"] = height;
    }
    if (certificates != nil) {
        queryParams[@"certificates"] = [[SWGQueryParamCollection alloc] initWithValuesAndFormat: certificates format: @"multi"];
        
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
                              responseType: @"SWGInlineResponse20030*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGInlineResponse20030*)data, error);
                                }
                           }
          ];
}

///
/// Retrieve all customers
/// 
///  @returns NSArray<SWGCustomer>*
///
-(NSNumber*) getAllCustomersWithCompletionHandler: 
    (void (^)(NSArray<SWGCustomer>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/customer/all"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
                              responseType: @"NSArray<SWGCustomer>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<SWGCustomer>*)data, error);
                                }
                           }
          ];
}

///
/// Retrieve a customer by ID
/// 
///  @param _id  (optional)
///
///  @returns SWGInlineResponse20029*
///
-(NSNumber*) getCustomerWithId: (NSNumber*) _id
    completionHandler: (void (^)(SWGInlineResponse20029* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/customer"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        queryParams[@"id"] = _id;
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
                              responseType: @"SWGInlineResponse20029*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGInlineResponse20029*)data, error);
                                }
                           }
          ];
}



@end
