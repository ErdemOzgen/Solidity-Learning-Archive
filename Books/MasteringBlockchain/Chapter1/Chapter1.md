# What Is Ethereum?

* Ethereum is often described as "the world computer.” From a computer science perspective, Ethereum is a deterministic but practically unbounded state machine, consisting of a globally accessible singleton state and a virtual machine that applies changes to that state.From a more practical perspective, Ethereum is an open source, globally decentralized computing infrastructure that executes programs called smart contracts. It uses a blockchain to synchronize and store the system’s state changes, along with a cryptocurrency called ether to meter and constrain execution resource costs.

* The Ethereum platform enables developers to build powerful decentralized applications with built-in economic functions. While providing high availability, auditability, transparency, and neutrality, it also reduces or eliminates censorship and reduces certain counterparty risks.

# Components of a Blockchain

* A peer-to-peer (P2P) network connecting participants and propagating transactions and blocks of verified transactions, based on a standardized "gossip" protocol
* Messages, in the form of transactions, representing state transitions
* A set of consensus rules, governing what constitutes a transaction and what makes for a valid state transition
* A state machine that processes transactions according to the consensus rules
* A chain of cryptographically secured blocks that acts as a journal of all the verified and accepted state transitions
* A consensus algorithm that decentralizes control over the blockchain, by forcing participants to cooperate in the enforcement of the consensus rules
* A game-theoretically sound incentivization scheme (e.g., proof-of-work costs plus block rewards) to economically secure the state machine in an open environment
* One or more open source software implementations of the above ("clients")

## Ethereum’s Four Stages of Development

1. Block #0 Frontier—The initial stage of Ethereum, lasting from July 30, 2015, to March 2016.
2. Block #200,000  Ice Age—A hard fork to introduce an exponential difficulty increase, to motivate a transition to PoS when ready.
3. Block #1,150,000 Homestead—The second stage of Ethereum, launched in March 2016.
4. Block #1,192,000 DAO—A hard fork that reimbursed victims of the hacked DAO contract and caused Ethereum and Ethereum Classic to split into two competing systems. 
5. Block #2,463,000 Tangerine Whistle—A hard fork to change the gas calculation for certain I/O-heavy operations and to clear the accumulated state from a denial-of-service (DoS) attack that exploited the low gas cost of those operations.
6. Block #2,675,000Spurious Dragon—A hard fork to address more DoS attack vectors, and another state clearing. Also, a replay attack protection mechanism
7. Block #4,370,000 Metropolis Byzantium—Metropolis is the third stage of Ethereum. Launched in October 2017, Byzantium is the first part of Metropolis, adding low-level functionalities and adjusting the block reward and difficulty.
8. Block #7,280,000 Constantinople / St. Petersburg—Constantinople was planned to be the second part of Metropolis with similar improvements. A few hours before its activation, a critical bug was discovered. The hard fork was therefore postponed and renamed St. Petersburg.
9. Block #9,069,000 Istanbul—An additional hard fork with the same approach, and naming convention, as for the prior two.
10. Block #9,200,000 Muir Glacier—A hard fork whose sole purpose was to adjust the difficulty again due to the exponential increase introduced by Ice Age.

--------------------------
Two hard forks, Berlin and London, have also been announced, and we are now in the final stage of Ethereum development, codenamed Serenity. Serenity involves a profound reorganization of the infrastructure that will make Ethereum more scalable, more secure, and more sustainable. It is presented as the second version of Ethereum, "Ethereum 2.0".


--------------------------

## Ethereum: A General-Purpose Blockchain

* Ethereum is also a distributed state machine. But instead of tracking only the state of currency ownership, Ethereum tracks the state transitions of a general-purpose data store, i.e., a store that can hold any data expressible as a key–value tuple. A key–value data store holds arbitrary values, each referenced by some key; for example, the value "Mastering Ethereum" referenced by the key "Book Title". In some ways, this serves the same purpose as the data storage model of Random Access Memory (RAM) used by most general-purpose computers. Ethereum has memory that stores both code and data, and it uses the Ethereum blockchain to track how this memory changes over time. Like a general-purpose stored-program computer, Ethereum can load code into its state machine and run that code, storing the resulting state changes in its blockchain. Two of the critical differences from most general-purpose computers are that Ethereum state changes are governed by the rules of consensus and the state is distributed globally. Ethereum answers the question: "What if we could track any arbitrary state and program the state machine to create a world-wide computer operating under consensus?"
  

### Ethereum’s Components

* **P2P network**
  Ethereum runs on the Ethereum main network, which is addressable on TCP port 30303, and runs a protocol called ÐΞVp2p.
* **Consensus rules**
  Ethereum’s consensus rules are defined in the reference specification, the Yellow Paper
* **Transactions**
  Ethereum transactions are network messages that include (among other things) a sender, recipient, value, and data payload.
* **State machine**
  Ethereum state transitions are processed by the Ethereum Virtual Machine (EVM), a stack-based virtual machine that executes bytecode (machine-language instructions). EVM programs, called "smart contracts," are written in high-level languages (e.g., Solidity) and compiled to bytecode for execution on the EVM.
* **Data structures** 
  Ethereum’s state is stored locally on each node as a database (usually Google’s LevelDB), which contains the transactions and system state in a serialized hashed data structure called a Merkle Patricia Tree.
