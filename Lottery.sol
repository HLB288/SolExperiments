// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract Lottery {
    // Keep track of the current state of the betting round
    enum State {
        IDLE, BETTING
    }
    // keep track of all the players in the lottery
    address payable [] public players;
    //define a variable to keep track of the current state
    State public currentState = State.IDLE;
    //Each betting round will have this number of players
    uint public maxNumPlayers;
    // The players can only bet with this exact amount to keep it fair
    uint public moneyRequiredTOBet;
    // house will take somme fee for each betting round
    uint public houseFee;
    // Only admin should be able to create a beeting round and/or cancel it
    address public admin;

    constructor(uint fee) {
        require(fee > 1, "Fee should be greater than 1");
        admin = msg.sender;
        houseFee = fee;
    }

    function createBet(uint numPlayers, uint betMoney) external inState(State.IDLE) onlyAdmin() {
        maxNumPlayers = numPlayers;
        moneyRequiredTOBet = betMoney;
        currentState = State.BETTING;

    }

    // ALow player to bet in current betting round
    // if we reach the max num of player the round is ended and we decide the winner
    function bet() external payable inState(State.BETTING) {
        require(msg.value == moneyRequiredTOBet, "Can Only bet the exact ETH that is set");
        players.push(payable(msg.sender));
    }

    modifier inState(State state) {
        require(state == currentState, "Current state doesnot allow this");
        _;
    }
    modifier onlyAdmin() {
        require(msg.sender == admin, "ONly admin can perform this operation");
        _;
    }

}