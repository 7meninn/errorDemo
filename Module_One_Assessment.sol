// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

error lackOfFunds (uint _amountYouHave, uint _amountRequired);
event minted (uint _amountCredited, address _forAddress);

contract errorDemo
{
    address owner;
    mapping (address => uint) balanceMapping;
    uint trxCount = 0;
    modifier allowOnlyOwner ()
    {
        require (msg.sender == owner, "Only owner can perform this operation.");
        _;
    }

    constructor()
    {
        owner = msg.sender;
    }

    function mintFor (address _receivingAddress, uint _creditingAmount) allowOnlyOwner public 
    {
        balanceMapping[_receivingAddress] += _creditingAmount;
        emit minted (_creditingAmount, _receivingAddress);
    }

    function sendMyCoins (address _senderAddress, address _receiverAddress, uint _howMany) public
    {
        trxCount += 1;
        if (balanceMapping[_senderAddress] < _howMany)
        {
            revert lackOfFunds(balanceMapping[_senderAddress], _howMany);
        }
        assert (trxCount >= 1);
        balanceMapping[_receiverAddress] += _howMany;
        balanceMapping[_senderAddress] -= _howMany;
    }
}