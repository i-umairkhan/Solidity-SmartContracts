pragma solidity ^0.8.0;

contract MyContract{
    enum State {ACTIVE , INACITIVE , PRO}
    State Mystate;

    function setstate()  public {
        Mystate = State.PRO;
    }
}