* **Consensus algorithm**
  Ethereum uses Bitcoin’s consensus model, Nakamoto Consensus, which uses sequential single-signature blocks, weighted in importance by PoW to determine the longest chain and therefore the current state. However, there are plans to move to a PoS weighted voting system, codenamed Casper, in the near future.
* **Economic security**
  Ethereum currently uses a PoW algorithm called Ethash, but this will eventually be dropped with the move to PoS at some point in the future.
* **Clients**  
Ethereum has several interoperable implementations of the client software, the most prominent of which are Go-Ethereum (Geth) and Parity.


--------------------------
# Future Reading 
The following references provide additional information on the technologies mentioned here:

* The Ethereum Yellow Paper: https://ethereum.github.io/yellowpaper/paper.pdf

* The Beige Paper, a rewrite of the Yellow Paper for a broader audience in less formal language: https://github.com/chronaeon/beigepaper

* ÐΞVp2p network protocol: https://github.com/ethereum/devp2p/blob/master/rlpx.md

* Ethereum Virtual Machine list of resources: https://eth.wiki/en/concepts/evm/ethereum-virtual-machine-(evm)-awesome-list

L* evelDB database (used most often to store the local copy of the blockchain): https://github.com/google/leveldb

* Merkle Patricia trees: https://eth.wiki/en/fundamentals/patricia-tree

* Ethash PoW algorithm: https://eth.wiki/en/concepts/ethash/ethash

* Casper PoS v1 Implementation Guide: http://bit.ly/2DyPr3l

* Go-Ethereum (Geth) client: https://geth.ethereum.org/

* Parity Ethereum client: https://parity.io/
  
**TODOS: Add code example and summarize all links**


## Ethereum and Turing Completeness

* Ethereum’s ability to execute a stored program, in a state machine called the Ethereum Virtual Machine, while reading and writing data to memory makes it a Turing-complete system and therefore a UTM( Universal Turing machine). Ethereum can compute any algorithm that can be computed by any Turing machine, given the limitations of finite memory.
* Ethereum’s groundbreaking innovation is to combine the general-purpose computing architecture of a stored-program computer with a decentralized blockchain, thereby creating a distributed single-state (singleton) world computer. Ethereum programs run "everywhere," yet produce a common state that is secured by the rules of consensus.
[what is turing complete means?](https://stackoverflow.com/questions/7284/what-is-turing-complete)

* However, Turing completeness is very dangerous, particularly in open access systems like public blockchains, because of the halting problem we touched on earlier. For example, modern printers are Turing complete and can be given files to print that send them into a frozen state. The fact that Ethereum is Turing complete means that any program of any complexity can be computed by Ethereum. But that flexibility brings some thorny security and resource management problems. An unresponsive printer can be turned off and turned back on again. That is not possible with a public blockchain.

* Turing proved that you cannot predict whether a program will terminate by simulating it on a computer. In simple terms, we cannot predict the path of a program without running it. Turing-complete systems can run in "infinite loops," a term used (in oversimplification) to describe a program that does not terminate. It is trivial to create a program that runs a loop that never ends. But unintended never-ending loops can arise without warning, due to complex interactions between the starting conditions and the code. In Ethereum, this poses a challenge: every participating node (client) must validate every transaction, running any smart contracts it calls. But as Turing proved, Ethereum can’t predict if a smart contract will terminate, or how long it will run, without actually running it (possibly running forever). Whether by accident or on purpose, a smart contract can be created such that it runs forever when a node attempts to validate it. This is effectively a DoS attack. And of course, between a program that takes a millisecond to validate and one that runs forever are an infinite range of nasty, resource-hogging, memory-bloating, CPU-overheating programs that simply waste resources. In a world computer, a program that abuses resources gets to abuse the world’s resources. How does Ethereum constrain the resources used by a smart contract if it cannot predict resource use in advance?
* To answer this challenge, Ethereum introduces a metering mechanism called gas. As the EVM executes a smart contract, it carefully accounts for every instruction (computation, data access, etc.). Each instruction has a predetermined cost in units of gas. When a transaction triggers the execution of a smart contract, it must include an amount of gas that sets the upper limit of what can be consumed running the smart contract. The EVM will terminate execution if the amount of gas consumed by computation exceeds the gas available in the transaction. Gas is the mechanism Ethereum uses to allow Turing-complete computation while limiting the resources that any program can consume.
* The next question is, 'how does one get gas to pay for computation on the Ethereum world computer?' You won’t find gas on any exchanges. It can only be purchased as part of a transaction, and can only be bought with ether. Ether needs to be sent along with a transaction and it needs to be explicitly earmarked for the purchase of gas, along with an acceptable gas price. Just like at the pump, the price of gas is not fixed. Gas is purchased for the transaction, the computation is executed, and any unused gas is refunded back to the sender of the transaction.



## From General-Purpose Blockchains to Decentralized Applications (DApps)
  * DApps represent a broader perspective than smart contracts. A DApp is, at the very least, a smart contract and a web user interface. More broadly, a DApp is a web application that is built on top of open, decentralized, peer-to-peer infrastructure services.
A DApp is composed of at least:
1. Smart Contract on blockchain
2. Web frontend user interface
In addition, many DApps include other decentralized components, such as:
1. A decentralized (P2P) storage protocol and platform
2. A decentralized (P2P) messaging protocol and platform
--------------------
You may see DApps spelled as ÐApps. The Ð character is the Latin character called "ETH," alluding to Ethereum. To display this character, use the Unicode codepoint 0xD0, or if necessary the HTML character entity eth (or decimal entity #208).

--------------------






