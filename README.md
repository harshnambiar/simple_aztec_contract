# simple_aztec_contract  
A simple smart contract on Aztec Network



# steps to use  
aztec-cli create-account  
export PRIVATE=//the private key obtained in the previous step  
cd counter aztec-cli compile .  
aztec-cli deploy target/Counter.json   
export CONTRACT=//contract address obtained in the previous step  
aztec-cli call getCounter --contract-artifact target/Counter.json --contract-address $CONTRACT  
aztec-cli send increment --contract-artifact target/Counter.json --contract-address $CONTRACT --private-key $PRIVATE  