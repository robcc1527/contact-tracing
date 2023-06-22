public with sharing class RC_BoardGameController {

        @AuraEnabled(cacheable=true)
        public static List<RC_Board_Game__c> getBoardGames() {
            return [
                SELECT Id, Name, Price__c, Publisher__c
                FROM RC_Board_Game__c
                WITH SECURITY_ENFORCED
                LIMIT 10
            ];
        }
}