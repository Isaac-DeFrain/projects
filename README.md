# Isaac DeFrain's Projects

I have an insatiable passion for learning about and building open source, decentralized, and formally verified zero-knowledge blockchain protocols.

## Paid Projects

### [LayerZero Labs](https://github.com/LayerZero-Labs) ([Ethereum](https://ethereum.org/), [Starknet](https://www.starknet.io/)), Jun 2025 - Oct 2025

__Senior Protocol Engineer__

_Main projects_

- [Omnichain messaginig protocol for Starknet (Cairo)](https://docs.layerzero.network/v2/developers/starknet/oapp/overview)
- [OFTs](https://docs.layerzero.network/v2/developers/evm/oft/quickstart)

_Responsibilities_

- Implemented [LayerZero omnichain messaging protocol](https://docs.layerzero.network/v2/concepts/getting-started/what-is-layerzero) in [Cairo](https://www.cairo-lang.org/) ([Zellic](https://www.zellic.io/)/[Ottersec](https://osec.io/) audited)
- Implemented [Starknet wBTC and SolvBTC OFTs (Omnichain Fungible Tokens)](https://www.starknet.io/staking/bitcoin-staking-user-guide-for-starknet/) in Cairo
- Deployed and wired Solidity/Cairo [messaging protocol endpoint contracts](https://docs.layerzero.network/v2/deployments/deployed-contracts)
- End-to-end unit, integration, and fuzz tested Cairo endpoint contracts
- Integrated [Cursor](https://cursor.com/agents)/AI into my workflow for increased productivity

### [Granola](https://granola.team/) ([Mina Protocol](https://minaprotocol.com/)), Dec 2022 - June 2025

__Senior Software & Security Engineer__

_Main projects_

- [mina-indexer](https://github.com/Granola-Team/mina-indexer) - A GraphQL-enabled indexer of the Mina blockchain
- [abstract-engine](https://github.com/MinaFoundation/mina/tree/abstract_engine) - node/network integration testing framework
- [minimina](https://github.com/MinaFoundation/minimina) - A powerful tool for local development and integration testing of Mina networks
- [go-mplex DDoS protection](https://github.com/Isaac-DeFrain/go-mplex/commit/2a173fb6a73a9d03a31390809ae2dca4c2e4b8f8)
- [Mina daemon improvements](https://github.com/MinaProtocol/mina/pull/13258)

_Responsibilities_

- Architected and implemented performant blockchain indexer for Mina Protocol
- Created generic integration testing harness using docker compose
- Fixed critical go-libp2p go-mplex DDoS vulnerability without requiring hard fork
- Led security/QA investigations targeting [release of Mina zkApps update](https://github.com/MinaProtocol/mina/discussions/15715) - [zkApps incentivized testnet](https://github.com/Granola-Team/zkapps-itn)
- Added local precomputed block logging and other UX features to Mina daemon supporting Mina Indexer

### [Viable Systems](https://github.com/viable-systems) ([Tezos](https://tezos.com/)), Dec 2020 - Mar 2022

__Formal Verification Engineer__

_Main projects_

- [TLA+ specifications](https://github.com/tezedge/tezedge-specification)
- [tezedge](https://github.com/tezedge/tezedge) - Tezos node rust implementation

_Responsibilities_

- Specified and verified Emmy/Tenderbake consensus, P2P protocols, task schedulers [TLA+](https://github.com/tlaplus/tlaplus) specifications
- Translated TLA+ specs into rust implementations for TezEdge
- Built liveness-checking and node-debugger proofs of concept

### [RChain Cooperative (RChain)](https://github.com/rchain), Dec 2018 - Mar 2020, Jul 2022 - Sep 2022

__Smart Contract & Formal Verifictaion Engineer__

_Main projects_

- [K Framework formal specification of Rholang smart contract language](https://github.com/Isaac-DeFrain/KFramework/tree/master/Languages/GroundedRho)
- [Consensus smart contracts](https://github.com/rchain/rchain/tree/dev/casper/src/main/resources)
- [Consensus formal verification](https://github.com/Isaac-DeFrain/TLAplusFun/tree/main/Casper)

_Responsibilities_

- Implemented proof of stake consensus based on [GHOST](https://blog.nomos.tech/the-ghost-fork-choice-rule-and-why-nomos-doesnt-use-it/)
- Implemented dynamically dispatchable smart contracts
- Specified and verified [K Framework](https://github.com/runtimeverification) specification of [Rholang](https://github.com/rchain/rchain)
- Specified and verified TLA+ specification of [CBC Casper consensus](https://github.com/cbc-casper/cbc-casper-paper)

---

## Personal Projects

<!-- personal-projects:start -->
### SCOTUS helper

- [Website](https://scotus-helper.com)
- [Source code](https://github.com/Isaac-DeFrain/scotus-helper)

<img src="https://opengraph.githubassets.com/06ebd157d0f0c29cdff0c6a4c997c0fa68f0789e9aa41a94bd004a479ee60d4e/Isaac-DeFrain/scotus-helper" width="50%" alt="SCOTUS helper" />

### Blog

> I deploy this app via GitHub Pages as my personal blog.

- [Website](https://blog.isaacdefrain.com)
- [Source code](https://github.com/Isaac-DeFrain/blog)

<img src="https://opengraph.githubassets.com/2bf39e10d6ff86bdf564f99b3d77f4154cd7ef391326bbabfdec690d0265c177/Isaac-DeFrain/blog" width="50%" alt="Blog" />

### Fun with TLA+

- [Source code](https://github.com/Isaac-DeFrain/TLAplusFun)

<img src="https://opengraph.githubassets.com/2ca5916a3fae52453a73e28b1e7d185b0676eb0b16bdcae608c838d114de7e7b/Isaac-DeFrain/TLAplusFun" width="50%" alt="Fun with TLA+" />

### Pinnochio

- [Source code](https://github.com/Isaac-DeFrain/pinocchio)

<img src="https://opengraph.githubassets.com/496a0f1d98ffb757921ab91d16f1dd88f1857fe4415ffb742a2afaaadfc5d4f0/Isaac-DeFrain/pinocchio" width="50%" alt="Pinnochio" />

### GitHub reporting

- [Source code](https://github.com/Isaac-DeFrain/github-reporting-py)

<img src="https://opengraph.githubassets.com/e2effba13c9fab7869d5129bdc841eeb6ad54fd57edba3497c8fc947bc3dadb5/Isaac-DeFrain/github-reporting-py" width="50%" alt="GitHub reporting" />

### Model-based trace checking

- [Source code](https://github.com/Isaac-DeFrain/model-based-trace-checking)

<img src="https://opengraph.githubassets.com/db137336e64b07c4e95f9dc91214e576887d27867462253a09e0750273523baa/Isaac-DeFrain/model-based-trace-checking" width="50%" alt="Model-based trace checking" />

### BFT specs

- [Source code](https://github.com/Isaac-DeFrain/bft-specs)

<img src="https://opengraph.githubassets.com/b054559eae40d64fdde71de6a1be8ef1365f9940b726474a83cfe42eec45afdb/Isaac-DeFrain/bft-specs" width="50%" alt="BFT specs" />

<!-- personal-projects:end -->
