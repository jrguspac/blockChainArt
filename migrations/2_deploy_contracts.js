var MyNFT = artifacts.require("MyNFT"); // Creamos una variable requiriendo de los artefactos MyNFT

module.exports = function(deployer){ // Le indicamos al FrameWork que realice el deploy del contrato
    deployer.deploy(MyNFT);
}   