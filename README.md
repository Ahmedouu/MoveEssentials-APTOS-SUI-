not sure what to call this now , let start by some implementing some slicing 


*** Some notes about SUI and APTOS:***

sui borrow checker is funny just like in aptos.


the only difference between the two frameworks is how move handles the storage of resources, everything in sui is an object and stored using a unique identifier in its own sui global storage, while aptos uses the move global storage and stores resources based on addresses.


Overall I think sui is more intuitive, but a bit more complicated to work with 

though, it is up to the wallet to handle the logic of transactions....(more on this later),

Sui is more safe though since functions can only modify whatever objects you pass into them, in aptos if you manage to get a signer object you can do whatever you want, with all the resources owned by that signer, you can borrow them and mutate them or transfer the assets to another address, since everything in aptos is linked to a an address/account.


Sui and aptos/solana are on a similar level of transaction speed. they are fast and one advantage that Sui has over other fast chains is that it does not use any consensus for simple transactions, if you would like to transfer some tokens and theses tokens are not involved in other transactions or are shared objects, the transaction is validated immediately, and another advantage is the transaction context, validators need to be aware only of the objects used in the current context.


