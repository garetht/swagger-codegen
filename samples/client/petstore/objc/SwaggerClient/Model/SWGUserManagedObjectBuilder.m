

#import "SWGUserManagedObjectBuilder.h"

/**
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen
* Do not edit the class manually.
*/

@implementation SWGUserManagedObjectBuilder

-(instancetype)init {
    self = [super init];
    if (self != nil) {
   }
    return self;
}

-(SWGUserManagedObject*)createNewSWGUserManagedObjectInContext:(NSManagedObjectContext*)context {
    SWGUserManagedObject *managedObject = [NSEntityDescription insertNewObjectForEntityForName:NSStringFromClass([SWGUserManagedObject class]) inManagedObjectContext:context];
    return managedObject;
}

-(SWGUserManagedObject*)SWGUserManagedObjectFromSWGUser:(SWGUser*)User context:(NSManagedObjectContext*)context {
    SWGUserManagedObject* newSWGUser = [self createNewSWGUserManagedObjectInContext:context];
    [self updateSWGUserManagedObject:newSWGUser withSWGUser:User];
    return newSWGUser;
}

-(void)updateSWGUserManagedObject:(SWGUserManagedObject*)managedObject withSWGUser:(SWGUser*)object {
    if(!managedObject || !object) {
        return;
    }
    managedObject._id = [object._id copy];
    managedObject.username = [object.username copy];
    managedObject.firstName = [object.firstName copy];
    managedObject.lastName = [object.lastName copy];
    managedObject.email = [object.email copy];
    managedObject.password = [object.password copy];
    managedObject.phone = [object.phone copy];
    managedObject.userStatus = [object.userStatus copy];
}

-(SWGUser*)SWGUserFromSWGUserManagedObject:(SWGUserManagedObject*)obj {
    if(!obj) {
        return nil;
    }
    SWGUser* newSWGUser = [[SWGUser alloc] init];
    [self updateSWGUser:newSWGUser withSWGUserManagedObject:obj];
    return newSWGUser;
}

-(void)updateSWGUser:(SWGUser*)newSWGUser withSWGUserManagedObject:(SWGUserManagedObject*)obj {
    newSWGUser._id = [obj._id copy];
    newSWGUser.username = [obj.username copy];
    newSWGUser.firstName = [obj.firstName copy];
    newSWGUser.lastName = [obj.lastName copy];
    newSWGUser.email = [obj.email copy];
    newSWGUser.password = [obj.password copy];
    newSWGUser.phone = [obj.phone copy];
    newSWGUser.userStatus = [obj.userStatus copy];
}

@end