public with sharing class QueryAllUsers {
    @AuraEnabled(cacheable=true)
    public static List<User> getUsers() {
        return [SELECT Id, Email, IsActive, LastLoginDate, Username, Profile.Name FROM User];
    }
}
