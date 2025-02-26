one sig Coin {}

sig Client {}

sig Bank {
    int balance : Client -> Coin
}

sig Order {
    from, to : Client,
    int ammount : some Coin
} {
    from != to
}

pred Transfer[b,b" : Bank, o : Order] {
    o ; ammount in o.from ; (b ; balance)
    o.from ; (b" ; balance) = o.from ; (b ; balance) fun/sub o ; ammount
    o.to ; (b" ; balance) = o.to ; (b ; balance) fun/add o ; ammount
    all c : Client - o.(from+to) | c ; (b" ; balance) = c ; (b ; balance)
}

fact NonNegativity{
    balance >= 0 ** (Bank -> Client -> Coin)
    ammount >= 0 ** (Order -> Coin)
}

run tEx{ 
	some b, b' : Bank, o : Order | Transfer[b, b', o] 
	all o : Order | some b, b' : Bank | Transfer[b, b', o]
} for 4 but exactly 2 Bank

fact bounds{ 
    balance <= 1000000 ** (Bank -> Client -> Coin)
    ammount <= 1000000 ** (Order -> Coin)
}

