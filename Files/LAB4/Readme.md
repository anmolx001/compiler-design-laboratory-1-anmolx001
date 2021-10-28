# Lab 4 - 27 August 2021

| Sr. No. | Description | Date | Source Code | Output |
| :--: | :---- | :--: | :--: | :--: |
| 1. | WAP to recognize float and int data type. |  27/08/2021  | [Link](./recognize_float_int/recognize_float_int.l)  | [Link](./recognize_float_int/Output.PNG
| 2. | WAP to verify a valid identifier. |  27/08/2021  | [Link](./verify_identifier/verify_identifier.l)  | [Link](./verify_identifier/Otput.PNG)
| 3. | WAP to verify a valid keyword. |  27/08/2021  | [Link](./verify_keyword/verify_keyword.l)  | [Link](./verify_keyword/Output.PNG)
| 4. | WAP to recognize basic operators (`PLUS(+), MINUS(-), GE(>=), LE(<=)`). |  27/08/2021  | [Link](./recognize_basic_operators/recognize_basic_operators.l)  | [Link](./recognize_basic_operators/Output.PNG)
| 5. | WAP to determine input operators whether arithmetic or logical. |  27/08/2021  | [Link](./arithmetic_logical_operators/arithmetic_logical_operators.l)  | [Link](./arithmetic_logical_operators/Output.PNG)

[Link to Lab5](../Lab5)

## Sample Input/Output

1. Write a program to recognize float and int data type.</br>
       Date - 27/08/2021 </br>
       [Source Code](./recognize_float_int/recognize_float_int.l) <br>
       [Output](./recognize_float_int/Output.PNG) <br>

Sample Input:
```
        0056
        123.101
        Anmol
```
Sample Output:
```
        0056 is of int type
        123.101 is of float type
        Anmol neither float nor int
```

2. Write a program to verify a valid identifier.</br>
       Date - 27/08/2021 </br>
       [Source Code](./verify_identifier/verify_identifier.l) <br>
       [Output](./verify_identifier/Output.PNG) <br>

Sample Input:
```txt
        Var_check0
        0var
        var
        Anmol_Chhabra
```

Sample Output:
```txt
        A valid identifier
        Not a valid identifier
        A valid identifier
        A valid identifier
```

3. Write a program to verify a valid keyword.</br>
       Date - 27/08/2021 </br>
       [Source Code](./verify_keyword/verify_keyword.l) <br>
       [Output](./verify_keyword/Output.PNG) <br>

Sample Input:
```
        bool
        booolEAN
        anmol
        int
```
Sample Output:
```
        A keyword
        Not a keyword
        Not a keyword
        A keyword
```

4. Write a program to recognize basic operators (PLUS(+), MINUS(-), GE(>=), LE(<=)).</br>
       Date - 27/08/2021 </br>
       [Source Code](./recognize_basic_operators/recognize_basic_operators.l) <br>
       [Output](./recognize_basic_operators/Output.PNG) <br>

Sample Input:
```
        +
        -
        >=
        <=
```

Sample Output:
```
        It's a PLUS operator
        It's a MINUS operator
        Greater or equal to operator
        Lesser or equal to operator
```

5. Write a program to determine input operators whether arithmetic or logical.</br>
       Date - 27/08/2021 </br>
       [Source Code](./arithmetic_logical_operators/arithmetic_logical_operators.l) <br>
       [Output](./arithmetic_logical_operators/Output.PNG) <br>

Sample Input:
```
        +
        &&
        *
        ||
        @
```

Sample Output:
```
        It's a valid arithmetic operator
        It's a valid logical operator
        It's a valid arithmetic operator
        It's a valid logical operator
        Neither logical nor arithmetic operator!
```
