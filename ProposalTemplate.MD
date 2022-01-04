## Project Proposal

## Group Number: 7

## Group Name: ABT

## Group Members:
### - Abdullah Al-Anazi
### - Aedah Al-rehaili
### - Ayat Bu-Suhail
### - Bayan Al-Serhani
### - Thuraya Al-rwaili

## Project: Blockchain Based Crowdfunding Website


## What is your project? 
A crowdFunding smart contract where a project gets funded by raising amounts of Ether on the Ethereum blockchain. The project's value is based on the use of smart contracts and blockchain technology in crowdfunding to verify data from seekers and funders, eliminate dependence on third parties and speed up the submission and disbursement of funds.


## What is required in order to complete your project?

## Goals: 
1. A Fund creator contract which is the main contract (Ayat).

2. A crowdfunding contract that allows anyone to get donations for calls. It contains some variables such as the number of contributors, minimum amount of contribution, contribution deadline, goal, and raised amounts (Bayan).

3. An admin struct request that requests the raised amount and draws it. It contains a description of the request, an address of the recipient as well as voters' numbers and addresses (Abduullah).

4. Some events specify whenever an amount or request or payment is made (Aedah).

5. A constructor which has the goal amount converted to Ethers and the contribution deadline as uint type for both as well as an address of the admin as follows: Constructor(uint goal, uint deadline, address admin) ( Thuraya).

6. A contribute function checks if the deadline has been passed before making a contribution as well as checks if the minimum contribution has been met (Bayan).

7. A create request function which allows users to create requests (Aedah).

8. A vote function that allows contributors to vote on a request (Abduullah).

9. A make payment function that allows contributors to make payments (Ayat).

## Resources from outside of class:
https://journals.indexcopernicus.com/api/file/viewByFileId/594400.pdf

https://github.com/akcgjc007/kick_U

https://www.researchgate.net/publication/342742097_Smart_Contract_and_Blockchain_for_Crowdfunding_Platform


## Presentation Time Estimate:
25-30 minutes + Q/A
