pragma solidity ^0.5.0;

contract ticTacToe {

  string gameName;

  struct gamePlayers {
    bool turn; /*keeps track of player turn*/
    address playerAddress; /*players address*/
    uint8 playerNumber; /*determines is player is 1 or 2*/
  }

  struct turnSelections {
    address player;
    uint selection;
  }

  turnSelections[] turnResults;

  /* string of addresses to keep track of players */
  address[] players;

  mapping(address => gamePlayers) playerMapping;

  constructor() public {
    gameName = "tic tac toe game";
  }

  function createPlayer(address _player) public {
    require(uint(players.length) < 2);
    require(playerMapping[_player].playerAddress != _player);
    playerMapping[_player] = gamePlayers(bool(players.length==0), _player, uint8(players.length+1));
    players.push(_player);
  }

  function showPlayerStats(address _address) public view returns(bool, address, uint) {
    return(playerMapping[_address].turn, playerMapping[_address].playerAddress,
      playerMapping[_address].playerNumber);
  }

  function playerTurn(address _player, uint _selection) public {

  }

  function getGameName() public view returns(string memory) {
    return gameName;
  }

  function changeGameName(string memory _gameName) public {
    gameName = _gameName;
  }
}
