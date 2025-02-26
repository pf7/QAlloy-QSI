sig Node {
        label : one Label,
        adj : set Node
}

sig Label {
        int Adj : set Label
}

int sig Count in Label{}

fact Counting {
        Count = Node ; label
        Adj = ~label ; adj ; label
}

run Count {} for 5 

assert Counting {
        Node = label.Count
        #~label;adj;label = #Adj
}

pred Forest {
        all n : Node | n not in n.^adj
        all n : Node | lone adj.n
}

fun Roots : set Label {
        (Node - Node.adj).label
}

run Forest for 5

assert ForestInDegree {
        Forest implies (all l : Label - Roots | #(l <: Count) -> l = #Adj :> l)
}

pred Connected {
        all n : Node | Node in n.(^adj + iden)
}

run Connected for 5

assert ConnectedInDegree {
        Connected and #Node > 1 ** Node implies Count in Label ; Adj  
}



