// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract FundMe{
    // Mapping to hold which address funded how much
    mapping(address=>uint256) public addressToAmoutFunded;
    address[] funders;
    // Chain Link ETH/USD data feed 
    AggregatorV3Interface pricefeed = AggregatorV3Interface(0x9326BFA02ADD2366b30bacB125260Af641031331);

    address public owner;

    constructor()  {
        owner = msg.sender;
    }

    // This functions add funds to contract
    function fund () public payable{
        uint256 minValue = 50 *10 **18;
        require(getConversionRate(msg.value) >= minValue,"Failed Amount must be above 50$");
        addressToAmoutFunded[msg.sender]+=msg.value;
        funders.push(msg.sender);
    }

    // Get Version of Aggridator
    function getVersion() public view returns(uint256){
       return pricefeed.version();
    }

    // Get ETH/USD Price
    function getPrice() public view returns(uint256){
        (,int price,,,) = pricefeed.latestRoundData();
        return uint256(price * 10000000000);
    }
    
    function getConversionRate(uint256 ethAmount) public view returns (uint256){
        uint256 ethPrice = getPrice();
        uint256 ethAmountInUsd = (ethPrice * ethAmount) / 1000000000000000000;
        // the actual ETH/USD conversation rate, after adjusting the extra 0s.
        return ethAmountInUsd;
    }

    function withdraw() payable public{
        require(msg.sender == owner);
       payable(msg.sender).transfer(address(this).balance);
       for(uint256 i= 0;i<funders.length;i++){
           address funder = funders[i];
           addressToAmoutFunded[funder] = 0;
       }
       funders = new address[](0);
    }
}
