FUNCTION MODIFIERS .
1- (View) keyword is used with a function when it returns a not . It can not modify a value .
2- (Pure) keyword is used with a function when it returns only a computation value.
3- If none of above keyword is used with a function then values can be modified inside a function.

FUNCTION VISIBILTY (also apply to variables visisbilty) .
1- (Private) can be called only from inside in which defined, by default every function is private.
2- (Internel)  can be called only from inside and contracts derived from it.
3- (Externel) can be from outside only.
4- (Public) can be called internely or externely.

TX
(tx.origin) it used to cheak origon of transaction.

MSG
(msg.value) it shows the amount of ethers sent.
(msg.sender) it shows the address from where transection came.

Umair => SmartContract A    =>    SmartContract B
         tx.origin = Umair        tx.origin = Umair
         msg.sender = A           msg.sender = B
