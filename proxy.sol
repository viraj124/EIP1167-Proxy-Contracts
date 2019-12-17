pragma solidity >=0.4.23 <0.6.0;
import "./ballot.sol";
import "https://github.com/optionality/clone-factory/blob/master/contracts/CloneFactory.sol";


contract Ballot_Proxy is CloneFactory {
    address constant template = 0x692a70D2e424a56D2C6C27aA97D1a86395877b3A;
    
    function create(uint8 limit)
    external returns (address) {
        address wallet = createClone(template);
        Ballot(wallet).set(limit);
        return wallet;
    }
}