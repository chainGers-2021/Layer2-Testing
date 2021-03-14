## Layer2-Testing


# Moonbeam

Docs: https://docs.moonbeam.network/integrations/bridges/ethereum/chainbridge/#erc-20-token-transfer

1) Start with adding moonbeam alpha (testnet) configuration in metamask. The config details are:
  
    Network Name: Moonbase Alpha
    New RPC URL: https://rpc.testnet.moonbeam.network
    ChainID: 1287
    Symbol (Optional): DEV
    
2) Next, add the ERC20S token address after connecting to the testnet mentioned before.
  
    Token Address: 0xd222a876B303dAe4F8e2099ba3B26ECB5A1b8521
  
3) Connect to the ERC20S smart contract using 'at address' option in remix ide. The address is the same as the token address mentioned before. Do this in the injected web3 mode.
4) Click on function 'mint()'. Sign the transaction that pops up in metamask.
5) Now connect to another smart contract (this time it is the bridge contract). The address is '0x73aa89155A3E4B9E58e634292E182Fb3eCd0D805'
6) Transfer some ERC20S tokens that you received in step 4 to an address on Kovan testnet. 
7) Switch metamask to the kovan testnet after step 6 and wait for 3 mins for the tokens to appear.

