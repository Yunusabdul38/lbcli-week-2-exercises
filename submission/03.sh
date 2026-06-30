# Create a SegWit address.
SEGWIT_ADDRESS=$(bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress  "bech32")  
# Add funds to the address.
bitcoin-cli -regtest generatetoaddress 101 $SEGWIT_ADDRESS > /dev/null 2>&1
# Return only the Address
echo $SEGWIT_ADDRESS
