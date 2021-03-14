// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.6.4;

/**
    Interface for the Custom ERC20 Token contract for ChainBridge implementation
    Rinkeby/Moonbase Alpha ERC-20 Address : 
        0xd7cb461644f402E62dB308Df5dCda21d0CE5ef63
    Kovan/Moonbase Alpha ERC-20 Address: 
        0xd222a876B303dAe4F8e2099ba3B26ECB5A1b8521
        
*/

interface ICustomERC20 {

    // Mint 5 ERC20S Tokens
    function mintTokens() external;

    // Get Token Name
    function name() external view returns (string memory);

    /** 
        Increase allowance to Handler
        Rinkeby/Moonbase Alpha ERC-20 Handler:
           0xdA18254F9ecAe8E0df72588455C01c0ef0e59F73
        Kovan/Moonbase Alpha ERC-20 Handler:
           0x91eB86784850C3057118A2003C2d82117050Dd2B
    */
    function increaseAllowance(address spender, uint256 addedValue) external returns (bool);

    // Get allowance
    function allowance(address owner, address spender) external view returns (uint256);
}


/**
    Simple Interface to interact with bridge to transfer the ERC20S token
    Rinkeby/Moonbase Alpha Bridge Address: 
        0xcA27B6bdCfEDad5562de4E5743bEC4c010f50941
    Kovan/Moonbase Alpha Bridge Address: 
        0x73aa89155A3E4B9E58e634292E182Fb3eCd0D805
 */

interface IPSBridgeERC20 {

    /**
   * @notice Creates a deposit in the Bridge Contract for an ERC-20 Transfer,
   * @param _recipient Address recipient of the tokens in the other chain
   * @param _value Amount of tokens to be sent
   */
    function sendERC20SToken(address _recipient, uint _value) external;

}
