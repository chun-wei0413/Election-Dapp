# Election Dapp

此專案來源:[https://www.dappuniversity.com/articles/the-ultimate-ethereum-dapp-tutorial](https://www.dappuniversity.com/articles/the-ultimate-ethereum-dapp-tutorial)

## Description

這是一個有關電子投票選舉系統的去中心化應用程式，它模擬電子投票的方式。利用冷錢包連結電子投票web3網站，並且透過扣除ETH測試幣方式做出投票動作。

## **Dependencies**

**1.NPM**（Node Package Manager）：Node.js 的套件管理工具，用於安裝和管理 JavaScript 套件。在智能合約開發中，可以使用 NPM 安裝 Truffle、Mocha、Chai 等工具。

[https://nodejs.org/en](https://nodejs.org/en)

**2.Truffle**：一個用於開發、測試和部署以太坊智能合約的開發框架。它提供了一組工具，使得智能合約開發更加容易和高效。

```jsx
npm install -g truffle
```

**3.Mocha**：一個 JavaScript 測試框架，用於撰寫和執行測試。在智能合約開發中，Mocha 可以用來撰寫和執行智能合約的單元測試。

**4.Chai**：一個用於 Node.js 和瀏覽器的 BDD/TDD 斷言庫，用於撰寫更易讀的測試程式碼。在智能合約開發中，Chai 可以與 Mocha 搭配使用，提供豐富的斷言功能。

**5.Ganache**：一個用於快速開發、測試和調試以太坊智能合約的個人區塊鏈。Ganache 提供了一個可在本地運行的區塊鏈環境，用於模擬以太坊網路的行為。

[https://archive.trufflesuite.com/ganache/](https://archive.trufflesuite.com/ganache/)

**6.Metamask**：一個用於在瀏覽器中管理以太坊資產的加密錢包擴展。Metamask 可以與以太坊網路互動，用於在瀏覽器中執行智能合約交互操作，例如發送交易、簽署合約等。

## 環境建置

1. 

```jsx
truffle migrate
```

如果更改合約就要使用以下部署

```jsx
truffle migrate --reset
```

2.

```jsx
npm run dev
```