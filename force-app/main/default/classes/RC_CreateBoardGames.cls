public with sharing class RC_CreateBoardGames {
    public RC_CreateBoardGames() {

        List<RC_Board_Game__c> boardGamesList = new List<RC_Board_Game__c>();

        for (Integer i = 1; i < 6; i++) {
            RC_Board_Game__c bg = new RC_Board_Game__c(
                Name = 'Throw in Name' + i,
                Price__c = 3.25 * i,
                Publisher__c = 'a018b00000zp3ANAAY'
            );
                boardGamesList.add(bg);
        }
            insert boardGamesList;

    }
}