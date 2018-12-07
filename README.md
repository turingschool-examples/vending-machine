## Build a Ruby CLI for a Vending Machine

Contents of the vending machine lives in `tiny_vending_machine.json`.

Running the program should present a prompt.

```
Hello, please enter a command:
(c)ontents - Prints the contents of the vending machine.
(i)nsert money - Takes in coins and prints total money inserted.
(v)alid coin values - Prints the valid coins inputs:  Accepts coins of 1,5,10,25 Cents i.e. penny, nickel, dime, and quarter.
(p)urchase - Displays a prompt to enter the slot they'd like to purchase.
```

## Insert Money

```
> i

Please insert your money > 13

Not a valid coin.

Please insert your money > 25

Total inserted: 25

> i

Please insert your money > 25

Total inserted: 50
```

## Purchase

```
> p

Please enter the slot of the item you'd like to vend > g7

Not a valid slot...

> p
Please enter the slot of the item you'd like to vend > b1
Sorry. There are no items remaining.

> p
Please enter the slot of the item you'd like to vend > a1
Insufficient funds. Please (i)nsert more money.

> i
Please insert your money > 25,25,25,25
Total inserted: 100

> p
Please enter the slot of the item you'd like to vend > a1

Vending...

Enjoy your Snickers!

```

## Extensions

* Rewrite the JSON file each time something vends successfully
* Provide change
  * Create a preference for returning larger coins first
  * Change should only be in the supported coin types
* Vending machine admin:
  * Reset the contents
  * Make sure each slot is not over filled
