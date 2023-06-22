import { LightningElement, wire } from 'lwc';
import getBoardGames from '@salesforce/apex/RC_BoardGameController.getBoardGames';

export default class RcBoardGameSearch extends LightningElement {
    @wire(getBoardGames) games;
}