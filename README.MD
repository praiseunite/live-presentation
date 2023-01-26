# IC Showcase
This is the list of commands to run to create a new identity & deploy the website on the IC.
- Create a new identity.
```bash
dfx identity new <IDENTITY_NAME>
```
- Switch to that new identity.
```bash
dfx identity use <IDENTITY_NAME>
```
- Show that the balance is 0 ICP.
```bash
dfx ledger --network ic balance
```
- Get the account-id
```bash
dfx ledger account-id 
```
- Send 1 ICP to that account (NFID/Plug/Stoic or any wallet)- wait 2 sec for transaction to be completed.
- Show that the balance has been updated. 
```bash
dfx ledger --network ic balance
```
- Create an empty canister for the cycle wallet. Copy the CANISTER ID for next command.
```bash
dfx ledger --network ic create-canister $(dfx identity get-principal) --amount 0.99
```
- Deploy the wasm for cycle wallet.
```bash
dfx identity --network ic deploy-wallet CANISTER_ID
```
- Create an empty canister (with 1T cycles)
```bash
dfx canister --network ic create webpage --with-cycles 1000000000000 
```
- Build the wasm for the webpage.
```bash
dfx build --network ic 
```
- Deploy the module inside the canister.
```bash
dfx deploy --network ic
```