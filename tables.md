# Contents

The tables here presented are organized as follows:
* [Summary](#summary) tables contain the aggregated data regarding each iteration operation, their response times and distance metrics, normalized per example, per command and per kind of operation (structure- or quantity-level), prior to taking the average of their values. There are two kinds of tables, one focusing on the bounded examples, while the other focuses on examples which lead to unbounded optimization goals (in particular, *2d_int_inf.als*, *bank.als*, *network.als* and *network_litre.als*), considering the first 10 iterations and all 30 iterations also.
* [Response times](#response-times) presents the table which results from taking the average response time of doing, at most, 30 iterations for each scenario benchmarked.
* [Solution variety](#solution-variety) presents two tables showcasing the metrics measured for the first 10 and 30 iterations (at most), for every scenario being evaluated.

# Summary

These tables display the following:
* **Operation** and **Goal** identify the kind of iteration operation and the optimization goal considered
* $\mu_{min}(ms)$ and $\mu_{max}(ms)$ correspond to the minimum and maximum average response time observed, respectively
* $\mu_N$ and $\sigma_N$ the normalized (between 0 and 100) average mean and standard deviation of the response times
* $t_{out}(\\%)$ the percentage of commands which hit a timeout
* $\mu_{<1}(\\%)$ and $\mu_{<10}(\\%)$ show the percentage of commands responding in less than $1$ and $10$ seconds, on average 
* $\mu_D$ and $\sigma_D$ show the normalized average mean and standard deviation of the pairwise distance between the solutions produced
* $i_{tout}(\\%)$ is an additional column considered in the tables built over the data from unbounded examples, identifying the percentage of commands which hit a timeout immediately on the first iteration

## Solution iteration (first 10 iterations)

| Operation | $\mu_{min}(ms)$ | $\mu_{max}(ms)$ | $\mu_N$ | $\sigma_N$ | $t_{out}(\\%)$ | $\mu_{<1}(\\%)$ | $\mu_{<10}(\\%)$ | $\mu_D$ | $\sigma_D$ |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| $\mathsf{next}$ | 2 | 1928 | 4 | 24 | 0.0 | 94.74 | 100.0 | 5 | 67 | 
| $\mathsf{next}^{\emptyset}_{S}$ | 1 | 848 | 13 | 47 | 5.26 | 94.74 | 94.74 | 66 | 22 | 
| $\mathsf{next}^{B}_{S}$ | 3 | 5812 | 100 | 65 | 10.53 | 68.42 | 89.47 | 100 | 57 | 

| Operation | Goal | $\mu_{min}(ms)$ | $\mu_{max}(ms)$ | $\mu_N$ | $\sigma_N$ | $t_{out}(\\%)$ | $\mu_{<1}(\\%)$ | $\mu_{<10}(\\%)$ | $\mu_D$ | $\sigma_D$ |
| --- | --- | --- | --- | --- | --- | --- | ---  | --- | --- | --- |
| $\mathsf{next}^{\emptyset}_{Q}$ | | 2 | 187 | 0 | 0 | 0.0 | 100.0 | 100.0 | 11 | 15 | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{SDst}_{\mathsf{BOX}}$ | 18 | 3934 | 74 | 74 | 21.05 | 47.37 | 78.95 | 17 | 45 | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{SDst}_{\mathsf{LEX}}$ | 14 | 4352 | 33 | 23 | 15.79 | 78.95 | 84.21 | 12 | 42 | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{SDst}_{\mathsf{PAR}}$ | 7 | 34 | 13 | 4 | 57.89 | 42.11 | 42.11 | 21 | 26 | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{VDst}_{\mathsf{BOX}}$ | 22 | 6773 | 73 | 77 | 31.58 | 52.63 | 68.42 | 26 | 24 | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{VDst}_{\mathsf{LEX}}$ | 13 | 5969 | 30 | 17 | 10.53 | 78.95 | 89.47 | 9 | 37 | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{VDst}_{\mathsf{PAR}}$ | 15 | 33 | 16 | 4 | 68.42 | 31.58 | 31.58 | 13 | 17 | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{VAvg}_{\mathsf{BOX}}$ | 8 | 11512 | 25 | 13 | 21.05 | 73.68 | 73.68 | 51 | 31 | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{VAvg}_{\mathsf{LEX}}$ | 7 | 1706 | 16 | 2 | 10.53 | 84.21 | 89.47 | 74 | 69 | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{VAvg}_{\mathsf{PAR}}$ | 9 | 37 | 43 | 6 | 68.42 | 31.58 | 31.58 | 33 | 29 | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{SAvg}$ | 5 | 7082 | 26 | 6 | 10.53 | 84.21 | 89.47 | 76 | 63 | 

## Solution iteration (all 30 iterations)

| Operation | $\mu_{min}(ms)$ | $\mu_{max}(ms)$ | $\mu_N$ | $\sigma_N$ | $t_{out}(\\%)$ | $\mu_{<1}(\\%)$ | $\mu_{<10}(\\%)$ | $\mu_D$ | $\sigma_D$ |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| $\mathsf{next}$ | 2 | 218 | 3 | 11 | 5.26 | 94.74 | 94.74 | 6 | 54 | 
| $\mathsf{next}^{\emptyset}_{S}$ | 1 | 199 | 5 | 39 | 10.53 | 89.47 | 89.47 | 73 | 22 | 
| $\mathsf{next}^{B}_{S}$ | 3 | 4883 | 100 | 76 | 10.53 | 68.42 | 89.47 | 100 | 67 | 

| Operation | Goal | $\mu_{min}(ms)$ | $\mu_{max}(ms)$ | $\mu_N$ | $\sigma_N$ | $t_{out}(\\%)$ | $\mu_{<1}(\\%)$ | $\mu_{<10}(\\%)$ | $\mu_D$ | $\sigma_D$ |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| $\mathsf{next}^{\emptyset}_{Q}$ | | 2 | 168 | 0 | 0 | 0.0 | 100.0 | 100.0 | 11 | 11 | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{SDst}_{\mathsf{BOX}}$ | 21 | 5751 | 69 | 58 | 42.11 | 36.84 | 57.89 | 3 | 13 | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{SDst}_{\mathsf{LEX}}$ | 24 | 4173 | 48 | 41 | 21.05 | 52.63 | 78.95 | 10 | 27 | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{SDst}_{\mathsf{PAR}}$ | 11 | 54 | 12 | 3 | 57.89 | 42.11 | 42.11 | 23 | 25 | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{VDst}_{\mathsf{BOX}}$ | 22 | 15602 | 78 | 85 | 42.11 | 42.11 | 52.63 | 22 | 27 | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{VDst}_{\mathsf{LEX}}$ | 24 | 16213 | 43 | 38 | 10.53 | 63.16 | 84.21 | 7 | 20 | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{VDst}_{\mathsf{PAR}}$ | 15 | 33 | 16 | 4 | 68.42 | 31.58 | 31.58 | 12 | 13 | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{VAvg}_{\mathsf{BOX}}$ | 8 | 8979 | 20 | 8 | 21.05 | 73.68 | 78.95 | 54 | 37 | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{VAvg}_{\mathsf{LEX}}$ | 7 | 1786 | 15 | 2 | 10.53 | 84.21 | 89.47 | 72 | 75 | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{VAvg}_{\mathsf{PAR}}$ | 10 | 37 | 42 | 6 | 68.42 | 31.58 | 31.58 | 33 | 32 | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{SAvg}$ | 5 | 7841 | 25 | 5 | 10.53 | 84.21 | 89.47 | 76 | 69 | 

## Iteration over unbounded examples (first 10 iterations)

| Operation | Goal | $\mu_{min}(ms)$ | $\mu_{max}(ms)$ | $\mu_N$ | $\sigma_N$ | $i_{tout}(\\%)$ | $t_{out}(\\%)$ | $\mu_{<1}(\\%)$ | $\mu_{<10}(\\%)$ | $\mu_D$ | $\sigma_D$ |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| $\mathsf{next}^{\emptyset}_{Q}$ |  | 2 | 29 | 0 | 6 | 0 | 0 | 100 | 100 | 0 | 2 | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{SDst}_{\mathsf{BOX}}$ | 7 | 5975 | 76 | 75 | 0 | 0 | 75 | 100 | 54 | 52 | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{SDst}_{\mathsf{LEX}}$ | 4 | 119 | 14 | 14 | 0 | 0 | 100 | 100 | 10 | 8 | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{SDst}_{\mathsf{PAR}}$ | *NA* | *NA* | *NA* | *NA* | 0 | 100 | 0 | 0 | *NA* | *NA* | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{VDst}_{\mathsf{BOX}}$ | 6 | 947 | 87 | 90 | 25 | 50 | 50 | 50 | 50 | 50 | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{VDst}_{\mathsf{LEX}}$ | 5 | 60 | 21 | 9 | 0 | 0 | 100 | 100 | 5 | 2 | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{VDst}_{\mathsf{PAR}}$ | *NA* | *NA* | *NA* | *NA* | 100 | 100 | 0 | 0 | *NA* | *NA* | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{VAvg}_{\mathsf{BOX}}$ | 4 | 29 | 13 | 0 | 0 | 50 | 50 | 50 | 59 | 51 | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{VAvg}_{\mathsf{LEX}}$ | 3 | 46 | 7 | 6 | 0 | 0 | 100 | 100 | 33 | 28 | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{VAvg}_{\mathsf{PAR}}$ | *NA* | *NA* | *NA* | *NA* | 100 | 100 | 0 | 0 | *NA* | *NA* | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{SAvg}$ | 3 | 48 | 7 | 0 | 0 | 0 | 100 | 100 | 31 | 26 | 

## Iteration over unbounded examples (all 30 iterations)

| Operation | Goal | $\mu_{min}(ms)$ | $\mu_{max}(ms)$ | $\mu_N$ | $\sigma_N$ | $i_{tout}(\\%)$ | $t_{out}(\\%)$ | $\mu_{<1}(\\%)$ | $\mu_{<10}(\\%)$ | $\mu_D$ | $\sigma_D$ |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| $\mathsf{next}^{\emptyset}_{Q}$ | | 2 | 24 | 0 | 0 | 0 | 0 | 100 | 100 | 1 | 0 | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{SDst}_{\mathsf{BOX}}$ | 9 | 114 | 100 | 83 | 0 | 50 | 50 | 50 | 23 | 16 | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{SDst}_{\mathsf{LEX}}$ | 8 | 1173 | 70 | 70 | 0 | 0 | 75 | 100 | 33 | 36 | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{SDst}_{\mathsf{PAR}}$ | *NA* | *NA* | *NA* | *NA* | 0 | 100 | 0 | 0 | *NA* | *NA* | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{VDst}_{\mathsf{BOX}}$ | 8 | 8 | 86 | 61 | 25 | 75 | 25 | 25 | 0 | 0 | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{VDst}_{\mathsf{LEX}}$ | 8 | 130 | 64 | 49 | 0 | 0 | 100 | 100 | 30 | 28 | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{VDst}_{\mathsf{PAR}}$ | *NA* | *NA* | *NA* | *NA* | 100 | 100 | 0 | 0 | *NA* | *NA* | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{VAvg}_{\mathsf{BOX}}$ | 5 | 33 | 33 | 16 | 0 | 50 | 50 | 50 | 78 | 58 | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{VAvg}_{\mathsf{LEX}}$ | 5 | 47 | 20 | 9 | 0 | 0 | 100 | 100 | 53 | 51 | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{VAvg}_{\mathsf{PAR}}$ | *NA* | *NA* | *NA* | *NA* | 100 | 100 | 0 | 0 | *NA* | *NA* | 
| $\mathsf{next}^{\mathcal{S}}_{Q}$ | $\mathsf{SAvg}$ | 4 | 43 | 16 | 6 | 0 | 0 | 100 | 100 | 32 | 28 | 

# Response times

This table displays:
* **Example** the QAlloy model considered 
* **Command** the command in focus of the model at hand 
* **Domain** the domain where this model is set
* **Operation** identifies the kind of iteration operation considered
* **Priority** the multi-objective method used, if applicable
* **SAT** the satisfiability result from the last iteration: *SAT* if all 30 solutions were found, *UNSAT* if the solutions were exhausted, *UNK* if a timeout was hit or *INF* (a special case of the *SAT* result) indicating that this example lead to an unbounded optimization goal
* $\mu$ and $\sigma$ the average and standard deviation of the response time for the #iterations executed
* **#Iterations** the number of iterations done by a particular operation for a particular command 

| Example | Command | Domain | Operation | Priority | SAT | $\mu (ms)$ | $\sigma (ms)$ | #Iterations |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 2d_fuzzy | Run XY for exactly 2 B | Fuzzy | ```NAIVE``` | | SAT | 4 | 1 | 30 | 
| 2d_fuzzy | Run XY for exactly 2 B | Fuzzy | ```SUPP``` | | UNS | 4 | 5 | 3 | 
| 2d_fuzzy | Run XY for exactly 2 B | Fuzzy | ```MAXSUPP``` | | UNS | 8 | 7 | 3 | 
| 2d_fuzzy | Run XY for exactly 2 B | Fuzzy | ```NAIVE_QT``` | | SAT | 4 | 2 | 30 | 
| 2d_fuzzy | Run XY for exactly 2 B | Fuzzy | ```SDST``` | ```BOX``` | UNK | timeout | timeout | 5 | 
| 2d_fuzzy | Run XY for exactly 2 B | Fuzzy | ```SDST``` | ```LEX``` | SAT | 296 | 265 | 30 | 
| 2d_fuzzy | Run XY for exactly 2 B | Fuzzy | ```SDST``` | ```PAR``` | UNK | timeout | timeout | 2 | 
| 2d_fuzzy | Run XY for exactly 2 B | Fuzzy | ```VDST``` | ```BOX``` | SAT | 906 | 1649 | 30 | 
| 2d_fuzzy | Run XY for exactly 2 B | Fuzzy | ```VDST``` | ```LEX``` | SAT | 151 | 130 | 30 | 
| 2d_fuzzy | Run XY for exactly 2 B | Fuzzy | ```VDST``` | ```PAR``` | UNK | timeout | timeout | 1 | 
| 2d_fuzzy | Run XY for exactly 2 B | Fuzzy | ```VAVG``` | ```BOX``` | SAT | 15 | 8 | 30 | 
| 2d_fuzzy | Run XY for exactly 2 B | Fuzzy | ```VAVG``` | ```LEX``` | SAT | 11 | 6 | 30 | 
| 2d_fuzzy | Run XY for exactly 2 B | Fuzzy | ```SDST``` | ```PAR``` | UNK | timeout | timeout | 1 | 
| 2d_fuzzy | Run XY for exactly 2 B | Fuzzy | ```SAVG``` | | SAT | 10 | 4 | 30 | 
| 2d_int | Run XY for exactly 2 B | Integer | ```NAIVE``` | | SAT | 2 | 1 | 30 | 
| 2d_int | Run XY for exactly 2 B | Integer | ```SUPP``` | | UNS | 1 | 1 | 4 | 
| 2d_int | Run XY for exactly 2 B | Integer | ```MAXSUPP``` | | UNS | 3 | 2 | 4 | 
| 2d_int | Run XY for exactly 2 B | Integer | ```NAIVE_QT``` | | SAT | 2 | 1 | 30 | 
| 2d_int | Run XY for exactly 2 B | Integer | ```SDST``` | ```BOX``` | SAT | 78 | 68 | 30 | 
| 2d_int | Run XY for exactly 2 B | Integer | ```SDST``` | ```LEX``` | SAT | 48 | 33 | 30 | 
| 2d_int | Run XY for exactly 2 B | Integer | ```SDST``` | ```PAR``` | SAT | 11 | 4 | 30 | 
| 2d_int | Run XY for exactly 2 B | Integer | ```VDST``` | ```BOX``` | SAT | 239 | 222 | 30 | 
| 2d_int | Run XY for exactly 2 B | Integer | ```VDST``` | ```LEX``` | SAT | 42 | 27 | 30 | 
| 2d_int | Run XY for exactly 2 B | Integer | ```VDST``` | ```PAR``` | UNK | timeout | timeout | 1 | 
| 2d_int | Run XY for exactly 2 B | Integer | ```VAVG``` | ```BOX``` | SAT | 8 | 2 | 30 | 
| 2d_int | Run XY for exactly 2 B | Integer | ```VAVG``` | ```LEX``` | SAT | 7 | 2 | 30 | 
| 2d_int | Run XY for exactly 2 B | Integer | ```SDST``` | ```PAR``` | UNK | timeout | timeout | 1 | 
| 2d_int | Run XY for exactly 2 B | Integer | ```SAVG``` | | SAT | 5 | 2 | 30 | 
| 2d_int_inf | Run XY for exactly 2 B | Integer | ```NAIVE``` | | SAT | 2 | 1 | 30 | 
| 2d_int_inf | Run XY for exactly 2 B | Integer | ```SUPP``` | | UNS | 1 | 1 | 4 | 
| 2d_int_inf | Run XY for exactly 2 B | Integer | ```MAXSUPP``` | | UNS | 4 | 2 | 4 | 
| 2d_int_inf | Run XY for exactly 2 B | Integer | ```NAIVE_QT``` | | SAT | 2 | 1 | 30 | 
| 2d_int_inf | Run XY for exactly 2 B | Integer | ```SDST``` | ```BOX``` | INF | 9 | 3 | 30 | 
| 2d_int_inf | Run XY for exactly 2 B | Integer | ```SDST``` | ```LEX``` | INF | 8 | 4 | 30 | 
| 2d_int_inf | Run XY for exactly 2 B | Integer | ```SDST``` | ```PAR``` | UNK | timeout | timeout | 2 | 
| 2d_int_inf | Run XY for exactly 2 B | Integer | ```VDST``` | ```BOX``` | INF | 8 | 3 | 30 | 
| 2d_int_inf | Run XY for exactly 2 B | Integer | ```VDST``` | ```LEX``` | INF | 8 | 3 | 30 | 
| 2d_int_inf | Run XY for exactly 2 B | Integer | ```VDST``` | ```PAR``` | UNK | timeout | timeout | 1 | 
| 2d_int_inf | Run XY for exactly 2 B | Integer | ```VAVG``` | ```BOX``` | INF | 5 | 2 | 30 | 
| 2d_int_inf | Run XY for exactly 2 B | Integer | ```VAVG``` | ```LEX``` | INF | 5 | 2 | 30 | 
| 2d_int_inf | Run XY for exactly 2 B | Integer | ```SDST``` | ```PAR``` | UNK | timeout | timeout | 1 | 
| 2d_int_inf | Run XY for exactly 2 B | Integer | ```SAVG``` | | INF | 4 | 1 | 30 | 
| bank | Run tEx for 4 but exactly 2 Bank | Integer | ```NAIVE``` | | SAT | 34 | 22 | 30 | 
| bank | Run tEx for 4 but exactly 2 Bank | Integer | ```SUPP``` | | SAT | 32 | 16 | 30 | 
| bank | Run tEx for 4 but exactly 2 Bank | Integer | ```MAXSUPP``` | | SAT | 164 | 13 | 30 | 
| bank | Run tEx for 4 but exactly 2 Bank | Integer | ```NAIVE_QT``` | | SAT | 24 | 8 | 30 | 
| bank | Run tEx for 4 but exactly 2 Bank | Integer | ```SDST``` | ```BOX``` | UNK | timeout | timeout | 13 | 
| bank | Run tEx for 4 but exactly 2 Bank | Integer | ```SDST``` | ```LEX``` | UNK | 1173 | 2437 | 21 | 
| bank | Run tEx for 4 but exactly 2 Bank | Integer | ```SDST``` | ```PAR``` | UNK | timeout | timeout | 2 | 
| bank | Run tEx for 4 but exactly 2 Bank | Integer | ```VDST``` | ```BOX``` | UNK | timeout | timeout | 3 | 
| bank | Run tEx for 4 but exactly 2 Bank | Integer | ```VDST``` | ```LEX``` | INF | 130 | 82 | 30 | 
| bank | Run tEx for 4 but exactly 2 Bank | Integer | ```VDST``` | ```PAR``` | UNK | timeout | timeout | 1 | 
| bank | Run tEx for 4 but exactly 2 Bank | Integer | ```VAVG``` | ```BOX``` | UNK | timeout | timeout | 3 | 
| bank | Run tEx for 4 but exactly 2 Bank | Integer | ```VAVG``` | ```LEX``` | INF | 47 | 9 | 30 | 
| bank | Run tEx for 4 but exactly 2 Bank | Integer | ```SDST``` | ```PAR``` | UNK | timeout | timeout | 1 | 
| bank | Run tEx for 4 but exactly 2 Bank | Integer | ```SAVG``` | | INF | 43 | 17 | 30 | 
| bank_bounded | Run tEx for 4 but exactly 2 Bank | Integer | ```NAIVE``` | | SAT | 31 | 12 | 30 | 
| bank_bounded | Run tEx for 4 but exactly 2 Bank | Integer | ```SUPP``` | | SAT | 31 | 12 | 30 | 
| bank_bounded | Run tEx for 4 but exactly 2 Bank | Integer | ```MAXSUPP``` | | SAT | 175 | 14 | 30 | 
| bank_bounded | Run tEx for 4 but exactly 2 Bank | Integer | ```NAIVE_QT``` | | SAT | 24 | 7 | 30 | 
| bank_bounded | Run tEx for 4 but exactly 2 Bank | Integer | ```SDST``` | ```BOX``` | UNK | timeout | timeout | 14 | 
| bank_bounded | Run tEx for 4 but exactly 2 Bank | Integer | ```SDST``` | ```LEX``` | SAT | 1994 | 1391 | 30 | 
| bank_bounded | Run tEx for 4 but exactly 2 Bank | Integer | ```SDST``` | ```PAR``` | UNK | timeout | timeout | 2 | 
| bank_bounded | Run tEx for 4 but exactly 2 Bank | Integer | ```VDST``` | ```BOX``` | UNK | timeout | timeout | 2 | 
| bank_bounded | Run tEx for 4 but exactly 2 Bank | Integer | ```VDST``` | ```LEX``` | SAT | 1044 | 730 | 30 | 
| bank_bounded | Run tEx for 4 but exactly 2 Bank | Integer | ```VDST``` | ```PAR``` | UNK | timeout | timeout | 1 | 
| bank_bounded | Run tEx for 4 but exactly 2 Bank | Integer | ```VAVG``` | ```BOX``` | UNK | timeout | timeout | 4 | 
| bank_bounded | Run tEx for 4 but exactly 2 Bank | Integer | ```VAVG``` | ```LEX``` | SAT | 146 | 93 | 30 | 
| bank_bounded | Run tEx for 4 but exactly 2 Bank | Integer | ```SDST``` | ```PAR``` | UNK | timeout | timeout | 1 | 
| bank_bounded | Run tEx for 4 but exactly 2 Bank | Integer | ```SAVG``` | | SAT | 369 | 194 | 30 | 
| graph | Run Connected for 5 | Integer | ```NAIVE``` | | SAT | 30 | 10 | 30 | 
| graph | Run Connected for 5 | Integer | ```SUPP``` | | SAT | 35 | 20 | 30 | 
| graph | Run Connected for 5 | Integer | ```MAXSUPP``` | | SAT | 4883 | 5585 | 30 | 
| graph | Run Connected for 5 | Integer | ```NAIVE_QT``` | | UNS | 29 | NA | 1 | 
| graph | Run Connected for 5 | Integer | ```SDST``` | ```BOX``` | UNS | 40 | NA | 1 | 
| graph | Run Connected for 5 | Integer | ```SDST``` | ```LEX``` | UNS | 38 | NA | 1 | 
| graph | Run Connected for 5 | Integer | ```SDST``` | ```PAR``` | UNS | 33 | NA | 1 | 
| graph | Run Connected for 5 | Integer | ```VDST``` | ```BOX``` | UNS | 34 | NA | 1 | 
| graph | Run Connected for 5 | Integer | ```VDST``` | ```LEX``` | UNS | 34 | NA | 1 | 
| graph | Run Connected for 5 | Integer | ```VDST``` | ```PAR``` | UNS | 33 | NA | 1 | 
| graph | Run Connected for 5 | Integer | ```VAVG``` | ```BOX``` | UNS | 36 | NA | 1 | 
| graph | Run Connected for 5 | Integer | ```VAVG``` | ```LEX``` | UNS | 40 | NA | 1 | 
| graph | Run Connected for 5 | Integer | ```SDST``` | ```PAR``` | UNS | 37 | NA | 1 | 
| graph | Run Connected for 5 | Integer | ```SAVG``` | | UNS | 39 | NA | 1 | 
| graph | Run Count for 5 | Integer | ```NAIVE``` | | SAT | 27 | 12 | 30 | 
| graph | Run Count for 5 | Integer | ```SUPP``` | | SAT | 29 | 14 | 30 | 
| graph | Run Count for 5 | Integer | ```MAXSUPP``` | | SAT | 3304 | 4275 | 30 | 
| graph | Run Count for 5 | Integer | ```NAIVE_QT``` | | UNS | 23 | NA | 1 | 
| graph | Run Count for 5 | Integer | ```SDST``` | ```BOX``` | UNS | 28 | NA | 1 | 
| graph | Run Count for 5 | Integer | ```SDST``` | ```LEX``` | UNS | 25 | NA | 1 | 
| graph | Run Count for 5 | Integer | ```SDST``` | ```PAR``` | UNS | 24 | NA | 1 | 
| graph | Run Count for 5 | Integer | ```VDST``` | ```BOX``` | UNS | 31 | NA | 1 | 
| graph | Run Count for 5 | Integer | ```VDST``` | ```LEX``` | UNS | 24 | NA | 1 | 
| graph | Run Count for 5 | Integer | ```VDST``` | ```PAR``` | UNS | 23 | NA | 1 | 
| graph | Run Count for 5 | Integer | ```VAVG``` | ```BOX``` | UNS | 29 | NA | 1 | 
| graph | Run Count for 5 | Integer | ```VAVG``` | ```LEX``` | UNS | 28 | NA | 1 | 
| graph | Run Count for 5 | Integer | ```SDST``` | ```PAR``` | UNS | 32 | NA | 1 | 
| graph | Run Count for 5 | Integer | ```SAVG``` | | UNS | 35 | NA | 1 | 
| graph | Run Forest for 5 | Integer | ```NAIVE``` | | SAT | 26 | 8 | 30 | 
| graph | Run Forest for 5 | Integer | ```SUPP``` | | SAT | 30 | 11 | 30 | 
| graph | Run Forest for 5 | Integer | ```MAXSUPP``` | | SAT | 2972 | 1118 | 30 | 
| graph | Run Forest for 5 | Integer | ```NAIVE_QT``` | | UNS | 22 | NA | 1 | 
| graph | Run Forest for 5 | Integer | ```SDST``` | ```BOX``` | UNS | 29 | NA | 1 | 
| graph | Run Forest for 5 | Integer | ```SDST``` | ```LEX``` | UNS | 24 | NA | 1 | 
| graph | Run Forest for 5 | Integer | ```SDST``` | ```PAR``` | UNS | 23 | NA | 1 | 
| graph | Run Forest for 5 | Integer | ```VDST``` | ```BOX``` | UNS | 29 | NA | 1 | 
| graph | Run Forest for 5 | Integer | ```VDST``` | ```LEX``` | UNS | 26 | NA | 1 | 
| graph | Run Forest for 5 | Integer | ```VDST``` | ```PAR``` | UNS | 24 | NA | 1 | 
| graph | Run Forest for 5 | Integer | ```VAVG``` | ```BOX``` | UNS | 25 | NA | 1 | 
| graph | Run Forest for 5 | Integer | ```VAVG``` | ```LEX``` | UNS | 24 | NA | 1 | 
| graph | Run Forest for 5 | Integer | ```SDST``` | ```PAR``` | UNS | 24 | NA | 1 | 
| graph | Run Forest for 5 | Integer | ```SAVG``` | | UNS | 25 | NA | 1 | 
| heater | Run highTemperature | Fuzzy | ```NAIVE``` | | SAT | 17 | 7 | 30 | 
| heater | Run highTemperature | Fuzzy | ```SUPP``` | | UNS | 18 | 13 | 15 | 
| heater | Run highTemperature | Fuzzy | ```MAXSUPP``` | | UNS | 47 | 6 | 15 | 
| heater | Run highTemperature | Fuzzy | ```NAIVE_QT``` | | SAT | 16 | 5 | 30 | 
| heater | Run highTemperature | Fuzzy | ```SDST``` | ```BOX``` | SAT | 1458 | 3982 | 30 | 
| heater | Run highTemperature | Fuzzy | ```SDST``` | ```LEX``` | SAT | 206 | 158 | 30 | 
| heater | Run highTemperature | Fuzzy | ```SDST``` | ```PAR``` | SAT | 54 | 19 | 30 | 
| heater | Run highTemperature | Fuzzy | ```VDST``` | ```BOX``` | SAT | 501 | 523 | 30 | 
| heater | Run highTemperature | Fuzzy | ```VDST``` | ```LEX``` | SAT | 250 | 188 | 30 | 
| heater | Run highTemperature | Fuzzy | ```VDST``` | ```PAR``` | UNK | timeout | timeout | 1 | 
| heater | Run highTemperature | Fuzzy | ```VAVG``` | ```BOX``` | SAT | 33 | 7 | 30 | 
| heater | Run highTemperature | Fuzzy | ```VAVG``` | ```LEX``` | SAT | 34 | 8 | 30 | 
| heater | Run highTemperature | Fuzzy | ```SDST``` | ```PAR``` | UNK | timeout | timeout | 1 | 
| heater | Run highTemperature | Fuzzy | ```SAVG``` | | SAT | 28 | 7 | 30 | 
| heater | Run lowHumidityExtends | Fuzzy | ```NAIVE``` | | SAT | 16 | 7 | 30 | 
| heater | Run lowHumidityExtends | Fuzzy | ```SUPP``` | | SAT | 16 | 8 | 30 | 
| heater | Run lowHumidityExtends | Fuzzy | ```MAXSUPP``` | | SAT | 39 | 6 | 30 | 
| heater | Run lowHumidityExtends | Fuzzy | ```NAIVE_QT``` | | UNS | 20 | NA | 1 | 
| heater | Run lowHumidityExtends | Fuzzy | ```SDST``` | ```BOX``` | UNS | 28 | NA | 1 | 
| heater | Run lowHumidityExtends | Fuzzy | ```SDST``` | ```LEX``` | UNS | 27 | NA | 1 | 
| heater | Run lowHumidityExtends | Fuzzy | ```SDST``` | ```PAR``` | UNS | 20 | NA | 1 | 
| heater | Run lowHumidityExtends | Fuzzy | ```VDST``` | ```BOX``` | UNS | 22 | NA | 1 | 
| heater | Run lowHumidityExtends | Fuzzy | ```VDST``` | ```LEX``` | UNS | 29 | NA | 1 | 
| heater | Run lowHumidityExtends | Fuzzy | ```VDST``` | ```PAR``` | UNS | 20 | NA | 1 | 
| heater | Run lowHumidityExtends | Fuzzy | ```VAVG``` | ```BOX``` | UNS | 22 | NA | 1 | 
| heater | Run lowHumidityExtends | Fuzzy | ```VAVG``` | ```LEX``` | UNS | 22 | NA | 1 | 
| heater | Run lowHumidityExtends | Fuzzy | ```SDST``` | ```PAR``` | UNS | 25 | NA | 1 | 
| heater | Run lowHumidityExtends | Fuzzy | ```SAVG``` | | UNS | 26 | NA | 1 | 
| intui | Run same_diagnosis for 2 Patient | Fuzzy | ```NAIVE``` | | SAT | 87 | 178 | 30 | 
| intui | Run same_diagnosis for 2 Patient | Fuzzy | ```SUPP``` | | SAT | 143 | 251 | 30 | 
| intui | Run same_diagnosis for 2 Patient | Fuzzy | ```MAXSUPP``` | | SAT | 1257 | 342 | 30 | 
| intui | Run same_diagnosis for 2 Patient | Fuzzy | ```NAIVE_QT``` | | SAT | 75 | 147 | 30 | 
| intui | Run same_diagnosis for 2 Patient | Fuzzy | ```SDST``` | ```BOX``` | UNK | timeout | timeout | 4 | 
| intui | Run same_diagnosis for 2 Patient | Fuzzy | ```SDST``` | ```LEX``` | UNK | timeout | timeout | 7 | 
| intui | Run same_diagnosis for 2 Patient | Fuzzy | ```SDST``` | ```PAR``` | UNK | timeout | timeout | 2 | 
| intui | Run same_diagnosis for 2 Patient | Fuzzy | ```VDST``` | ```BOX``` | UNK | timeout | timeout | 6 | 
| intui | Run same_diagnosis for 2 Patient | Fuzzy | ```VDST``` | ```LEX``` | SAT | 16213 | 10097 | 30 | 
| intui | Run same_diagnosis for 2 Patient | Fuzzy | ```VDST``` | ```PAR``` | UNK | timeout | timeout | 1 | 
| intui | Run same_diagnosis for 2 Patient | Fuzzy | ```VAVG``` | ```BOX``` | SAT | 8979 | 4974 | 30 | 
| intui | Run same_diagnosis for 2 Patient | Fuzzy | ```VAVG``` | ```LEX``` | SAT | 1786 | 491 | 30 | 
| intui | Run same_diagnosis for 2 Patient | Fuzzy | ```SDST``` | ```PAR``` | UNK | timeout | timeout | 1 | 
| intui | Run same_diagnosis for 2 Patient | Fuzzy | ```SAVG``` | | SAT | 7841 | 2604 | 30 | 
| intui | Run two_diagnosis for 1 Patient | Fuzzy | ```NAIVE``` | | SAT | 32 | 33 | 30 | 
| intui | Run two_diagnosis for 1 Patient | Fuzzy | ```SUPP``` | | SAT | 45 | 51 | 30 | 
| intui | Run two_diagnosis for 1 Patient | Fuzzy | ```MAXSUPP``` | | SAT | 223 | 94 | 30 | 
| intui | Run two_diagnosis for 1 Patient | Fuzzy | ```NAIVE_QT``` | | SAT | 24 | 14 | 30 | 
| intui | Run two_diagnosis for 1 Patient | Fuzzy | ```SDST``` | ```BOX``` | UNK | timeout | timeout | 20 | 
| intui | Run two_diagnosis for 1 Patient | Fuzzy | ```SDST``` | ```LEX``` | SAT | 3985 | 2737 | 30 | 
| intui | Run two_diagnosis for 1 Patient | Fuzzy | ```SDST``` | ```PAR``` | UNK | timeout | timeout | 2 | 
| intui | Run two_diagnosis for 1 Patient | Fuzzy | ```VDST``` | ```BOX``` | UNK | timeout | timeout | 26 | 
| intui | Run two_diagnosis for 1 Patient | Fuzzy | ```VDST``` | ```LEX``` | SAT | 1606 | 1087 | 30 | 
| intui | Run two_diagnosis for 1 Patient | Fuzzy | ```VDST``` | ```PAR``` | UNK | timeout | timeout | 1 | 
| intui | Run two_diagnosis for 1 Patient | Fuzzy | ```VAVG``` | ```BOX``` | SAT | 708 | 309 | 30 | 
| intui | Run two_diagnosis for 1 Patient | Fuzzy | ```VAVG``` | ```LEX``` | SAT | 168 | 35 | 30 | 
| intui | Run two_diagnosis for 1 Patient | Fuzzy | ```SDST``` | ```PAR``` | UNK | timeout | timeout | 1 | 
| intui | Run two_diagnosis for 1 Patient | Fuzzy | ```SAVG``` | | SAT | 178 | 50 | 30 | 
| network | Run threeNodes for 4 but exactly 3 Node | Integer | ```NAIVE``` | | SAT | 5 | 2 | 30 | 
| network | Run threeNodes for 4 but exactly 3 Node | Integer | ```SUPP``` | | SAT | 6 | 2 | 30 | 
| network | Run threeNodes for 4 but exactly 3 Node | Integer | ```MAXSUPP``` | | SAT | 12 | 3 | 30 | 
| network | Run threeNodes for 4 but exactly 3 Node | Integer | ```NAIVE_QT``` | | SAT | 4 | 1 | 30 | 
| network | Run threeNodes for 4 but exactly 3 Node | Integer | ```SDST``` | ```BOX``` | INF | 114 | 102 | 30 | 
| network | Run threeNodes for 4 but exactly 3 Node | Integer | ```SDST``` | ```LEX``` | INF | 26 | 11 | 30 | 
| network | Run threeNodes for 4 but exactly 3 Node | Integer | ```SDST``` | ```PAR``` | UNK | timeout | timeout | 2 | 
| network | Run threeNodes for 4 but exactly 3 Node | Integer | ```VDST``` | ```BOX``` | UNK | timeout | timeout | 27 | 
| network | Run threeNodes for 4 but exactly 3 Node | Integer | ```VDST``` | ```LEX``` | INF | 40 | 15 | 30 | 
| network | Run threeNodes for 4 but exactly 3 Node | Integer | ```VDST``` | ```PAR``` | UNK | timeout | timeout | 1 | 
| network | Run threeNodes for 4 but exactly 3 Node | Integer | ```VAVG``` | ```BOX``` | INF | 33 | 7 | 30 | 
| network | Run threeNodes for 4 but exactly 3 Node | Integer | ```VAVG``` | ```LEX``` | INF | 14 | 3 | 30 | 
| network | Run threeNodes for 4 but exactly 3 Node | Integer | ```SDST``` | ```PAR``` | UNK | timeout | timeout | 1 | 
| network | Run threeNodes for 4 but exactly 3 Node | Integer | ```SAVG``` | | INF | 10 | 2 | 30 | 
| network_bounded | Run threeNodes for 4 but exactly 3 Node | Integer | ```NAIVE``` | | SAT | 6 | 1 | 30 | 
| network_bounded | Run threeNodes for 4 but exactly 3 Node | Integer | ```SUPP``` | | SAT | 6 | 2 | 30 | 
| network_bounded | Run threeNodes for 4 but exactly 3 Node | Integer | ```MAXSUPP``` | | SAT | 13 | 3 | 30 | 
| network_bounded | Run threeNodes for 4 but exactly 3 Node | Integer | ```NAIVE_QT``` | | SAT | 5 | 1 | 30 | 
| network_bounded | Run threeNodes for 4 but exactly 3 Node | Integer | ```SDST``` | ```BOX``` | SAT | 5751 | 3528 | 30 | 
| network_bounded | Run threeNodes for 4 but exactly 3 Node | Integer | ```SDST``` | ```LEX``` | UNK | timeout | timeout | 30 | 
| network_bounded | Run threeNodes for 4 but exactly 3 Node | Integer | ```SDST``` | ```PAR``` | UNK | timeout | timeout | 2 | 
| network_bounded | Run threeNodes for 4 but exactly 3 Node | Integer | ```VDST``` | ```BOX``` | UNK | timeout | timeout | 14 | 
| network_bounded | Run threeNodes for 4 but exactly 3 Node | Integer | ```VDST``` | ```LEX``` | SAT | 756 | 591 | 30 | 
| network_bounded | Run threeNodes for 4 but exactly 3 Node | Integer | ```VDST``` | ```PAR``` | UNK | timeout | timeout | 1 | 
| network_bounded | Run threeNodes for 4 but exactly 3 Node | Integer | ```VAVG``` | ```BOX``` | SAT | 179 | 47 | 30 | 
| network_bounded | Run threeNodes for 4 but exactly 3 Node | Integer | ```VAVG``` | ```LEX``` | SAT | 35 | 6 | 30 | 
| network_bounded | Run threeNodes for 4 but exactly 3 Node | Integer | ```SDST``` | ```PAR``` | UNK | timeout | timeout | 1 | 
| network_bounded | Run threeNodes for 4 but exactly 3 Node | Integer | ```SAVG``` | | SAT | 365 | 128 | 30 | 
| network_litre | Run threeNodes for 4 but exactly 3 Node | Integer | ```NAIVE``` | | SAT | 8 | 3 | 30 | 
| network_litre | Run threeNodes for 4 but exactly 3 Node | Integer | ```SUPP``` | | SAT | 10 | 4 | 30 | 
| network_litre | Run threeNodes for 4 but exactly 3 Node | Integer | ```MAXSUPP``` | | SAT | 17 | 3 | 30 | 
| network_litre | Run threeNodes for 4 but exactly 3 Node | Integer | ```NAIVE_QT``` | | SAT | 8 | 2 | 30 | 
| network_litre | Run threeNodes for 4 but exactly 3 Node | Integer | ```SDST``` | ```BOX``` | UNK | timeout | timeout | 26 | 
| network_litre | Run threeNodes for 4 but exactly 3 Node | Integer | ```SDST``` | ```LEX``` | INF | 135 | 139 | 30 | 
| network_litre | Run threeNodes for 4 but exactly 3 Node | Integer | ```SDST``` | ```PAR``` | UNK | timeout | timeout | 2 | 
| network_litre | Run threeNodes for 4 but exactly 3 Node | Integer | ```VDST``` | ```BOX``` | UNK | timeout | timeout | 1 | 
| network_litre | Run threeNodes for 4 but exactly 3 Node | Integer | ```VDST``` | ```LEX``` | INF | 47 | 19 | 30 | 
| network_litre | Run threeNodes for 4 but exactly 3 Node | Integer | ```VDST``` | ```PAR``` | UNK | timeout | timeout | 1 | 
| network_litre | Run threeNodes for 4 but exactly 3 Node | Integer | ```VAVG``` | ```BOX``` | UNK | timeout | timeout | 2 | 
| network_litre | Run threeNodes for 4 but exactly 3 Node | Integer | ```VAVG``` | ```LEX``` | INF | 19 | 4 | 30 | 
| network_litre | Run threeNodes for 4 but exactly 3 Node | Integer | ```SDST``` | ```PAR``` | UNK | timeout | timeout | 1 | 
| network_litre | Run threeNodes for 4 but exactly 3 Node | Integer | ```SAVG``` | | INF | 21 | 6 | 30 | 
| network_litre_bounded | Run threeNodes for 4 but exactly 3 Node | Integer | ```NAIVE``` | | SAT | 8 | 3 | 30 | 
| network_litre_bounded | Run threeNodes for 4 but exactly 3 Node | Integer | ```SUPP``` | | SAT | 10 | 3 | 30 | 
| network_litre_bounded | Run threeNodes for 4 but exactly 3 Node | Integer | ```MAXSUPP``` | | SAT | 18 | 4 | 30 | 
| network_litre_bounded | Run threeNodes for 4 but exactly 3 Node | Integer | ```NAIVE_QT``` | | SAT | 8 | 3 | 30 | 
| network_litre_bounded | Run threeNodes for 4 but exactly 3 Node | Integer | ```SDST``` | ```BOX``` | UNK | timeout | timeout | 27 | 
| network_litre_bounded | Run threeNodes for 4 but exactly 3 Node | Integer | ```SDST``` | ```LEX``` | SAT | 3222 | 2516 | 30 | 
| network_litre_bounded | Run threeNodes for 4 but exactly 3 Node | Integer | ```SDST``` | ```PAR``` | UNK | timeout | timeout | 2 | 
| network_litre_bounded | Run threeNodes for 4 but exactly 3 Node | Integer | ```VDST``` | ```BOX``` | UNK | timeout | timeout | 3 | 
| network_litre_bounded | Run threeNodes for 4 but exactly 3 Node | Integer | ```VDST``` | ```LEX``` | SAT | 939 | 720 | 30 | 
| network_litre_bounded | Run threeNodes for 4 but exactly 3 Node | Integer | ```VDST``` | ```PAR``` | UNK | timeout | timeout | 1 | 
| network_litre_bounded | Run threeNodes for 4 but exactly 3 Node | Integer | ```VAVG``` | ```BOX``` | UNK | timeout | timeout | 4 | 
| network_litre_bounded | Run threeNodes for 4 but exactly 3 Node | Integer | ```VAVG``` | ```LEX``` | SAT | 127 | 78 | 30 | 
| network_litre_bounded | Run threeNodes for 4 but exactly 3 Node | Integer | ```SDST``` | ```PAR``` | UNK | timeout | timeout | 1 | 
| network_litre_bounded | Run threeNodes for 4 but exactly 3 Node | Integer | ```SAVG``` | | SAT | 783 | 301 | 30 | 
| portrait | Run threeToTwo for exactly 6 Portrait | Fuzzy | ```NAIVE``` | | SAT | 184 | 55 | 30 | 
| portrait | Run threeToTwo for exactly 6 Portrait | Fuzzy | ```SUPP``` | | UNS | 199 | 100 | 9 | 
| portrait | Run threeToTwo for exactly 6 Portrait | Fuzzy | ```MAXSUPP``` | | UNS | 387 | 106 | 9 | 
| portrait | Run threeToTwo for exactly 6 Portrait | Fuzzy | ```NAIVE_QT``` | | SAT | 168 | 59 | 30 | 
| portrait | Run threeToTwo for exactly 6 Portrait | Fuzzy | ```SDST``` | ```BOX``` | UNK | timeout | timeout | 22 | 
| portrait | Run threeToTwo for exactly 6 Portrait | Fuzzy | ```SDST``` | ```LEX``` | SAT | 4173 | 2966 | 30 | 
| portrait | Run threeToTwo for exactly 6 Portrait | Fuzzy | ```SDST``` | ```PAR``` | UNK | timeout | timeout | 2 | 
| portrait | Run threeToTwo for exactly 6 Portrait | Fuzzy | ```VDST``` | ```BOX``` | UNK | timeout | timeout | 5 | 
| portrait | Run threeToTwo for exactly 6 Portrait | Fuzzy | ```VDST``` | ```LEX``` | SAT | 8761 | 8059 | 30 | 
| portrait | Run threeToTwo for exactly 6 Portrait | Fuzzy | ```VDST``` | ```PAR``` | UNK | timeout | timeout | 1 | 
| portrait | Run threeToTwo for exactly 6 Portrait | Fuzzy | ```VAVG``` | ```BOX``` | SAT | 681 | 153 | 30 | 
| portrait | Run threeToTwo for exactly 6 Portrait | Fuzzy | ```VAVG``` | ```LEX``` | SAT | 370 | 42 | 30 | 
| portrait | Run threeToTwo for exactly 6 Portrait | Fuzzy | ```SDST``` | ```PAR``` | UNK | timeout | timeout | 1 | 
| portrait | Run threeToTwo for exactly 6 Portrait | Fuzzy | ```SAVG``` | | SAT | 359 | 37 | 30 | 
| sanchez | Run same_diagnosis for 2 Patient | Fuzzy | ```NAIVE``` | | SAT | 56 | 96 | 30 | 
| sanchez | Run same_diagnosis for 2 Patient | Fuzzy | ```SUPP``` | | SAT | 103 | 140 | 30 | 
| sanchez | Run same_diagnosis for 2 Patient | Fuzzy | ```MAXSUPP``` | | SAT | 312 | 77 | 30 | 
| sanchez | Run same_diagnosis for 2 Patient | Fuzzy | ```NAIVE_QT``` | | SAT | 46 | 31 | 30 | 
| sanchez | Run same_diagnosis for 2 Patient | Fuzzy | ```SDST``` | ```BOX``` | SAT | 4259 | 4204 | 30 | 
| sanchez | Run same_diagnosis for 2 Patient | Fuzzy | ```SDST``` | ```LEX``` | SAT | 2512 | 1787 | 30 | 
| sanchez | Run same_diagnosis for 2 Patient | Fuzzy | ```SDST``` | ```PAR``` | UNK | timeout | timeout | 2 | 
| sanchez | Run same_diagnosis for 2 Patient | Fuzzy | ```VDST``` | ```BOX``` | SAT | 15602 | 16437 | 30 | 
| sanchez | Run same_diagnosis for 2 Patient | Fuzzy | ```VDST``` | ```LEX``` | SAT | 1310 | 844 | 30 | 
| sanchez | Run same_diagnosis for 2 Patient | Fuzzy | ```VDST``` | ```PAR``` | UNK | timeout | timeout | 1 | 
| sanchez | Run same_diagnosis for 2 Patient | Fuzzy | ```VAVG``` | ```BOX``` | SAT | 204 | 56 | 30 | 
| sanchez | Run same_diagnosis for 2 Patient | Fuzzy | ```VAVG``` | ```LEX``` | SAT | 116 | 20 | 30 | 
| sanchez | Run same_diagnosis for 2 Patient | Fuzzy | ```SDST``` | ```PAR``` | UNK | timeout | timeout | 1 | 
| sanchez | Run same_diagnosis for 2 Patient | Fuzzy | ```SAVG``` | | SAT | 129 | 34 | 30 | 
| sanchez | Run two_diagnosis for 1 Patient | Fuzzy | ```NAIVE``` | | SAT | 17 | 13 | 30 | 
| sanchez | Run two_diagnosis for 1 Patient | Fuzzy | ```SUPP``` | | UNS | 17 | 10 | 29 | 
| sanchez | Run two_diagnosis for 1 Patient | Fuzzy | ```MAXSUPP``` | | UNS | 41 | 7 | 29 | 
| sanchez | Run two_diagnosis for 1 Patient | Fuzzy | ```NAIVE_QT``` | | SAT | 17 | 7 | 30 | 
| sanchez | Run two_diagnosis for 1 Patient | Fuzzy | ```SDST``` | ```BOX``` | SAT | 1617 | 1897 | 30 | 
| sanchez | Run two_diagnosis for 1 Patient | Fuzzy | ```SDST``` | ```LEX``` | SAT | 328 | 257 | 30 | 
| sanchez | Run two_diagnosis for 1 Patient | Fuzzy | ```SDST``` | ```PAR``` | UNK | timeout | timeout | 2 | 
| sanchez | Run two_diagnosis for 1 Patient | Fuzzy | ```VDST``` | ```BOX``` | SAT | 1429 | 1916 | 30 | 
| sanchez | Run two_diagnosis for 1 Patient | Fuzzy | ```VDST``` | ```LEX``` | SAT | 468 | 406 | 30 | 
| sanchez | Run two_diagnosis for 1 Patient | Fuzzy | ```VDST``` | ```PAR``` | UNK | timeout | timeout | 1 | 
| sanchez | Run two_diagnosis for 1 Patient | Fuzzy | ```VAVG``` | ```BOX``` | SAT | 48 | 18 | 30 | 
| sanchez | Run two_diagnosis for 1 Patient | Fuzzy | ```VAVG``` | ```LEX``` | SAT | 39 | 13 | 30 | 
| sanchez | Run two_diagnosis for 1 Patient | Fuzzy | ```SDST``` | ```PAR``` | UNK | timeout | timeout | 1 | 
| sanchez | Run two_diagnosis for 1 Patient | Fuzzy | ```SAVG``` | | SAT | 36 | 9 | 30 | 
| supermarket | Check hasMilk for 3 but 2 Bag | Integer | ```NAIVE``` | | SAT | 5 | 3 | 30 | 
| supermarket | Check hasMilk for 3 but 2 Bag | Integer | ```SUPP``` | | UNS | 7 | 5 | 8 | 
| supermarket | Check hasMilk for 3 but 2 Bag | Integer | ```MAXSUPP``` | | UNS | 26 | 9 | 8 | 
| supermarket | Check hasMilk for 3 but 2 Bag | Integer | ```NAIVE_QT``` | | UNS | 3 | 2 | 9 | 
| supermarket | Check hasMilk for 3 but 2 Bag | Integer | ```SDST``` | ```BOX``` | UNS | 21 | 8 | 9 | 
| supermarket | Check hasMilk for 3 but 2 Bag | Integer | ```SDST``` | ```LEX``` | UNS | 26 | 12 | 9 | 
| supermarket | Check hasMilk for 3 but 2 Bag | Integer | ```SDST``` | ```PAR``` | UNS | 15 | 3 | 9 | 
| supermarket | Check hasMilk for 3 but 2 Bag | Integer | ```VDST``` | ```BOX``` | UNS | 42 | 17 | 9 | 
| supermarket | Check hasMilk for 3 but 2 Bag | Integer | ```VDST``` | ```LEX``` | UNS | 40 | 21 | 9 | 
| supermarket | Check hasMilk for 3 but 2 Bag | Integer | ```VDST``` | ```PAR``` | UNS | 15 | 3 | 9 | 
| supermarket | Check hasMilk for 3 but 2 Bag | Integer | ```VAVG``` | ```BOX``` | UNS | 14 | 6 | 10 | 
| supermarket | Check hasMilk for 3 but 2 Bag | Integer | ```VAVG``` | ```LEX``` | UNS | 14 | 3 | 10 | 
| supermarket | Check hasMilk for 3 but 2 Bag | Integer | ```SDST``` | ```PAR``` | UNS | 12 | 4 | 10 | 
| supermarket | Check hasMilk for 3 but 2 Bag | Integer | ```SAVG``` | | UNS | 12 | 2 | 10 | 
| supermarket | Run bags for 3 | Integer | ```NAIVE``` | | SAT | 5 | 2 | 30 | 
| supermarket | Run bags for 3 | Integer | ```SUPP``` | | SAT | 7 | 2 | 30 | 
| supermarket | Run bags for 3 | Integer | ```MAXSUPP``` | | SAT | 16 | 4 | 30 | 
| supermarket | Run bags for 3 | Integer | ```NAIVE_QT``` | | SAT | 5 | 1 | 30 | 
| supermarket | Run bags for 3 | Integer | ```SDST``` | ```BOX``` | SAT | 762 | 646 | 30 | 
| supermarket | Run bags for 3 | Integer | ```SDST``` | ```LEX``` | SAT | 167 | 126 | 30 | 
| supermarket | Run bags for 3 | Integer | ```SDST``` | ```PAR``` | SAT | 32 | 14 | 30 | 
| supermarket | Run bags for 3 | Integer | ```VDST``` | ```BOX``` | SAT | 3818 | 3985 | 30 | 
| supermarket | Run bags for 3 | Integer | ```VDST``` | ```LEX``` | SAT | 250 | 171 | 30 | 
| supermarket | Run bags for 3 | Integer | ```VDST``` | ```PAR``` | SAT | 31 | 13 | 30 | 
| supermarket | Run bags for 3 | Integer | ```VAVG``` | ```BOX``` | SAT | 29 | 7 | 30 | 
| supermarket | Run bags for 3 | Integer | ```VAVG``` | ```LEX``` | SAT | 19 | 4 | 30 | 
| supermarket | Run bags for 3 | Integer | ```SDST``` | ```PAR``` | SAT | 10 | 2 | 30 | 
| supermarket | Run bags for 3 | Integer | ```SAVG``` | | SAT | 15 | 3 | 30 | 
| tip | Check wasItGoodService for 2 but exactly 3 Rule | Fuzzy | ```NAIVE``` | | SAT | 218 | 164 | 30 | 
| tip | Check wasItGoodService for 2 but exactly 3 Rule | Fuzzy | ```SUPP``` | | UNK | timeout | timeout | 23 | 
| tip | Check wasItGoodService for 2 but exactly 3 Rule | Fuzzy | ```MAXSUPP``` | | UNK | timeout | timeout | 1 | 
| tip | Check wasItGoodService for 2 but exactly 3 Rule | Fuzzy | ```NAIVE_QT``` | | SAT | 65 | 27 | 30 | 
| tip | Check wasItGoodService for 2 but exactly 3 Rule | Fuzzy | ```SDST``` | ```BOX``` | UNK | timeout | timeout | 2 | 
| tip | Check wasItGoodService for 2 but exactly 3 Rule | Fuzzy | ```SDST``` | ```LEX``` | UNK | timeout | timeout | 6 | 
| tip | Check wasItGoodService for 2 but exactly 3 Rule | Fuzzy | ```SDST``` | ```PAR``` | UNK | timeout | timeout | 2 | 
| tip | Check wasItGoodService for 2 but exactly 3 Rule | Fuzzy | ```VDST``` | ```BOX``` | UNK | timeout | timeout | 1 | 
| tip | Check wasItGoodService for 2 but exactly 3 Rule | Fuzzy | ```VDST``` | ```LEX``` | UNK | timeout | timeout | 1 | 
| tip | Check wasItGoodService for 2 but exactly 3 Rule | Fuzzy | ```VDST``` | ```PAR``` | UNK | timeout | timeout | 1 | 
| tip | Check wasItGoodService for 2 but exactly 3 Rule | Fuzzy | ```VAVG``` | ```BOX``` | UNK | timeout | timeout | 2 | 
| tip | Check wasItGoodService for 2 but exactly 3 Rule | Fuzzy | ```VAVG``` | ```LEX``` | UNK | timeout | timeout | 2 | 
| tip | Check wasItGoodService for 2 but exactly 3 Rule | Fuzzy | ```SDST``` | ```PAR``` | UNK | timeout | timeout | 1 | 
| tip | Check wasItGoodService for 2 but exactly 3 Rule | Fuzzy | ```SAVG``` | | UNK | timeout | timeout | 8 | 
| tip | Run findGenerousTip for 1 but exactly 3 Rule | Fuzzy | ```NAIVE``` | | UNK | timeout | timeout | 18 | 
| tip | Run findGenerousTip for 1 but exactly 3 Rule | Fuzzy | ```SUPP``` | | UNK | timeout | timeout | 2 | 
| tip | Run findGenerousTip for 1 but exactly 3 Rule | Fuzzy | ```MAXSUPP``` | | UNK | timeout | timeout | 1 | 
| tip | Run findGenerousTip for 1 but exactly 3 Rule | Fuzzy | ```NAIVE_QT``` | | SAT | 66 | 27 | 30 | 
| tip | Run findGenerousTip for 1 but exactly 3 Rule | Fuzzy | ```SDST``` | ```BOX``` | UNK | timeout | timeout | 1 | 
| tip | Run findGenerousTip for 1 but exactly 3 Rule | Fuzzy | ```SDST``` | ```LEX``` | UNK | timeout | timeout | 1 | 
| tip | Run findGenerousTip for 1 but exactly 3 Rule | Fuzzy | ```SDST``` | ```PAR``` | UNK | timeout | timeout | 1 | 
| tip | Run findGenerousTip for 1 but exactly 3 Rule | Fuzzy | ```VDST``` | ```BOX``` | UNK | timeout | timeout | 1 | 
| tip | Run findGenerousTip for 1 but exactly 3 Rule | Fuzzy | ```VDST``` | ```LEX``` | UNK | timeout | timeout | 1 | 
| tip | Run findGenerousTip for 1 but exactly 3 Rule | Fuzzy | ```VDST``` | ```PAR``` | UNK | timeout | timeout | 1 | 
| tip | Run findGenerousTip for 1 but exactly 3 Rule | Fuzzy | ```VAVG``` | ```BOX``` | UNK | timeout | timeout | 3 | 
| tip | Run findGenerousTip for 1 but exactly 3 Rule | Fuzzy | ```VAVG``` | ```LEX``` | UNK | timeout | timeout | 3 | 
| tip | Run findGenerousTip for 1 but exactly 3 Rule | Fuzzy | ```SDST``` | ```PAR``` | UNK | timeout | timeout | 1 | 
| tip | Run findGenerousTip for 1 but exactly 3 Rule | Fuzzy | ```SAVG``` | | UNK | timeout | timeout | 1 | 

# Solution variety

Even though only the *pairwise distance* metric was considered for the aggregated evaluation, the following tables present other metrics also measured for these examples:
* **Pairwise Distance** ($\mu_D$ and $\sigma_D$) evaluates the average distance between every pair of solutions
* **Perimeter** corresponds to the perimeter of the shape obtained by first sorting the instances
* **K-means Clusters** considers the centroid distance ($\mu_C$ and $\sigma_C$) of the **K** clusters where the solutions are distributed, with a silhouette score of $s_C$, for each example, command and operation considered.

## First 10 iterations

| Example | Command | Operation | Priority | $\mu_D$ | $\sigma_D$ | Perimeter | K | $s_C$ | $\mu_C$ | $\sigma_C$ |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 2d_int | XY | ```NAIVE``` | | 0.18 | 0.39 | 1.0 | NA | NA | NA | NA | 
| 2d_int | XY | ```SUPP``` | | 1.14 | 0.21 | 3.0 | 2 | 0.17 | 1.0 | NA | 
| 2d_int | XY | ```MAXSUPP``` | | 1.14 | 0.21 | 3.0 | 2 | 0.17 | 1.0 | NA | 
| 2d_int_inf | XY | ```NAIVE``` | | 0.18 | 0.39 | 1.0 | NA | NA | NA | NA | 
| 2d_int_inf | XY | ```SUPP``` | | 1.14 | 0.21 | 3.0 | 2 | 0.17 | 1.0 | NA | 
| 2d_int_inf | XY | ```MAXSUPP``` | | 1.14 | 0.21 | 3.0 | 2 | 0.17 | 1.0 | NA | 
| supermarket | bags | ```NAIVE``` | | 0.52 | 0.78 | 2.73 | 2 | 0.81 | 1.95 | NA | 
| supermarket | bags | ```SUPP``` | | 1.69 | 0.46 | 11.88 | 2 | 0.17 | 1.23 | NA | 
| supermarket | bags | ```MAXSUPP``` | | 2.52 | 0.79 | 15.9 | 2 | 0.44 | 2.73 | NA | 
| supermarket | hasMilk | ```NAIVE``` | | 0.94 | 0.49 | 4.0 | 4 | 0.73 | 1.19 | 0.21 | 
| supermarket | hasMilk | ```SUPP``` | | 1.36 | 0.31 | 7.41 | 2 | 0.17 | 1.09 | NA | 
| supermarket | hasMilk | ```MAXSUPP``` | | 1.36 | 0.31 | 7.0 | 2 | 0.17 | 1.06 | NA | 
| graph | Connected | ```NAIVE``` | | 2.48 | 1.83 | 15.41 | 2 | 0.67 | 6.14 | NA | 
| graph | Connected | ```SUPP``` | | 3.67 | 1.85 | 20.62 | 3 | 0.57 | 5.52 | 0.96 | 
| graph | Connected | ```MAXSUPP``` | | 5.88 | 1.59 | 39.72 | 2 | 0.39 | 5.92 | NA | 
| graph | Count | ```NAIVE``` | | 3.62 | 1.39 | 20.02 | 4 | 0.56 | 4.3 | 0.7 | 
| graph | Count | ```SUPP``` | | 4.23 | 1.56 | 26.87 | 4 | 0.45 | 5.31 | 0.7 | 
| graph | Count | ```MAXSUPP``` | | 5.72 | 1.3 | 39.87 | 2 | 0.33 | 5.31 | NA | 
| graph | Forest | ```NAIVE``` | | 1.92 | 0.59 | 12.48 | 3 | 0.24 | 2.25 | 0.68 | 
| graph | Forest | ```SUPP``` | | 2.02 | 0.57 | 12.8 | 2 | 0.34 | 1.96 | NA | 
| graph | Forest | ```MAXSUPP``` | | 4.48 | 1.0 | 33.98 | 2 | 0.31 | 4.04 | NA | 
| bank | tEx | ```NAIVE``` | | 1.08 | 1.15 | 6.16 | 2 | 0.74 | 3.17 | NA | 
| bank | tEx | ```SUPP``` | | 1.79 | 0.75 | 12.24 | 2 | 0.48 | 3.01 | NA | 
| bank | tEx | ```MAXSUPP``` | | 3.45 | 0.81 | 23.95 | 2 | 0.28 | 3.02 | NA | 
| bank_bounded | tEx | ```NAIVE``` | | 0.7 | 1.51 | 3.87 | NA | NA | NA | NA | 
| bank_bounded | tEx | ```SUPP``` | | 1.93 | 0.9 | 12.73 | 2 | 0.53 | 3.52 | NA | 
| bank_bounded | tEx | ```MAXSUPP``` | | 3.31 | 1.06 | 18.94 | 2 | 0.45 | 3.57 | NA | 
| network | threeNodes | ```NAIVE``` | | 0.57 | 0.88 | 3.24 | 2 | 0.83 | 2.24 | NA | 
| network | threeNodes | ```SUPP``` | | 1.77 | 0.56 | 12.66 | 2 | 0.34 | 2.32 | NA | 
| network | threeNodes | ```MAXSUPP``` | | 2.34 | 0.93 | 13.56 | 2 | 0.57 | 2.91 | NA | 
| network_bounded | threeNodes | ```NAIVE``` | | 1.01 | 0.86 | 3.0 | 2 | 0.81 | 2.03 | NA | 
| network_bounded | threeNodes | ```SUPP``` | | 1.6 | 0.44 | 11.56 | 2 | 0.32 | 1.72 | NA | 
| network_bounded | threeNodes | ```MAXSUPP``` | | 2.37 | 0.84 | 13.39 | 2 | 0.49 | 2.72 | NA | 
| network_litre | threeNodes | ```NAIVE``` | | 0.31 | 0.67 | 1.73 | NA | NA | NA | NA | 
| network_litre | threeNodes | ```SUPP``` | | 1.71 | 0.48 | 11.56 | 2 | 0.37 | 1.73 | NA | 
| network_litre | threeNodes | ```MAXSUPP``` | | 2.36 | 0.91 | 13.24 | 2 | 0.55 | 2.87 | NA | 
| network_litre_bounded | threeNodes | ```NAIVE``` | | 0.41 | 0.87 | 2.24 | NA | NA | NA | NA | 
| network_litre_bounded | threeNodes | ```SUPP``` | | 1.66 | 0.44 | 11.46 | 2 | 0.28 | 1.47 | NA | 
| network_litre_bounded | threeNodes | ```MAXSUPP``` | | 2.37 | 0.88 | 14.29 | 2 | 0.52 | 2.8 | NA | 
| 2d_fuzzy | XY | ```NAIVE``` | | 0.0 | 0.0 | 0.0 | NA | NA | NA | NA | 
| 2d_fuzzy | XY | ```SUPP``` | | 1.14 | 0.24 | 2.0 | 2 | 0.1 | 1.12 | NA | 
| 2d_fuzzy | XY | ```MAXSUPP``` | | 1.14 | 0.24 | 2.0 | 2 | 0.1 | 1.12 | NA | 
| sanchez | same_diagnosis | ```NAIVE``` | | 0.41 | 0.87 | 2.24 | NA | NA | NA | NA | 
| sanchez | same_diagnosis | ```SUPP``` | | 1.94 | 0.49 | 14.28 | 4 | 0.31 | 1.99 | 0.24 | 
| sanchez | same_diagnosis | ```MAXSUPP``` | | 2.09 | 0.63 | 11.73 | 3 | 0.41 | 2.12 | 0.26 | 
| sanchez | two_diagnosis | ```NAIVE``` | | 0.31 | 0.67 | 1.73 | NA | NA | NA | NA | 
| sanchez | two_diagnosis | ```SUPP``` | | 1.45 | 0.33 | 11.41 | 2 | 0.21 | 1.17 | NA | 
| sanchez | two_diagnosis | ```MAXSUPP``` | | 1.61 | 0.38 | 10.41 | 2 | 0.25 | 1.36 | NA | 
| intui | same_diagnosis | ```NAIVE``` | | 0.41 | 0.87 | 2.24 | NA | NA | NA | NA | 
| intui | same_diagnosis | ```SUPP``` | | 1.88 | 0.54 | 13.38 | 2 | 0.35 | 2.07 | NA | 
| intui | same_diagnosis | ```MAXSUPP``` | | 2.95 | 1.28 | 14.7 | 2 | 0.6 | 3.76 | NA | 
| intui | two_diagnosis | ```NAIVE``` | | 0.18 | 0.39 | 1.0 | NA | NA | NA | NA | 
| intui | two_diagnosis | ```SUPP``` | | 1.52 | 0.4 | 11.15 | 3 | 0.2 | 1.3 | 0.16 | 
| intui | two_diagnosis | ```MAXSUPP``` | | 2.17 | 0.82 | 12.47 | 2 | 0.54 | 2.61 | NA | 
| portrait | threeToTwo | ```NAIVE``` | | 0.77 | 1.65 | 4.24 | NA | NA | NA | NA | 
| portrait | threeToTwo | ```SUPP``` | | 3.4 | 0.84 | 20.05 | 4 | 0.31 | 3.29 | 0.42 | 
| portrait | threeToTwo | ```MAXSUPP``` | | 3.4 | 0.84 | 20.05 | 4 | 0.31 | 3.29 | 0.42 | 
| heater | highTemperature | ```NAIVE``` | | 0.0 | 0.0 | 0.0 | NA | NA | NA | NA | 
| heater | highTemperature | ```SUPP``` | | 1.43 | 0.32 | 10.73 | 5 | 0.19 | 1.3 | 0.22 | 
| heater | highTemperature | ```MAXSUPP``` | | 1.63 | 0.39 | 10.0 | 2 | 0.24 | 1.39 | NA | 
| heater | lowHumidityExtends | ```NAIVE``` | | 1.42 | 0.32 | 10.41 | 3 | 0.21 | 1.19 | 0.03 | 
| heater | lowHumidityExtends | ```SUPP``` | | 1.53 | 0.35 | 11.15 | 2 | 0.25 | 1.45 | NA | 
| heater | lowHumidityExtends | ```MAXSUPP``` | | 2.77 | 0.7 | 19.56 | 2 | 0.37 | 2.73 | NA | 
| tip | findGenerousTip | ```NAIVE``` | | 0.36 | 0.78 | 2.0 | NA | NA | NA | NA | 
| tip | findGenerousTip | ```SUPP``` | | 2.0 | NA | 2.0 | NA | NA | NA | NA | 
| tip | findGenerousTip | ```MAXSUPP``` | | NA | NA | 0 | NA | NA | NA | NA | 
| tip | wasItGoodService | ```NAIVE``` | | 0.55 | 1.17 | 3.0 | NA | NA | NA | NA | 
| tip | wasItGoodService | ```SUPP``` | | 2.73 | 1.08 | 17.31 | 2 | 0.5 | 3.7 | NA | 
| tip | wasItGoodService | ```MAXSUPP``` | | NA | NA | 0 | NA | NA | NA | NA | 
| 2d_int | XY | ```NAIVE_QT``` | | 155702.89 | 333331.33 | 856353.86 | 2 | 0.91 | 856347.73 | NA | 
| 2d_int | XY | ```SDST``` | ```BOX``` | 412795.21 | 883737.7 | 2270374.85 | 2 | 0.91 | 2270365.16 | NA | 
| 2d_int | XY | ```SDST``` | ```LEX``` | 412795.39 | 883737.62 | 2270373.4 | 2 | 0.91 | 2270365.15 | NA | 
| 2d_int | XY | ```SDST``` | ```PAR``` | 412795.21 | 883737.7 | 2270374.02 | 2 | 0.91 | 2270365.16 | NA | 
| 2d_int | XY | ```VDST``` | ```BOX``` | 412795.22 | 883737.63 | 2270372.9 | 2 | 0.91 | 2270365.02 | NA | 
| 2d_int | XY | ```VDST``` | ```LEX``` | 412795.22 | 883737.63 | 2270372.9 | 2 | 0.91 | 2270365.02 | NA | 
| 2d_int | XY | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| 2d_int | XY | ```VAVG``` | ```BOX``` | 1559943.59 | 1136056.6 | 3916114.89 | 4 | 0.86 | 1623479.6 | 926889.54 | 
| 2d_int | XY | ```VAVG``` | ```LEX``` | 1542830.4 | 1336211.65 | 3387071.35 | 2 | 0.96 | 2735398.37 | NA | 
| 2d_int | XY | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| 2d_int | XY | ```SAVG``` | | 1542830.53 | 1336211.78 | 3387070.5 | 2 | 0.96 | 2735398.6 | NA | 
| 2d_int_inf | XY | ```NAIVE_QT``` | | 4.0 | 2.47 | 15.0 | 2 | 0.56 | 5.5 | NA | 
| 2d_int_inf | XY | ```SDST``` | ```BOX``` | 4.0 | 2.47 | 15.0 | 2 | 0.56 | 5.5 | NA | 
| 2d_int_inf | XY | ```SDST``` | ```LEX``` | 4.0 | 2.47 | 15.0 | 2 | 0.56 | 5.5 | NA | 
| 2d_int_inf | XY | ```SDST``` | ```PAR``` | 1.0 | NA | 1.0 | NA | NA | NA | NA | 
| 2d_int_inf | XY | ```VDST``` | ```BOX``` | 4.0 | 2.47 | 15.0 | 2 | 0.56 | 5.5 | NA | 
| 2d_int_inf | XY | ```VDST``` | ```LEX``` | 4.0 | 2.47 | 15.0 | 2 | 0.56 | 5.5 | NA | 
| 2d_int_inf | XY | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| 2d_int_inf | XY | ```VAVG``` | ```BOX``` | 10.73 | 6.92 | 24.0 | 4 | 0.7 | 12.22 | 6.02 | 
| 2d_int_inf | XY | ```VAVG``` | ```LEX``` | 10.73 | 6.92 | 24.0 | 4 | 0.7 | 12.22 | 6.02 | 
| 2d_int_inf | XY | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| 2d_int_inf | XY | ```SAVG``` | | 10.73 | 6.92 | 24.0 | 4 | 0.7 | 12.22 | 6.02 | 
| supermarket | bags | ```NAIVE_QT``` | | 2.81 | 1.92 | 17.27 | 2 | 0.61 | 4.9 | NA | 
| supermarket | bags | ```SDST``` | ```BOX``` | 2.76 | 2.08 | 18.0 | 2 | 0.67 | 6.9 | NA | 
| supermarket | bags | ```SDST``` | ```LEX``` | 2.89 | 2.01 | 18.83 | 2 | 0.65 | 6.85 | NA | 
| supermarket | bags | ```SDST``` | ```PAR``` | 4.26 | 2.16 | 21.95 | 2 | 0.55 | 5.66 | NA | 
| supermarket | bags | ```VDST``` | ```BOX``` | 4.06 | 2.21 | 20.79 | 2 | 0.6 | 5.61 | NA | 
| supermarket | bags | ```VDST``` | ```LEX``` | 2.87 | 2.02 | 15.63 | 2 | 0.58 | 4.9 | NA | 
| supermarket | bags | ```VDST``` | ```PAR``` | 4.34 | 2.29 | 19.5 | 2 | 0.63 | 6.1 | NA | 
| supermarket | bags | ```VAVG``` | ```BOX``` | 4.57 | 2.04 | 20.18 | 2 | 0.56 | 5.75 | NA | 
| supermarket | bags | ```VAVG``` | ```LEX``` | 4.83 | 2.18 | 23.8 | 2 | 0.63 | 6.33 | NA | 
| supermarket | bags | ```SDST``` | ```PAR``` | 4.8 | 2.21 | 23.81 | 2 | 0.63 | 6.31 | NA | 
| supermarket | bags | ```SAVG``` | | 4.72 | 2.25 | 26.67 | 2 | 0.63 | 6.42 | NA | 
| supermarket | hasMilk | ```NAIVE_QT``` | | 1.51 | 0.48 | 8.0 | 2 | 0.28 | 1.5 | NA | 
| supermarket | hasMilk | ```SDST``` | ```BOX``` | 1.51 | 0.48 | 8.0 | 2 | 0.28 | 1.5 | NA | 
| supermarket | hasMilk | ```SDST``` | ```LEX``` | 1.51 | 0.48 | 8.0 | 2 | 0.28 | 1.5 | NA | 
| supermarket | hasMilk | ```SDST``` | ```PAR``` | 1.51 | 0.48 | 8.0 | 2 | 0.28 | 1.5 | NA | 
| supermarket | hasMilk | ```VDST``` | ```BOX``` | 1.51 | 0.48 | 8.41 | 2 | 0.24 | 1.39 | NA | 
| supermarket | hasMilk | ```VDST``` | ```LEX``` | 1.51 | 0.48 | 8.0 | 2 | 0.28 | 1.5 | NA | 
| supermarket | hasMilk | ```VDST``` | ```PAR``` | 1.51 | 0.48 | 8.0 | 2 | 0.28 | 1.5 | NA | 
| supermarket | hasMilk | ```VAVG``` | ```BOX``` | 1.72 | 0.62 | 11.86 | 2 | 0.23 | 1.52 | NA | 
| supermarket | hasMilk | ```VAVG``` | ```LEX``` | 1.72 | 0.62 | 11.16 | 2 | 0.27 | 1.59 | NA | 
| supermarket | hasMilk | ```SDST``` | ```PAR``` | 1.72 | 0.62 | 11.16 | 2 | 0.27 | 1.59 | NA | 
| supermarket | hasMilk | ```SAVG``` | | 1.72 | 0.62 | 10.45 | 2 | 0.27 | 1.59 | NA | 
| graph | Connected | ```NAIVE_QT``` | | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Connected | ```SDST``` | ```BOX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Connected | ```SDST``` | ```LEX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Connected | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Connected | ```VDST``` | ```BOX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Connected | ```VDST``` | ```LEX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Connected | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Connected | ```VAVG``` | ```BOX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Connected | ```VAVG``` | ```LEX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Connected | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Connected | ```SAVG``` | | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Count | ```NAIVE_QT``` | | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Count | ```SDST``` | ```BOX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Count | ```SDST``` | ```LEX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Count | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Count | ```VDST``` | ```BOX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Count | ```VDST``` | ```LEX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Count | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Count | ```VAVG``` | ```BOX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Count | ```VAVG``` | ```LEX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Count | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Count | ```SAVG``` | | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Forest | ```NAIVE_QT``` | | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Forest | ```SDST``` | ```BOX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Forest | ```SDST``` | ```LEX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Forest | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Forest | ```VDST``` | ```BOX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Forest | ```VDST``` | ```LEX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Forest | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Forest | ```VAVG``` | ```BOX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Forest | ```VAVG``` | ```LEX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Forest | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Forest | ```SAVG``` | | NA | NA | 0 | NA | NA | NA | NA | 
| bank | tEx | ```NAIVE_QT``` | | 6.15 | 3.82 | 27.37 | 2 | 0.6 | 9.21 | NA | 
| bank | tEx | ```SDST``` | ```BOX``` | 587.17 | 631.82 | 2970.21 | 2 | 0.75 | 1812.98 | NA | 
| bank | tEx | ```SDST``` | ```LEX``` | 103.78 | 68.75 | 479.45 | 2 | 0.65 | 161.5 | NA | 
| bank | tEx | ```SDST``` | ```PAR``` | 17.66 | NA | 17.66 | NA | NA | NA | NA | 
| bank | tEx | ```VDST``` | ```BOX``` | 5.37 | 1.66 | 9.63 | 2 | 0.3 | 6.08 | NA | 
| bank | tEx | ```VDST``` | ```LEX``` | 24.28 | 14.06 | 85.83 | 3 | 0.49 | 31.27 | 12.98 | 
| bank | tEx | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| bank | tEx | ```VAVG``` | ```BOX``` | 7.01 | 2.08 | 12.31 | 2 | 0.28 | 7.84 | NA | 
| bank | tEx | ```VAVG``` | ```LEX``` | 19.47 | 9.12 | 107.8 | 2 | 0.43 | 22.09 | NA | 
| bank | tEx | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| bank | tEx | ```SAVG``` | | 12.34 | 5.49 | 86.73 | 2 | 0.5 | 17.35 | NA | 
| bank_bounded | tEx | ```NAIVE_QT``` | | 231598.5 | 495806.1 | 1273787.78 | 2 | 0.91 | 1273756.72 | NA | 
| bank_bounded | tEx | ```SDST``` | ```BOX``` | 406977.53 | 871280.81 | 2238378.51 | 2 | 0.91 | 2238363.76 | NA | 
| bank_bounded | tEx | ```SDST``` | ```LEX``` | 406977.53 | 871280.81 | 2238378.51 | 2 | 0.91 | 2238363.76 | NA | 
| bank_bounded | tEx | ```SDST``` | ```PAR``` | 2238365.26 | NA | 2238365.26 | NA | NA | NA | NA | 
| bank_bounded | tEx | ```VDST``` | ```BOX``` | 884973.84 | NA | 884973.84 | NA | NA | NA | NA | 
| bank_bounded | tEx | ```VDST``` | ```LEX``` | 312298.9 | 668586.16 | 1717645.04 | 2 | 0.91 | 1717631.68 | NA | 
| bank_bounded | tEx | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| bank_bounded | tEx | ```VAVG``` | ```BOX``` | 537722.61 | 575332.94 | 1081616.31 | 2 | 0.74 | 1062852.76 | NA | 
| bank_bounded | tEx | ```VAVG``` | ```LEX``` | 1967720.5 | 1015034.16 | 9484685.49 | 5 | 0.67 | 2327506.06 | 552216.12 | 
| bank_bounded | tEx | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| bank_bounded | tEx | ```SAVG``` | | 2237041.31 | 749571.98 | 13100737.78 | 5 | 0.64 | 2424911.81 | 456007.91 | 
| network | threeNodes | ```NAIVE_QT``` | | 8.2 | 11.33 | 43.28 | 2 | 0.82 | 31.8 | NA | 
| network | threeNodes | ```SDST``` | ```BOX``` | 42.27 | 21.4 | 180.65 | 2 | 0.66 | 57.02 | NA | 
| network | threeNodes | ```SDST``` | ```LEX``` | 16.09 | 12.85 | 73.48 | 2 | 0.74 | 27.75 | NA | 
| network | threeNodes | ```SDST``` | ```PAR``` | 14.07 | NA | 14.07 | NA | NA | NA | NA | 
| network | threeNodes | ```VDST``` | ```BOX``` | 198.88 | 168.52 | 578.17 | 2 | 0.78 | 370.86 | NA | 
| network | threeNodes | ```VDST``` | ```LEX``` | 16.81 | 9.11 | 93.86 | 6 | 0.65 | 21.7 | 7.35 | 
| network | threeNodes | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| network | threeNodes | ```VAVG``` | ```BOX``` | 41.36 | 13.09 | 290.11 | 2 | 0.36 | 41.19 | NA | 
| network | threeNodes | ```VAVG``` | ```LEX``` | 43.47 | 25.61 | 137.07 | 2 | 0.62 | 60.53 | NA | 
| network | threeNodes | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| network | threeNodes | ```SAVG``` | | 23.66 | 9.39 | 132.0 | 5 | 0.55 | 26.47 | 5.88 | 
| network_bounded | threeNodes | ```NAIVE_QT``` | | 316203.68 | 676943.18 | 1739113.63 | 2 | 0.91 | 1739102.46 | NA | 
| network_bounded | threeNodes | ```SDST``` | ```BOX``` | 442641.33 | 947635.02 | 2434530.27 | 2 | 0.91 | 2434520.05 | NA | 
| network_bounded | threeNodes | ```SDST``` | ```LEX``` | 442641.32 | 947635.02 | 2434530.83 | 2 | 0.91 | 2434520.04 | NA | 
| network_bounded | threeNodes | ```SDST``` | ```PAR``` | 2434520.49 | NA | 2434520.49 | NA | NA | NA | NA | 
| network_bounded | threeNodes | ```VDST``` | ```BOX``` | 1640874.45 | 600093.01 | 10185873.46 | 5 | 0.39 | 1736776.1 | 383234.34 | 
| network_bounded | threeNodes | ```VDST``` | ```LEX``` | 405744.29 | 868638.79 | 2231584.22 | 2 | 0.91 | 2231577.12 | NA | 
| network_bounded | threeNodes | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| network_bounded | threeNodes | ```VAVG``` | ```BOX``` | 1838451.53 | 513755.86 | 13944558.24 | 2 | 0.3 | 1827247.22 | NA | 
| network_bounded | threeNodes | ```VAVG``` | ```LEX``` | 2078292.71 | 1281687.72 | 7955150.51 | 4 | 0.74 | 2401419.26 | 684145.17 | 
| network_bounded | threeNodes | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| network_bounded | threeNodes | ```SAVG``` | | 2202925.83 | 1057982.3 | 10465723.0 | 5 | 0.59 | 2416458.01 | 610881.0 | 
| network_litre | threeNodes | ```NAIVE_QT``` | | 8.12 | 7.08 | 46.62 | 2 | 0.67 | 19.68 | NA | 
| network_litre | threeNodes | ```SDST``` | ```BOX``` | 84.36 | 44.36 | 399.48 | 2 | 0.63 | 122.89 | NA | 
| network_litre | threeNodes | ```SDST``` | ```LEX``` | 23.52 | 11.9 | 185.03 | 2 | 0.53 | 43.61 | NA | 
| network_litre | threeNodes | ```SDST``` | ```PAR``` | 13.42 | NA | 13.42 | NA | NA | NA | NA | 
| network_litre | threeNodes | ```VDST``` | ```BOX``` | NA | NA | 0 | NA | NA | NA | NA | 
| network_litre | threeNodes | ```VDST``` | ```LEX``` | 16.56 | 6.89 | 97.99 | 2 | 0.41 | 17.95 | NA | 
| network_litre | threeNodes | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| network_litre | threeNodes | ```VAVG``` | ```BOX``` | 3.46 | NA | 3.46 | NA | NA | NA | NA | 
| network_litre | threeNodes | ```VAVG``` | ```LEX``` | 16.75 | 5.01 | 128.92 | 2 | 0.28 | 16.35 | NA | 
| network_litre | threeNodes | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| network_litre | threeNodes | ```SAVG``` | | 18.36 | 5.67 | 152.54 | 2 | 0.38 | 25.66 | NA | 
| network_litre_bounded | threeNodes | ```NAIVE_QT``` | | 279211.59 | 597743.42 | 1535655.43 | 2 | 0.91 | 1535636.67 | NA | 
| network_litre_bounded | threeNodes | ```SDST``` | ```BOX``` | 449509.66 | 962338.84 | 2472307.03 | 2 | 0.91 | 2472295.05 | NA | 
| network_litre_bounded | threeNodes | ```SDST``` | ```LEX``` | 449509.63 | 962338.84 | 2472306.67 | 2 | 0.91 | 2472295.02 | NA | 
| network_litre_bounded | threeNodes | ```SDST``` | ```PAR``` | 2472295.63 | NA | 2472295.63 | NA | NA | NA | NA | 
| network_litre_bounded | threeNodes | ```VDST``` | ```BOX``` | 1673490.18 | 176735.82 | 3158970.55 | 2 | 0.09 | 1587551.41 | NA | 
| network_litre_bounded | threeNodes | ```VDST``` | ```LEX``` | 412507.18 | 883117.27 | 2268780.99 | 2 | 0.91 | 2268773.01 | NA | 
| network_litre_bounded | threeNodes | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| network_litre_bounded | threeNodes | ```VAVG``` | ```BOX``` | 1782983.8 | 254913.02 | 4860344.48 | 2 | 0.13 | 1483294.37 | NA | 
| network_litre_bounded | threeNodes | ```VAVG``` | ```LEX``` | 2163605.72 | 1155188.85 | 9177310.39 | 5 | 0.64 | 2271571.11 | 594444.76 | 
| network_litre_bounded | threeNodes | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| network_litre_bounded | threeNodes | ```SAVG``` | | 2238836.6 | 1042267.63 | 11283474.76 | 7 | 0.55 | 2396126.95 | 606265.56 | 
| 2d_fuzzy | XY | ```NAIVE_QT``` | | 0.14 | 0.19 | 0.57 | 2 | 0.81 | 0.53 | NA | 
| 2d_fuzzy | XY | ```SDST``` | ```BOX``` | 0.38 | 0.42 | 0.9 | 2 | 0.75 | 0.86 | NA | 
| 2d_fuzzy | XY | ```SDST``` | ```LEX``` | 0.18 | 0.34 | 0.9 | 2 | 0.89 | 0.89 | NA | 
| 2d_fuzzy | XY | ```SDST``` | ```PAR``` | 0.9 | NA | 0.9 | NA | NA | NA | NA | 
| 2d_fuzzy | XY | ```VDST``` | ```BOX``` | 0.29 | 0.24 | 1.09 | 3 | 0.76 | 0.61 | 0.23 | 
| 2d_fuzzy | XY | ```VDST``` | ```LEX``` | 0.23 | 0.32 | 0.99 | 2 | 0.8 | 0.86 | NA | 
| 2d_fuzzy | XY | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| 2d_fuzzy | XY | ```VAVG``` | ```BOX``` | 0.74 | 0.52 | 2.14 | 2 | 0.8 | 1.17 | NA | 
| 2d_fuzzy | XY | ```VAVG``` | ```LEX``` | 0.76 | 0.6 | 2.03 | 2 | 0.87 | 1.27 | NA | 
| 2d_fuzzy | XY | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| 2d_fuzzy | XY | ```SAVG``` | | 0.75 | 0.58 | 1.99 | 2 | 0.86 | 1.24 | NA | 
| sanchez | same_diagnosis | ```NAIVE_QT``` | | 0.03 | 0.05 | 0.18 | 2 | 0.85 | 0.14 | NA | 
| sanchez | same_diagnosis | ```SDST``` | ```BOX``` | 0.3 | 0.6 | 1.6 | 2 | 0.9 | 1.56 | NA | 
| sanchez | same_diagnosis | ```SDST``` | ```LEX``` | 0.3 | 0.6 | 1.61 | 2 | 0.9 | 1.56 | NA | 
| sanchez | same_diagnosis | ```SDST``` | ```PAR``` | 1.52 | NA | 1.52 | NA | NA | NA | NA | 
| sanchez | same_diagnosis | ```VDST``` | ```BOX``` | 0.33 | 0.33 | 1.45 | 2 | 0.82 | 0.78 | NA | 
| sanchez | same_diagnosis | ```VDST``` | ```LEX``` | 0.29 | 0.61 | 1.57 | 2 | 0.91 | 1.56 | NA | 
| sanchez | same_diagnosis | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| sanchez | same_diagnosis | ```VAVG``` | ```BOX``` | 0.34 | 0.36 | 2.5 | 2 | 0.72 | 0.93 | NA | 
| sanchez | same_diagnosis | ```VAVG``` | ```LEX``` | 1.01 | 0.78 | 2.76 | 2 | 0.87 | 1.66 | NA | 
| sanchez | same_diagnosis | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| sanchez | same_diagnosis | ```SAVG``` | | 1.01 | 0.74 | 2.81 | 2 | 0.86 | 1.63 | NA | 
| sanchez | two_diagnosis | ```NAIVE_QT``` | | 0.03 | 0.06 | 0.16 | 2 | 0.88 | 0.15 | NA | 
| sanchez | two_diagnosis | ```SDST``` | ```BOX``` | 0.04 | 0.06 | 0.18 | 2 | 0.79 | 0.17 | NA | 
| sanchez | two_diagnosis | ```SDST``` | ```LEX``` | 0.04 | 0.06 | 0.18 | 2 | 0.79 | 0.17 | NA | 
| sanchez | two_diagnosis | ```SDST``` | ```PAR``` | 0.11 | NA | 0.11 | NA | NA | NA | NA | 
| sanchez | two_diagnosis | ```VDST``` | ```BOX``` | 0.07 | 0.06 | 0.17 | 2 | 0.78 | 0.13 | NA | 
| sanchez | two_diagnosis | ```VDST``` | ```LEX``` | 0.04 | 0.06 | 0.18 | 2 | 0.79 | 0.17 | NA | 
| sanchez | two_diagnosis | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| sanchez | two_diagnosis | ```VAVG``` | ```BOX``` | 0.07 | 0.05 | 0.37 | 5 | 0.57 | 0.1 | 0.05 | 
| sanchez | two_diagnosis | ```VAVG``` | ```LEX``` | 0.14 | 0.1 | 0.38 | 2 | 0.8 | 0.22 | NA | 
| sanchez | two_diagnosis | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| sanchez | two_diagnosis | ```SAVG``` | | 0.14 | 0.1 | 0.38 | 2 | 0.8 | 0.22 | NA | 
| intui | same_diagnosis | ```NAIVE_QT``` | | 0.25 | 0.51 | 1.4 | 2 | 0.9 | 1.33 | NA | 
| intui | same_diagnosis | ```SDST``` | ```BOX``` | 1.57 | 1.68 | 3.14 | 2 | 0.74 | 3.11 | NA | 
| intui | same_diagnosis | ```SDST``` | ```LEX``` | 0.9 | 1.43 | 3.14 | 2 | 0.85 | 3.11 | NA | 
| intui | same_diagnosis | ```SDST``` | ```PAR``` | 3.09 | NA | 3.09 | NA | NA | NA | NA | 
| intui | same_diagnosis | ```VDST``` | ```BOX``` | 1.02 | 0.31 | 4.73 | 2 | 0.26 | 1.16 | NA | 
| intui | same_diagnosis | ```VDST``` | ```LEX``` | 0.54 | 1.16 | 3.0 | 2 | 0.91 | 2.99 | NA | 
| intui | same_diagnosis | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| intui | same_diagnosis | ```VAVG``` | ```BOX``` | 1.15 | 0.33 | 8.54 | 6 | 0.23 | 1.25 | 0.27 | 
| intui | same_diagnosis | ```VAVG``` | ```LEX``` | 2.35 | 0.81 | 14.59 | 4 | 0.43 | 2.3 | 0.47 | 
| intui | same_diagnosis | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| intui | same_diagnosis | ```SAVG``` | | 2.39 | 0.78 | 14.18 | 8 | 0.42 | 2.48 | 0.55 | 
| intui | two_diagnosis | ```NAIVE_QT``` | | 0.13 | 0.23 | 0.76 | 2 | 0.86 | 0.6 | NA | 
| intui | two_diagnosis | ```SDST``` | ```BOX``` | 0.77 | 0.57 | 2.55 | 3 | 0.94 | 1.21 | 0.36 | 
| intui | two_diagnosis | ```SDST``` | ```LEX``` | 0.39 | 0.57 | 2.2 | 3 | 0.82 | 1.2 | 0.35 | 
| intui | two_diagnosis | ```SDST``` | ```PAR``` | 1.4 | NA | 1.4 | NA | NA | NA | NA | 
| intui | two_diagnosis | ```VDST``` | ```BOX``` | 0.27 | 0.14 | 1.62 | 3 | 0.49 | 0.42 | 0.09 | 
| intui | two_diagnosis | ```VDST``` | ```LEX``` | 0.2 | 0.43 | 1.1 | 2 | 0.91 | 1.1 | NA | 
| intui | two_diagnosis | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| intui | two_diagnosis | ```VAVG``` | ```BOX``` | 0.47 | 0.25 | 2.46 | 3 | 0.57 | 0.68 | 0.08 | 
| intui | two_diagnosis | ```VAVG``` | ```LEX``` | 0.98 | 0.46 | 4.51 | 5 | 0.62 | 1.1 | 0.23 | 
| intui | two_diagnosis | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| intui | two_diagnosis | ```SAVG``` | | 1.05 | 0.44 | 5.18 | 5 | 0.68 | 1.15 | 0.22 | 
| portrait | threeToTwo | ```NAIVE_QT``` | | 0.16 | 0.2 | 0.87 | 2 | 0.78 | 0.51 | NA | 
| portrait | threeToTwo | ```SDST``` | ```BOX``` | 1.07 | 1.2 | 4.25 | 3 | 0.9 | 1.91 | 0.7 | 
| portrait | threeToTwo | ```SDST``` | ```LEX``` | 0.72 | 1.06 | 4.15 | 2 | 0.86 | 2.08 | NA | 
| portrait | threeToTwo | ```SDST``` | ```PAR``` | 1.45 | NA | 1.45 | NA | NA | NA | NA | 
| portrait | threeToTwo | ```VDST``` | ```BOX``` | 1.05 | 0.46 | 3.72 | 2 | 0.41 | 1.44 | NA | 
| portrait | threeToTwo | ```VDST``` | ```LEX``` | 0.28 | 0.6 | 1.55 | 2 | 0.91 | 1.55 | NA | 
| portrait | threeToTwo | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| portrait | threeToTwo | ```VAVG``` | ```BOX``` | 1.17 | 0.57 | 6.75 | 3 | 0.42 | 1.26 | 0.33 | 
| portrait | threeToTwo | ```VAVG``` | ```LEX``` | 1.56 | 0.96 | 6.16 | 2 | 0.72 | 2.29 | NA | 
| portrait | threeToTwo | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| portrait | threeToTwo | ```SAVG``` | | 1.67 | 0.89 | 7.54 | 3 | 0.72 | 2.02 | 0.46 | 
| heater | highTemperature | ```NAIVE_QT``` | | 0.0 | 0.01 | 0.02 | 2 | 0.75 | 0.01 | NA | 
| heater | highTemperature | ```SDST``` | ```BOX``` | 0.03 | 0.04 | 0.12 | 2 | 0.8 | 0.12 | NA | 
| heater | highTemperature | ```SDST``` | ```LEX``` | 0.03 | 0.05 | 0.12 | 2 | 0.87 | 0.12 | NA | 
| heater | highTemperature | ```SDST``` | ```PAR``` | 0.06 | 0.05 | 0.16 | 2 | 0.87 | 0.12 | NA | 
| heater | highTemperature | ```VDST``` | ```BOX``` | 0.06 | 0.06 | 0.16 | 2 | 0.91 | 0.12 | NA | 
| heater | highTemperature | ```VDST``` | ```LEX``` | 0.03 | 0.04 | 0.12 | 2 | 0.78 | 0.12 | NA | 
| heater | highTemperature | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| heater | highTemperature | ```VAVG``` | ```BOX``` | 0.06 | 0.04 | 0.14 | 3 | 0.8 | 0.08 | 0.03 | 
| heater | highTemperature | ```VAVG``` | ```LEX``` | 0.07 | 0.06 | 0.16 | 2 | 0.91 | 0.13 | NA | 
| heater | highTemperature | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| heater | highTemperature | ```SAVG``` | | 0.07 | 0.06 | 0.16 | 2 | 0.9 | 0.12 | NA | 
| heater | lowHumidityExtends | ```NAIVE_QT``` | | NA | NA | 0 | NA | NA | NA | NA | 
| heater | lowHumidityExtends | ```SDST``` | ```BOX``` | NA | NA | 0 | NA | NA | NA | NA | 
| heater | lowHumidityExtends | ```SDST``` | ```LEX``` | NA | NA | 0 | NA | NA | NA | NA | 
| heater | lowHumidityExtends | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| heater | lowHumidityExtends | ```VDST``` | ```BOX``` | NA | NA | 0 | NA | NA | NA | NA | 
| heater | lowHumidityExtends | ```VDST``` | ```LEX``` | NA | NA | 0 | NA | NA | NA | NA | 
| heater | lowHumidityExtends | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| heater | lowHumidityExtends | ```VAVG``` | ```BOX``` | NA | NA | 0 | NA | NA | NA | NA | 
| heater | lowHumidityExtends | ```VAVG``` | ```LEX``` | NA | NA | 0 | NA | NA | NA | NA | 
| heater | lowHumidityExtends | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| heater | lowHumidityExtends | ```SAVG``` | | NA | NA | 0 | NA | NA | NA | NA | 
| tip | findGenerousTip | ```NAIVE_QT``` | | 0.04 | 0.04 | 0.16 | 2 | 0.72 | 0.11 | NA | 
| tip | findGenerousTip | ```SDST``` | ```BOX``` | NA | NA | 0 | NA | NA | NA | NA | 
| tip | findGenerousTip | ```SDST``` | ```LEX``` | NA | NA | 0 | NA | NA | NA | NA | 
| tip | findGenerousTip | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| tip | findGenerousTip | ```VDST``` | ```BOX``` | NA | NA | 0 | NA | NA | NA | NA | 
| tip | findGenerousTip | ```VDST``` | ```LEX``` | NA | NA | 0 | NA | NA | NA | NA | 
| tip | findGenerousTip | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| tip | findGenerousTip | ```VAVG``` | ```BOX``` | 0.78 | 0.53 | 1.26 | 2 | 0.57 | 1.08 | NA | 
| tip | findGenerousTip | ```VAVG``` | ```LEX``` | 0.82 | 0.43 | 1.4 | 2 | 0.46 | 1.05 | NA | 
| tip | findGenerousTip | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| tip | findGenerousTip | ```SAVG``` | | NA | NA | 0 | NA | NA | NA | NA | 
| tip | wasItGoodService | ```NAIVE_QT``` | | 0.0 | 0.0 | 0.0 | 2 | 0.91 | 0.0 | NA | 
| tip | wasItGoodService | ```SDST``` | ```BOX``` | 0.71 | NA | 0.71 | NA | NA | NA | NA | 
| tip | wasItGoodService | ```SDST``` | ```LEX``` | 0.26 | 0.34 | 0.74 | 3 | 0.83 | 0.49 | 0.4 | 
| tip | wasItGoodService | ```SDST``` | ```PAR``` | 0.71 | NA | 0.71 | NA | NA | NA | NA | 
| tip | wasItGoodService | ```VDST``` | ```BOX``` | NA | NA | 0 | NA | NA | NA | NA | 
| tip | wasItGoodService | ```VDST``` | ```LEX``` | NA | NA | 0 | NA | NA | NA | NA | 
| tip | wasItGoodService | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| tip | wasItGoodService | ```VAVG``` | ```BOX``` | 0.72 | NA | 0.72 | NA | NA | NA | NA | 
| tip | wasItGoodService | ```VAVG``` | ```LEX``` | 0.73 | NA | 0.73 | NA | NA | NA | NA | 
| tip | wasItGoodService | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| tip | wasItGoodService | ```SAVG``` | | 0.62 | 0.42 | 2.16 | 3 | 0.8 | 0.99 | 0.21 | 

## All 30 iterations

| Example | Command | Operation | Priority | $\mu_D$ | $\sigma_D$ | Perimeter | K | $s_C$ | $\mu_C$ | $\sigma_C$ |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 2d_int | XY | ```NAIVE``` | | 0.06 | 0.25 | 1.0 | NA | NA | NA | NA | 
| 2d_int | XY | ```SUPP``` | | 1.14 | 0.21 | 3.0 | 2 | 0.17 | 1.0 | NA | 
| 2d_int | XY | ```MAXSUPP``` | | 1.14 | 0.21 | 3.0 | 2 | 0.17 | 1.0 | NA | 
| 2d_int_inf | XY | ```NAIVE``` | | 0.06 | 0.25 | 1.0 | NA | NA | NA | NA | 
| 2d_int_inf | XY | ```SUPP``` | | 1.14 | 0.21 | 3.0 | 2 | 0.17 | 1.0 | NA | 
| 2d_int_inf | XY | ```MAXSUPP``` | | 1.14 | 0.21 | 3.0 | 2 | 0.17 | 1.0 | NA | 
| supermarket | bags | ```NAIVE``` | | 0.59 | 0.59 | 2.73 | 2 | 0.92 | 1.0 | NA | 
| supermarket | bags | ```SUPP``` | | 1.76 | 0.43 | 35.95 | 2 | 0.15 | 1.12 | NA | 
| supermarket | bags | ```MAXSUPP``` | | 2.5 | 0.6 | 42.05 | 2 | 0.26 | 1.99 | NA | 
| supermarket | hasMilk | ```NAIVE``` | | 0.85 | 0.57 | 5.41 | 5 | 0.9 | 1.24 | 0.21 | 
| supermarket | hasMilk | ```SUPP``` | | 1.36 | 0.31 | 7.41 | 2 | 0.17 | 1.09 | NA | 
| supermarket | hasMilk | ```MAXSUPP``` | | 1.36 | 0.31 | 7.0 | 2 | 0.17 | 1.06 | NA | 
| graph | Connected | ```NAIVE``` | | 2.88 | 1.16 | 40.52 | 3 | 0.4 | 4.89 | 1.8 | 
| graph | Connected | ```SUPP``` | | 4.63 | 1.42 | 58.9 | 7 | 0.56 | 5.01 | 0.95 | 
| graph | Connected | ```MAXSUPP``` | | 5.75 | 2.03 | 83.47 | 2 | 0.46 | 6.23 | NA | 
| graph | Count | ```NAIVE``` | | 2.71 | 1.12 | 42.83 | 4 | 0.47 | 4.22 | 0.77 | 
| graph | Count | ```SUPP``` | | 3.87 | 1.53 | 59.76 | 3 | 0.43 | 5.23 | 1.12 | 
| graph | Count | ```MAXSUPP``` | | 5.54 | 1.7 | 86.68 | 2 | 0.42 | 5.68 | NA | 
| graph | Forest | ```NAIVE``` | | 2.1 | 0.6 | 34.45 | 2 | 0.28 | 1.85 | NA | 
| graph | Forest | ```SUPP``` | | 2.29 | 0.57 | 33.97 | 8 | 0.31 | 2.22 | 0.51 | 
| graph | Forest | ```MAXSUPP``` | | 4.39 | 0.94 | 84.95 | 2 | 0.28 | 3.59 | NA | 
| bank | tEx | ```NAIVE``` | | 0.83 | 0.85 | 6.16 | 4 | 0.9 | 2.2 | 1.18 | 
| bank | tEx | ```SUPP``` | | 2.24 | 0.74 | 34.51 | 2 | 0.37 | 2.43 | NA | 
| bank | tEx | ```MAXSUPP``` | | 3.34 | 0.81 | 52.6 | 15 | 0.35 | 3.27 | 0.7 | 
| bank_bounded | tEx | ```NAIVE``` | | 0.25 | 0.95 | 3.87 | NA | NA | NA | NA | 
| bank_bounded | tEx | ```SUPP``` | | 2.58 | 0.85 | 36.89 | 2 | 0.43 | 3.27 | NA | 
| bank_bounded | tEx | ```MAXSUPP``` | | 3.31 | 0.83 | 50.79 | 16 | 0.37 | 3.33 | 0.72 | 
| network | threeNodes | ```NAIVE``` | | 0.21 | 0.59 | 3.24 | 2 | 0.94 | 2.24 | NA | 
| network | threeNodes | ```SUPP``` | | 1.77 | 0.46 | 33.47 | 2 | 0.23 | 1.34 | NA | 
| network | threeNodes | ```MAXSUPP``` | | 2.33 | 0.64 | 37.6 | 2 | 0.34 | 2.14 | NA | 
| network_bounded | threeNodes | ```NAIVE``` | | 0.42 | 0.71 | 3.0 | 2 | 0.91 | 2.0 | NA | 
| network_bounded | threeNodes | ```SUPP``` | | 1.84 | 0.44 | 32.56 | 3 | 0.25 | 1.55 | 0.26 | 
| network_bounded | threeNodes | ```MAXSUPP``` | | 2.31 | 0.66 | 37.35 | 2 | 0.35 | 2.19 | NA | 
| network_litre | threeNodes | ```NAIVE``` | | 0.11 | 0.43 | 1.73 | NA | NA | NA | NA | 
| network_litre | threeNodes | ```SUPP``` | | 1.85 | 0.49 | 31.97 | 2 | 0.23 | 1.49 | NA | 
| network_litre | threeNodes | ```MAXSUPP``` | | 2.34 | 0.63 | 36.73 | 2 | 0.3 | 2.02 | NA | 
| network_litre_bounded | threeNodes | ```NAIVE``` | | 0.14 | 0.55 | 2.24 | NA | NA | NA | NA | 
| network_litre_bounded | threeNodes | ```SUPP``` | | 1.7 | 0.39 | 31.24 | 2 | 0.19 | 1.2 | NA | 
| network_litre_bounded | threeNodes | ```MAXSUPP``` | | 2.34 | 0.64 | 37.01 | 2 | 0.33 | 2.12 | NA | 
| 2d_fuzzy | XY | ```NAIVE``` | | 0.0 | 0.0 | 0.0 | NA | NA | NA | NA | 
| 2d_fuzzy | XY | ```SUPP``` | | 1.14 | 0.24 | 2.0 | 2 | 0.1 | 1.12 | NA | 
| 2d_fuzzy | XY | ```MAXSUPP``` | | 1.14 | 0.24 | 2.0 | 2 | 0.1 | 1.12 | NA | 
| sanchez | same_diagnosis | ```NAIVE``` | | 0.14 | 0.55 | 2.24 | NA | NA | NA | NA | 
| sanchez | same_diagnosis | ```SUPP``` | | 1.89 | 0.45 | 33.54 | 7 | 0.2 | 1.69 | 0.31 | 
| sanchez | same_diagnosis | ```MAXSUPP``` | | 2.06 | 0.5 | 33.72 | 2 | 0.25 | 1.62 | NA | 
| sanchez | two_diagnosis | ```NAIVE``` | | 0.11 | 0.43 | 1.73 | NA | NA | NA | NA | 
| sanchez | two_diagnosis | ```SUPP``` | | 1.57 | 0.34 | 28.0 | 2 | 0.13 | 0.92 | NA | 
| sanchez | two_diagnosis | ```MAXSUPP``` | | 1.57 | 0.34 | 29.41 | 2 | 0.12 | 0.9 | NA | 
| intui | same_diagnosis | ```NAIVE``` | | 0.14 | 0.55 | 2.24 | NA | NA | NA | NA | 
| intui | same_diagnosis | ```SUPP``` | | 2.32 | 0.67 | 35.34 | 3 | 0.41 | 2.3 | 0.32 | 
| intui | same_diagnosis | ```MAXSUPP``` | | 2.94 | 1.06 | 34.56 | 2 | 0.49 | 3.36 | NA | 
| intui | two_diagnosis | ```NAIVE``` | | 0.06 | 0.25 | 1.0 | NA | NA | NA | NA | 
| intui | two_diagnosis | ```SUPP``` | | 1.67 | 0.37 | 31.83 | 4 | 0.17 | 1.25 | 0.13 | 
| intui | two_diagnosis | ```MAXSUPP``` | | 2.2 | 0.54 | 35.39 | 2 | 0.29 | 1.85 | NA | 
| portrait | threeToTwo | ```NAIVE``` | | 0.27 | 1.04 | 4.24 | NA | NA | NA | NA | 
| portrait | threeToTwo | ```SUPP``` | | 3.4 | 0.84 | 20.05 | 4 | 0.31 | 3.29 | 0.42 | 
| portrait | threeToTwo | ```MAXSUPP``` | | 3.4 | 0.84 | 20.05 | 4 | 0.31 | 3.29 | 0.42 | 
| heater | highTemperature | ```NAIVE``` | | 0.0 | 0.0 | 0.0 | NA | NA | NA | NA | 
| heater | highTemperature | ```SUPP``` | | 1.55 | 0.38 | 15.0 | 2 | 0.23 | 1.24 | NA | 
| heater | highTemperature | ```MAXSUPP``` | | 1.55 | 0.38 | 14.41 | 2 | 0.23 | 1.24 | NA | 
| heater | lowHumidityExtends | ```NAIVE``` | | 1.63 | 0.36 | 31.24 | 3 | 0.18 | 1.2 | 0.1 | 
| heater | lowHumidityExtends | ```SUPP``` | | 1.64 | 0.37 | 30.83 | 2 | 0.17 | 1.08 | NA | 
| heater | lowHumidityExtends | ```MAXSUPP``` | | 2.74 | 0.64 | 47.98 | 2 | 0.33 | 2.45 | NA | 
| tip | findGenerousTip | ```NAIVE``` | | 0.22 | 0.63 | 2.0 | NA | NA | NA | NA | 
| tip | findGenerousTip | ```SUPP``` | | 2.0 | NA | 2.0 | NA | NA | NA | NA | 
| tip | findGenerousTip | ```MAXSUPP``` | | NA | NA | 0 | NA | NA | NA | NA | 
| tip | wasItGoodService | ```NAIVE``` | | 0.19 | 0.74 | 3.0 | NA | NA | NA | NA | 
| tip | wasItGoodService | ```SUPP``` | | 3.07 | 0.85 | 34.5 | 4 | 0.43 | 3.19 | 0.42 | 
| tip | wasItGoodService | ```MAXSUPP``` | | NA | NA | 0 | NA | NA | NA | NA | 
| 2d_int | XY | ```NAIVE_QT``` | | 55256.69 | 210605.57 | 856384.57 | 2 | 0.97 | 856356.04 | NA | 
| 2d_int | XY | ```SDST``` | ```BOX``` | 146478.08 | 558360.21 | 2270392.79 | 2 | 0.97 | 2270363.0 | NA | 
| 2d_int | XY | ```SDST``` | ```LEX``` | 146478.08 | 558360.21 | 2270390.96 | 2 | 0.97 | 2270363.0 | NA | 
| 2d_int | XY | ```SDST``` | ```PAR``` | 276930.99 | 730020.69 | 3052668.01 | 2 | 0.97 | 2157539.18 | NA | 
| 2d_int | XY | ```VDST``` | ```BOX``` | 146478.15 | 558360.09 | 2270391.52 | 2 | 0.97 | 2270362.58 | NA | 
| 2d_int | XY | ```VDST``` | ```LEX``` | 146478.05 | 558360.17 | 2270391.24 | 2 | 0.97 | 2270362.82 | NA | 
| 2d_int | XY | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| 2d_int | XY | ```VAVG``` | ```BOX``` | 1489010.13 | 1139446.63 | 6627048.67 | 6 | 0.93 | 1442842.96 | 796143.66 | 
| 2d_int | XY | ```VAVG``` | ```LEX``` | 1459849.78 | 1385733.55 | 3387081.46 | 2 | 0.99 | 2793534.11 | NA | 
| 2d_int | XY | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| 2d_int | XY | ```SAVG``` | | 1459850.43 | 1385735.38 | 3387087.04 | 2 | 0.99 | 2793536.47 | NA | 
| 2d_int_inf | XY | ```NAIVE_QT``` | | 10.67 | 7.19 | 35.0 | 2 | 0.6 | 15.5 | NA | 
| 2d_int_inf | XY | ```SDST``` | ```BOX``` | 10.67 | 7.19 | 55.0 | 2 | 0.6 | 15.5 | NA | 
| 2d_int_inf | XY | ```SDST``` | ```LEX``` | 10.67 | 7.19 | 55.0 | 2 | 0.6 | 15.5 | NA | 
| 2d_int_inf | XY | ```SDST``` | ```PAR``` | 1.0 | NA | 1.0 | NA | NA | NA | NA | 
| 2d_int_inf | XY | ```VDST``` | ```BOX``` | 10.67 | 7.19 | 55.0 | 2 | 0.6 | 15.5 | NA | 
| 2d_int_inf | XY | ```VDST``` | ```LEX``` | 10.67 | 7.19 | 55.0 | 2 | 0.6 | 15.5 | NA | 
| 2d_int_inf | XY | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| 2d_int_inf | XY | ```VAVG``` | ```BOX``` | 32.79 | 22.22 | 88.0 | 10 | 0.65 | 34.66 | 21.35 | 
| 2d_int_inf | XY | ```VAVG``` | ```LEX``` | 32.69 | 22.15 | 90.0 | 11 | 0.65 | 36.69 | 22.79 | 
| 2d_int_inf | XY | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| 2d_int_inf | XY | ```SAVG``` | | 32.69 | 22.15 | 90.0 | 11 | 0.65 | 36.69 | 22.79 | 
| supermarket | bags | ```NAIVE_QT``` | | 2.32 | 1.31 | 41.14 | 2 | 0.6 | 4.83 | NA | 
| supermarket | bags | ```SDST``` | ```BOX``` | 2.31 | 1.31 | 39.12 | 2 | 0.69 | 6.72 | NA | 
| supermarket | bags | ```SDST``` | ```LEX``` | 2.31 | 1.31 | 40.83 | 2 | 0.69 | 6.71 | NA | 
| supermarket | bags | ```SDST``` | ```PAR``` | 4.06 | 2.0 | 45.54 | 2 | 0.53 | 5.17 | NA | 
| supermarket | bags | ```VDST``` | ```BOX``` | 3.96 | 2.25 | 39.84 | 2 | 0.66 | 6.08 | NA | 
| supermarket | bags | ```VDST``` | ```LEX``` | 3.81 | 1.87 | 38.01 | 2 | 0.51 | 4.85 | NA | 
| supermarket | bags | ```VDST``` | ```PAR``` | 4.01 | 2.07 | 42.61 | 2 | 0.57 | 5.3 | NA | 
| supermarket | bags | ```VAVG``` | ```BOX``` | 3.93 | 1.93 | 42.85 | 2 | 0.52 | 4.93 | NA | 
| supermarket | bags | ```VAVG``` | ```LEX``` | 4.43 | 2.11 | 40.14 | 2 | 0.57 | 5.81 | NA | 
| supermarket | bags | ```SDST``` | ```PAR``` | 4.58 | 2.18 | 51.12 | 2 | 0.61 | 6.11 | NA | 
| supermarket | bags | ```SAVG``` | | 4.58 | 2.22 | 49.17 | 2 | 0.63 | 6.3 | NA | 
| supermarket | hasMilk | ```NAIVE_QT``` | | 1.51 | 0.48 | 8.0 | 2 | 0.28 | 1.5 | NA | 
| supermarket | hasMilk | ```SDST``` | ```BOX``` | 1.51 | 0.48 | 8.0 | 2 | 0.28 | 1.5 | NA | 
| supermarket | hasMilk | ```SDST``` | ```LEX``` | 1.51 | 0.48 | 8.0 | 2 | 0.28 | 1.5 | NA | 
| supermarket | hasMilk | ```SDST``` | ```PAR``` | 1.51 | 0.48 | 8.0 | 2 | 0.28 | 1.5 | NA | 
| supermarket | hasMilk | ```VDST``` | ```BOX``` | 1.51 | 0.48 | 8.41 | 2 | 0.24 | 1.39 | NA | 
| supermarket | hasMilk | ```VDST``` | ```LEX``` | 1.51 | 0.48 | 8.0 | 2 | 0.28 | 1.5 | NA | 
| supermarket | hasMilk | ```VDST``` | ```PAR``` | 1.51 | 0.48 | 8.0 | 2 | 0.28 | 1.5 | NA | 
| supermarket | hasMilk | ```VAVG``` | ```BOX``` | 1.72 | 0.62 | 11.86 | 2 | 0.23 | 1.52 | NA | 
| supermarket | hasMilk | ```VAVG``` | ```LEX``` | 1.72 | 0.62 | 11.16 | 2 | 0.27 | 1.59 | NA | 
| supermarket | hasMilk | ```SDST``` | ```PAR``` | 1.72 | 0.62 | 11.16 | 2 | 0.27 | 1.59 | NA | 
| supermarket | hasMilk | ```SAVG``` | | 1.72 | 0.62 | 10.45 | 2 | 0.27 | 1.59 | NA | 
| graph | Connected | ```NAIVE_QT``` | | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Connected | ```SDST``` | ```BOX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Connected | ```SDST``` | ```LEX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Connected | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Connected | ```VDST``` | ```BOX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Connected | ```VDST``` | ```LEX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Connected | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Connected | ```VAVG``` | ```BOX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Connected | ```VAVG``` | ```LEX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Connected | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Connected | ```SAVG``` | | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Count | ```NAIVE_QT``` | | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Count | ```SDST``` | ```BOX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Count | ```SDST``` | ```LEX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Count | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Count | ```VDST``` | ```BOX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Count | ```VDST``` | ```LEX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Count | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Count | ```VAVG``` | ```BOX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Count | ```VAVG``` | ```LEX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Count | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Count | ```SAVG``` | | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Forest | ```NAIVE_QT``` | | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Forest | ```SDST``` | ```BOX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Forest | ```SDST``` | ```LEX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Forest | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Forest | ```VDST``` | ```BOX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Forest | ```VDST``` | ```LEX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Forest | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Forest | ```VAVG``` | ```BOX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Forest | ```VAVG``` | ```LEX``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Forest | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| graph | Forest | ```SAVG``` | | NA | NA | 0 | NA | NA | NA | NA | 
| bank | tEx | ```NAIVE_QT``` | | 12.54 | 7.35 | 58.57 | 2 | 0.56 | 16.64 | NA | 
| bank | tEx | ```SDST``` | ```BOX``` | 1326.65 | 1325.16 | 5253.54 | 2 | 0.79 | 2821.62 | NA | 
| bank | tEx | ```SDST``` | ```LEX``` | 1642949019.0 | 1412243534.98 | 9008166302.99 | 6 | 0.86 | 2286801887.53 | 588848414.73 | 
| bank | tEx | ```SDST``` | ```PAR``` | 17.66 | NA | 17.66 | NA | NA | NA | NA | 
| bank | tEx | ```VDST``` | ```BOX``` | 5.37 | 1.66 | 9.63 | 2 | 0.3 | 6.08 | NA | 
| bank | tEx | ```VDST``` | ```LEX``` | 989.37 | 1186.27 | 3512.44 | 3 | 0.89 | 2055.43 | 901.42 | 
| bank | tEx | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| bank | tEx | ```VAVG``` | ```BOX``` | 7.01 | 2.08 | 12.31 | 2 | 0.28 | 7.84 | NA | 
| bank | tEx | ```VAVG``` | ```LEX``` | 62.14 | 40.06 | 662.29 | 5 | 0.54 | 97.29 | 35.52 | 
| bank | tEx | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| bank | tEx | ```SAVG``` | | 43.08 | 21.35 | 598.95 | 4 | 0.46 | 62.16 | 12.16 | 
| bank_bounded | tEx | ```NAIVE_QT``` | | 82188.23 | 313257.13 | 1273808.74 | 2 | 0.97 | 1273752.5 | NA | 
| bank_bounded | tEx | ```SDST``` | ```BOX``` | 319768.97 | 787602.34 | 2238383.56 | 2 | 0.93 | 2238363.42 | NA | 
| bank_bounded | tEx | ```SDST``` | ```LEX``` | 144413.7 | 550490.19 | 2238410.45 | 2 | 0.97 | 2238362.69 | NA | 
| bank_bounded | tEx | ```SDST``` | ```PAR``` | 2238365.26 | NA | 2238365.26 | NA | NA | NA | NA | 
| bank_bounded | tEx | ```VDST``` | ```BOX``` | 884973.84 | NA | 884973.84 | NA | NA | NA | NA | 
| bank_bounded | tEx | ```VDST``` | ```LEX``` | 110819.13 | 422423.68 | 1717673.3 | 2 | 0.97 | 1717630.03 | NA | 
| bank_bounded | tEx | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| bank_bounded | tEx | ```VAVG``` | ```BOX``` | 537722.61 | 575332.94 | 1081616.31 | 2 | 0.74 | 1062852.76 | NA | 
| bank_bounded | tEx | ```VAVG``` | ```LEX``` | 1632168.62 | 1290537.64 | 9484715.43 | 5 | 0.88 | 2327503.25 | 552215.97 | 
| bank_bounded | tEx | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| bank_bounded | tEx | ```SAVG``` | | 2154411.19 | 977740.54 | 13965897.73 | 9 | 0.9 | 2207681.67 | 587990.12 | 
| network | threeNodes | ```NAIVE_QT``` | | 10.87 | 8.0 | 77.26 | 3 | 0.6 | 24.91 | 9.58 | 
| network | threeNodes | ```SDST``` | ```BOX``` | 35.3 | 20.2 | 274.84 | 6 | 0.78 | 51.08 | 13.44 | 
| network | threeNodes | ```SDST``` | ```LEX``` | 9.35 | 10.6 | 122.44 | 2 | 0.79 | 27.12 | NA | 
| network | threeNodes | ```SDST``` | ```PAR``` | 14.07 | NA | 14.07 | NA | NA | NA | NA | 
| network | threeNodes | ```VDST``` | ```BOX``` | 1789.91 | 1947.03 | 18677.86 | 5 | 0.76 | 3777.99 | 1473.69 | 
| network | threeNodes | ```VDST``` | ```LEX``` | 10.57 | 8.16 | 135.22 | 2 | 0.69 | 31.58 | NA | 
| network | threeNodes | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| network | threeNodes | ```VAVG``` | ```BOX``` | 41.77 | 13.82 | 659.88 | 2 | 0.38 | 41.78 | NA | 
| network | threeNodes | ```VAVG``` | ```LEX``` | 66.74 | 45.25 | 356.42 | 3 | 0.62 | 92.14 | 40.44 | 
| network | threeNodes | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| network | threeNodes | ```SAVG``` | | 20.72 | 11.23 | 192.22 | 3 | 0.63 | 26.26 | 4.04 | 
| network_bounded | threeNodes | ```NAIVE_QT``` | | 112209.69 | 427702.38 | 1739127.91 | 2 | 0.97 | 1739099.66 | NA | 
| network_bounded | threeNodes | ```SDST``` | ```BOX``` | 157067.78 | 598732.34 | 2434554.01 | 2 | 0.97 | 2434519.78 | NA | 
| network_bounded | threeNodes | ```SDST``` | ```LEX``` | 162303.28 | 607974.63 | 2434552.55 | 2 | 0.97 | 2434519.8 | NA | 
| network_bounded | threeNodes | ```SDST``` | ```PAR``` | 2434520.49 | NA | 2434520.49 | NA | NA | NA | NA | 
| network_bounded | threeNodes | ```VDST``` | ```BOX``` | 1702946.19 | 550349.45 | 13967926.19 | 2 | 0.33 | 1568601.68 | NA | 
| network_bounded | threeNodes | ```VDST``` | ```LEX``` | 143982.11 | 548818.64 | 2231595.75 | 2 | 0.97 | 2231572.89 | NA | 
| network_bounded | threeNodes | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| network_bounded | threeNodes | ```VAVG``` | ```BOX``` | 1965980.78 | 554143.67 | 35543201.27 | 2 | 0.3 | 1767049.05 | NA | 
| network_bounded | threeNodes | ```VAVG``` | ```LEX``` | 1869747.98 | 1582857.07 | 7955166.98 | 4 | 0.91 | 2401418.0 | 684144.29 | 
| network_bounded | threeNodes | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| network_bounded | threeNodes | ```SAVG``` | | 1930733.73 | 1508340.21 | 10465748.82 | 5 | 0.85 | 2427223.72 | 615897.43 | 
| network_litre | threeNodes | ```NAIVE_QT``` | | 6.44 | 4.93 | 81.2 | 5 | 0.49 | 15.05 | 6.83 | 
| network_litre | threeNodes | ```SDST``` | ```BOX``` | 430.22 | 405.74 | 4449.62 | 2 | 0.72 | 1041.66 | NA | 
| network_litre | threeNodes | ```SDST``` | ```LEX``` | 225.39 | 205.85 | 2626.85 | 2 | 0.67 | 450.0 | NA | 
| network_litre | threeNodes | ```SDST``` | ```PAR``` | 13.42 | NA | 13.42 | NA | NA | NA | NA | 
| network_litre | threeNodes | ```VDST``` | ```BOX``` | NA | NA | 0 | NA | NA | NA | NA | 
| network_litre | threeNodes | ```VDST``` | ```LEX``` | 48.17 | 28.86 | 460.13 | 2 | 0.55 | 66.49 | NA | 
| network_litre | threeNodes | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| network_litre | threeNodes | ```VAVG``` | ```BOX``` | 3.46 | NA | 3.46 | NA | NA | NA | NA | 
| network_litre | threeNodes | ```VAVG``` | ```LEX``` | 20.24 | 6.57 | 360.95 | 2 | 0.28 | 17.17 | NA | 
| network_litre | threeNodes | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| network_litre | threeNodes | ```SAVG``` | | 22.17 | 7.22 | 406.82 | 2 | 0.28 | 18.67 | NA | 
| network_litre_bounded | threeNodes | ```NAIVE_QT``` | | 99082.6 | 377663.14 | 1535693.97 | 2 | 0.97 | 1535633.83 | NA | 
| network_litre_bounded | threeNodes | ```SDST``` | ```BOX``` | 183134.93 | 648396.48 | 2472327.0 | 2 | 0.96 | 2472294.77 | NA | 
| network_litre_bounded | threeNodes | ```SDST``` | ```LEX``` | 159504.88 | 608022.51 | 2472332.52 | 2 | 0.97 | 2472294.73 | NA | 
| network_litre_bounded | threeNodes | ```SDST``` | ```PAR``` | 2472295.63 | NA | 2472295.63 | NA | NA | NA | NA | 
| network_litre_bounded | threeNodes | ```VDST``` | ```BOX``` | 1673490.18 | 176735.82 | 3158970.55 | 2 | 0.09 | 1587551.41 | NA | 
| network_litre_bounded | threeNodes | ```VDST``` | ```LEX``` | 146381.97 | 557966.88 | 2268796.44 | 2 | 0.97 | 2268770.74 | NA | 
| network_litre_bounded | threeNodes | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| network_litre_bounded | threeNodes | ```VAVG``` | ```BOX``` | 1782983.8 | 254913.02 | 4860344.48 | 2 | 0.13 | 1483294.37 | NA | 
| network_litre_bounded | threeNodes | ```VAVG``` | ```LEX``` | 1910561.33 | 1542569.6 | 9177328.8 | 5 | 0.87 | 2271570.35 | 594444.34 | 
| network_litre_bounded | threeNodes | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| network_litre_bounded | threeNodes | ```SAVG``` | | 1941751.79 | 1506602.89 | 11283497.18 | 7 | 0.84 | 2396126.81 | 606265.54 | 
| 2d_fuzzy | XY | ```NAIVE_QT``` | | 0.06 | 0.14 | 0.57 | 2 | 0.92 | 0.55 | NA | 
| 2d_fuzzy | XY | ```SDST``` | ```BOX``` | 0.38 | 0.42 | 0.9 | 2 | 0.75 | 0.86 | NA | 
| 2d_fuzzy | XY | ```SDST``` | ```LEX``` | 0.15 | 0.39 | 1.97 | 2 | 0.96 | 1.15 | NA | 
| 2d_fuzzy | XY | ```SDST``` | ```PAR``` | 0.9 | NA | 0.9 | NA | NA | NA | NA | 
| 2d_fuzzy | XY | ```VDST``` | ```BOX``` | 0.27 | 0.29 | 2.06 | 3 | 0.86 | 0.6 | 0.25 | 
| 2d_fuzzy | XY | ```VDST``` | ```LEX``` | 0.09 | 0.23 | 0.99 | 2 | 0.92 | 0.89 | NA | 
| 2d_fuzzy | XY | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| 2d_fuzzy | XY | ```VAVG``` | ```BOX``` | 0.73 | 0.6 | 2.2 | 2 | 0.89 | 1.28 | NA | 
| 2d_fuzzy | XY | ```VAVG``` | ```LEX``` | 0.73 | 0.67 | 2.03 | 2 | 0.95 | 1.36 | NA | 
| 2d_fuzzy | XY | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| 2d_fuzzy | XY | ```SAVG``` | | 0.73 | 0.66 | 2.01 | 2 | 0.95 | 1.35 | NA | 
| sanchez | same_diagnosis | ```NAIVE_QT``` | | 0.02 | 0.03 | 0.19 | 2 | 0.92 | 0.14 | NA | 
| sanchez | same_diagnosis | ```SDST``` | ```BOX``` | 0.11 | 0.38 | 1.6 | 2 | 0.96 | 1.56 | NA | 
| sanchez | same_diagnosis | ```SDST``` | ```LEX``` | 0.18 | 0.45 | 1.85 | 2 | 0.96 | 1.34 | NA | 
| sanchez | same_diagnosis | ```SDST``` | ```PAR``` | 1.52 | NA | 1.52 | NA | NA | NA | NA | 
| sanchez | same_diagnosis | ```VDST``` | ```BOX``` | 0.37 | 0.35 | 3.61 | 2 | 0.74 | 0.7 | NA | 
| sanchez | same_diagnosis | ```VDST``` | ```LEX``` | 0.1 | 0.38 | 1.57 | 2 | 0.97 | 1.56 | NA | 
| sanchez | same_diagnosis | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| sanchez | same_diagnosis | ```VAVG``` | ```BOX``` | 0.43 | 0.32 | 4.4 | 3 | 0.67 | 0.93 | 0.23 | 
| sanchez | same_diagnosis | ```VAVG``` | ```LEX``` | 0.94 | 0.81 | 3.6 | 2 | 0.92 | 1.68 | NA | 
| sanchez | same_diagnosis | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| sanchez | same_diagnosis | ```SAVG``` | | 0.93 | 0.79 | 3.21 | 2 | 0.91 | 1.65 | NA | 
| sanchez | two_diagnosis | ```NAIVE_QT``` | | 0.01 | 0.04 | 0.16 | 2 | 0.96 | 0.15 | NA | 
| sanchez | two_diagnosis | ```SDST``` | ```BOX``` | 0.02 | 0.04 | 0.18 | 2 | 0.93 | 0.17 | NA | 
| sanchez | two_diagnosis | ```SDST``` | ```LEX``` | 0.02 | 0.04 | 0.18 | 2 | 0.93 | 0.17 | NA | 
| sanchez | two_diagnosis | ```SDST``` | ```PAR``` | 0.11 | NA | 0.11 | NA | NA | NA | NA | 
| sanchez | two_diagnosis | ```VDST``` | ```BOX``` | 0.06 | 0.05 | 0.18 | 2 | 0.77 | 0.12 | NA | 
| sanchez | two_diagnosis | ```VDST``` | ```LEX``` | 0.02 | 0.04 | 0.18 | 2 | 0.93 | 0.17 | NA | 
| sanchez | two_diagnosis | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| sanchez | two_diagnosis | ```VAVG``` | ```BOX``` | 0.09 | 0.07 | 0.45 | 4 | 0.76 | 0.13 | 0.07 | 
| sanchez | two_diagnosis | ```VAVG``` | ```LEX``` | 0.14 | 0.13 | 0.39 | 2 | 0.92 | 0.26 | NA | 
| sanchez | two_diagnosis | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| sanchez | two_diagnosis | ```SAVG``` | | 0.14 | 0.13 | 0.39 | 2 | 0.92 | 0.26 | NA | 
| intui | same_diagnosis | ```NAIVE_QT``` | | 0.09 | 0.33 | 1.44 | 2 | 0.96 | 1.33 | NA | 
| intui | same_diagnosis | ```SDST``` | ```BOX``` | 1.57 | 1.68 | 3.14 | 2 | 0.74 | 3.11 | NA | 
| intui | same_diagnosis | ```SDST``` | ```LEX``` | 0.9 | 1.43 | 3.14 | 2 | 0.85 | 3.11 | NA | 
| intui | same_diagnosis | ```SDST``` | ```PAR``` | 3.09 | NA | 3.09 | NA | NA | NA | NA | 
| intui | same_diagnosis | ```VDST``` | ```BOX``` | 1.02 | 0.31 | 4.73 | 2 | 0.26 | 1.16 | NA | 
| intui | same_diagnosis | ```VDST``` | ```LEX``` | 0.21 | 0.73 | 3.14 | 2 | 0.96 | 2.99 | NA | 
| intui | same_diagnosis | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| intui | same_diagnosis | ```VAVG``` | ```BOX``` | 1.23 | 0.37 | 24.44 | 2 | 0.29 | 1.02 | NA | 
| intui | same_diagnosis | ```VAVG``` | ```LEX``` | 2.12 | 1.24 | 16.02 | 10 | 0.8 | 2.41 | 0.65 | 
| intui | same_diagnosis | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| intui | same_diagnosis | ```SAVG``` | | 2.24 | 1.05 | 19.69 | 14 | 0.74 | 2.39 | 0.74 | 
| intui | two_diagnosis | ```NAIVE_QT``` | | 0.05 | 0.15 | 0.76 | 2 | 0.95 | 0.6 | NA | 
| intui | two_diagnosis | ```SDST``` | ```BOX``` | 0.6 | 0.55 | 2.55 | 3 | 0.97 | 1.21 | 0.36 | 
| intui | two_diagnosis | ```SDST``` | ```LEX``` | 0.37 | 0.46 | 2.21 | 3 | 0.97 | 1.21 | 0.35 | 
| intui | two_diagnosis | ```SDST``` | ```PAR``` | 1.4 | NA | 1.4 | NA | NA | NA | NA | 
| intui | two_diagnosis | ```VDST``` | ```BOX``` | 0.27 | 0.16 | 2.82 | 13 | 0.53 | 0.35 | 0.14 | 
| intui | two_diagnosis | ```VDST``` | ```LEX``` | 0.07 | 0.27 | 1.1 | 2 | 0.97 | 1.1 | NA | 
| intui | two_diagnosis | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| intui | two_diagnosis | ```VAVG``` | ```BOX``` | 0.38 | 0.24 | 4.25 | 2 | 0.62 | 0.64 | NA | 
| intui | two_diagnosis | ```VAVG``` | ```LEX``` | 0.9 | 0.59 | 4.6 | 5 | 0.88 | 1.1 | 0.24 | 
| intui | two_diagnosis | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| intui | two_diagnosis | ```SAVG``` | | 1.01 | 0.44 | 7.01 | 10 | 0.76 | 1.05 | 0.32 | 
| portrait | threeToTwo | ```NAIVE_QT``` | | 0.06 | 0.14 | 0.87 | 2 | 0.92 | 0.51 | NA | 
| portrait | threeToTwo | ```SDST``` | ```BOX``` | 0.59 | 1.04 | 4.25 | 3 | 0.95 | 1.91 | 0.7 | 
| portrait | threeToTwo | ```SDST``` | ```LEX``` | 1.07 | 1.31 | 4.38 | 3 | 0.96 | 1.96 | 0.72 | 
| portrait | threeToTwo | ```SDST``` | ```PAR``` | 1.45 | NA | 1.45 | NA | NA | NA | NA | 
| portrait | threeToTwo | ```VDST``` | ```BOX``` | 1.05 | 0.46 | 3.72 | 2 | 0.41 | 1.44 | NA | 
| portrait | threeToTwo | ```VDST``` | ```LEX``` | 0.1 | 0.38 | 1.55 | 2 | 0.97 | 1.55 | NA | 
| portrait | threeToTwo | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| portrait | threeToTwo | ```VAVG``` | ```BOX``` | 1.11 | 0.66 | 10.55 | 6 | 0.63 | 1.35 | 0.44 | 
| portrait | threeToTwo | ```VAVG``` | ```LEX``` | 1.42 | 1.14 | 6.17 | 2 | 0.87 | 2.44 | NA | 
| portrait | threeToTwo | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| portrait | threeToTwo | ```SAVG``` | | 1.66 | 1.02 | 9.83 | 6 | 0.83 | 1.68 | 0.59 | 
| heater | highTemperature | ```NAIVE_QT``` | | 0.0 | 0.0 | 0.02 | 2 | 0.91 | 0.01 | NA | 
| heater | highTemperature | ```SDST``` | ```BOX``` | 0.01 | 0.03 | 0.12 | 2 | 0.93 | 0.12 | NA | 
| heater | highTemperature | ```SDST``` | ```LEX``` | 0.01 | 0.03 | 0.12 | 2 | 0.95 | 0.12 | NA | 
| heater | highTemperature | ```SDST``` | ```PAR``` | 0.07 | 0.05 | 0.16 | 3 | 0.88 | 0.09 | 0.04 | 
| heater | highTemperature | ```VDST``` | ```BOX``` | 0.04 | 0.06 | 0.16 | 2 | 0.96 | 0.13 | NA | 
| heater | highTemperature | ```VDST``` | ```LEX``` | 0.01 | 0.03 | 0.12 | 2 | 0.92 | 0.12 | NA | 
| heater | highTemperature | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| heater | highTemperature | ```VAVG``` | ```BOX``` | 0.06 | 0.05 | 0.16 | 3 | 0.86 | 0.08 | 0.04 | 
| heater | highTemperature | ```VAVG``` | ```LEX``` | 0.07 | 0.07 | 0.16 | 2 | 0.96 | 0.14 | NA | 
| heater | highTemperature | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| heater | highTemperature | ```SAVG``` | | 0.07 | 0.07 | 0.16 | 2 | 0.95 | 0.14 | NA | 
| heater | lowHumidityExtends | ```NAIVE_QT``` | | NA | NA | 0 | NA | NA | NA | NA | 
| heater | lowHumidityExtends | ```SDST``` | ```BOX``` | NA | NA | 0 | NA | NA | NA | NA | 
| heater | lowHumidityExtends | ```SDST``` | ```LEX``` | NA | NA | 0 | NA | NA | NA | NA | 
| heater | lowHumidityExtends | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| heater | lowHumidityExtends | ```VDST``` | ```BOX``` | NA | NA | 0 | NA | NA | NA | NA | 
| heater | lowHumidityExtends | ```VDST``` | ```LEX``` | NA | NA | 0 | NA | NA | NA | NA | 
| heater | lowHumidityExtends | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| heater | lowHumidityExtends | ```VAVG``` | ```BOX``` | NA | NA | 0 | NA | NA | NA | NA | 
| heater | lowHumidityExtends | ```VAVG``` | ```LEX``` | NA | NA | 0 | NA | NA | NA | NA | 
| heater | lowHumidityExtends | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| heater | lowHumidityExtends | ```SAVG``` | | NA | NA | 0 | NA | NA | NA | NA | 
| tip | findGenerousTip | ```NAIVE_QT``` | | 0.01 | 0.03 | 0.16 | 2 | 0.89 | 0.1 | NA | 
| tip | findGenerousTip | ```SDST``` | ```BOX``` | NA | NA | 0 | NA | NA | NA | NA | 
| tip | findGenerousTip | ```SDST``` | ```LEX``` | NA | NA | 0 | NA | NA | NA | NA | 
| tip | findGenerousTip | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| tip | findGenerousTip | ```VDST``` | ```BOX``` | NA | NA | 0 | NA | NA | NA | NA | 
| tip | findGenerousTip | ```VDST``` | ```LEX``` | NA | NA | 0 | NA | NA | NA | NA | 
| tip | findGenerousTip | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| tip | findGenerousTip | ```VAVG``` | ```BOX``` | 0.78 | 0.53 | 1.26 | 2 | 0.57 | 1.08 | NA | 
| tip | findGenerousTip | ```VAVG``` | ```LEX``` | 0.82 | 0.43 | 1.4 | 2 | 0.46 | 1.05 | NA | 
| tip | findGenerousTip | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| tip | findGenerousTip | ```SAVG``` | | NA | NA | 0 | NA | NA | NA | NA | 
| tip | wasItGoodService | ```NAIVE_QT``` | | 0.0 | 0.0 | 0.0 | 2 | 0.97 | 0.0 | NA | 
| tip | wasItGoodService | ```SDST``` | ```BOX``` | 0.71 | NA | 0.71 | NA | NA | NA | NA | 
| tip | wasItGoodService | ```SDST``` | ```LEX``` | 0.26 | 0.34 | 0.74 | 3 | 0.83 | 0.49 | 0.4 | 
| tip | wasItGoodService | ```SDST``` | ```PAR``` | 0.71 | NA | 0.71 | NA | NA | NA | NA | 
| tip | wasItGoodService | ```VDST``` | ```BOX``` | NA | NA | 0 | NA | NA | NA | NA | 
| tip | wasItGoodService | ```VDST``` | ```LEX``` | NA | NA | 0 | NA | NA | NA | NA | 
| tip | wasItGoodService | ```VDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| tip | wasItGoodService | ```VAVG``` | ```BOX``` | 0.72 | NA | 0.72 | NA | NA | NA | NA | 
| tip | wasItGoodService | ```VAVG``` | ```LEX``` | 0.73 | NA | 0.73 | NA | NA | NA | NA | 
| tip | wasItGoodService | ```SDST``` | ```PAR``` | NA | NA | 0 | NA | NA | NA | NA | 
| tip | wasItGoodService | ```SAVG``` | | 0.62 | 0.42 | 2.16 | 3 | 0.8 | 0.99 | 0.21 | 

