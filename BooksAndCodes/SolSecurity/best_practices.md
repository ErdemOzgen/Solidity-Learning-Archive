| Best Practices                                       | Principles                                     | Take care unexpected                          |
|------------------------------------------------------|------------------------------------------------|-----------------------------------------------|
| Check, update, then interact                         | Call control                                   | Behaviors of external calls                    |
| Never delegatecall to untrusted contract             | Take care unexpected                           | Enforce accurate and adequate                 |
| Favor pull over push for external calls               | Behaviors of external calls                    | Authentication and authorization              |
| Never outsource critical function to other contracts | Enforce accurate and adequate                 | Protect secrecy-specific contracts           |
| Handle errors in external calls                      | Authentication and authorization              | Programmer                                    |
| Include contract address and nonce in signature      | Protect secrecy-specific contracts            | Data control                                  |
| Accurately label the visibility of functions and variables | Programmer                                   | Enforce accurate and adequate                 |
| Never use a contract balance as a guard              | Data control                                  | Data validation                               |
| Check the length of msg.data                         | Enforce accurate and adequate                 | Resource control                              |
| Use external sources of randomness via oracles       | Data validation                               | Tool control                                  |
| Assure the correctness of the recipient address      | Resource control                              | Control gas consumption                       |
| Never use block timestamp in condition checks        | Tool control                                  | Use the recent toolchain                       |
| Avoid looping over a data structure of unknown size  | Control gas consumption                       | Favor pull over push for external calls        |
| Use the recent Solidity compiler version              | Use the recent toolchain                       | Never outsource critical function to other contracts |
| Use SafeMath library for arithmetic operations        |                                                | Handle errors in external calls                |
| Use multi-factor authentication schemes for suicide  |                                                | Include contract address and nonce in signature |
| Add authentication to functions involving Ether-transfer |                                              | Accurately label the visibility of functions and variables |
| Use cryptographic commit-reveal schemes for secrecy   |                                              | Never use a contract balance as a guard        |
| Never use tx.origin for authorization                 |                                              | Check the length of msg.data                   |
|                                                      |                                              | Use external sources of randomness via oracles |
|                                                      |                                              | Assure the correctness of the recipient address |
|                                                      |                                              | Never use block timestamp in condition checks |
|                                                      |                                              | Avoid looping over a data structure of unknown size |
|                                                      |                                              | Use the recent Solidity compiler version       |
|                                                      |                                              | Use SafeMath library for arithmetic operations |
|                                                      |                                              | Use multi-factor authentication schemes for suicide |
|                                                      |                                              | Add authentication to functions involving Ether-transfer |
|                                                      |                                              | Use cryptographic commit-reveal schemes for secrecy |
|                                                      |                                              | Never use tx.origin for authorization          |
