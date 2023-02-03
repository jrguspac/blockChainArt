// SPDX-License-Identifier: MIT // Indicar la licencia

pragma solidity ^0.8.0; // indicar la version de Solidity

contract MyNFT { // Declaramos nuestro contrato
    address[7] public owners; // arreglo de 7 elementos, porque son 7 obras
    address[7] public minted; // Otro arreglo para mapear los ya emitidos

    function mintNFT (uint tokenId) public returns (uint) // Nexesitamos dos metodos, una para emitir y otra para transferir
    require(tokenId >= 0 && tokenId <= 6); // aplicamos una validacion donde requerimos que se encuentre entre 1 y 6
    minted[tokenId] = msg.sender;   // Mapeamos el usuario que originó la transacción como la direccion del NFT y retornamos el tokenId

    return tokenId;
}

// Se hace el mapeo con el arreglo de dueños
    function transferNFT(uint tokenId) public returns (uint) {
    require(tokenId >= 0 && tokenId <= 6);

    owners[tokenId] =msg.sender;

    return tokenId;

}

// Obtener todos los arreglos para conocer cuales son los NFT emitidos y sus dueños

    function getOwners() public view returns(address[7] memory) {
        return owners;
    }

    function getMinted() public view returns (address[7] memory){
        return minted
    }

    // Antes de subirlo a BlockChain debemos escribir una migracion