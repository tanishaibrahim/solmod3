// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract token_create {
    string public name_of_token = "Token";
    string public symbol = "TKN";
    uint256 public totalSupply = 0;

    mapping(address => uint256) public balances;

    function mint(address _to, uint256 _value) public {
        totalSupply += _value;
        balances[_to] += _value;
    }

    function burn(address _burnaddress, uint256 _value) public {
        if (balances[_burnaddress] >= _value) {
            totalSupply -= _value;
            balances[_burnaddress] -= _value;
        }
    }
}
