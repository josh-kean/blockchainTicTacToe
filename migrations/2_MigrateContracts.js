const ticTacToe = artifacts.require("ticTacToe");

module.exports = function(deployer) {
  deployer.deploy(ticTacToe);
};
