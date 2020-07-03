var Adoption = artifacts.require("Adoption");
//tell the truffle which contracts we'd like to interact with artifacts.require()
//The name specified should match the name of the contract definition within that source file

module.exports = function (deployer) {
  deployer.deploy(Adoption);
};
