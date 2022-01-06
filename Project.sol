pragma solidity ^ 0.8.0;

contract CrowdFunding {
// the following struct is for a withdrawal request.
    struct withdrawal{
            string description; // a descreption for why the withdrawl needs to be made. 
            uint value; // the value of the withdrawal.
            address recipient; // in case the owner of the contract want to send the withdrawal to someone other than himself.
            bool complete; // to mark wether the withdrawl is completed or not.
            uint approvalCount; // to make sure we have the exact number of approvals (in this contract it will be more than 50% of the contributors).
    }
    mapping(address => bool) approvals; // to make sure if someone has already approved he will not be able to approve again.
    withdrawal[] public withdrawals; 
    address public owner; // adreess for whoever starts the contract
    mapping (address => bool) contributors; // to keep track of all the contributors. we will have their adressess then chech if they contributed or not.
    uint public contributorsCount; // number of contributors. Every time there is a contibutor it will add to contributorsCount. 
    uint public minimumContribution; // minimum amount of the contribution. so when you contibute to a campaign you have to at least send in a specified amount.

    constructor(uint minimum, address creator) public {
        owner = creator;
        minimumContribution = minimum; 
    }
// the follwing function is created to allow people to contribute some amount of Eth to the campaign.
    function contibute() public payable { 
        require(msg.value>= minimumContribution); // to make sure that every amount people sent is greater then or equal to the minmum amount of the contribution. 
        contributors[msg.sender]=true; // to add the contributors addresses.
        contributorsCount++; // to increase the contributors ؤount.


    }
// the following modifier is created to make sure that only the owener can call some functions.
    modifier onlyOwner() {
        require(msg.sender == owner);
        
         _;

        }
// the following modifier is created to check if the contributors are in their addresses.
    modifier onlyContributer() {
        require(contributors[msg.sender]);
        _;

        }
// the following function is created to be called by only the OWNER, the owenr will need the discription of the withdrawal, the value of the withdrawal and the recipient address.
    function creatWithdrawal(string memory description, uint value, address recipient) public onlyOwner {
        withdrawal memory newWithdrawal = withdrawal ({
            description: description,
            value: value,
            recipient: recipient,
            complete: false,
            approvalCount:0
        });
        withdrawals.push(newWithdrawal); // setting up an array to add the new withdrawals.
    }

}
