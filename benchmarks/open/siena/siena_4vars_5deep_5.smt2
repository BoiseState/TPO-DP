;symbolic execution tree
(push)
(assert (le x0 java.lang.Object))
(check-sat)
(push)
(assert (le x1 java.lang.Object))
(check-sat)
(push)
(assert (le x2 java.lang.Object))
(check-sat)
(push)
(assert (le x3 java.lang.Object))
(check-sat)
(push)
(assert (le x3 java.util.Set))
(check-sat)
(push)
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (le x1 siena.Tokenizer))
(check-sat)
(pop)
(push)
(assert (not (le x1 siena.Tokenizer)))
(check-sat)
(pop)
(push)
(assert (= x1 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x1 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (le x3 java.util.Set))
(check-sat)
(push)
(assert (= x1 java.lang.StringBuilder))
(check-sat)
(pop)
(push)
(assert (not (= x1 java.lang.StringBuilder)))
(check-sat)
(pop)
(push)
(assert (le x0 siena.Event))
(check-sat)
(pop)
(push)
(assert (not (le x0 siena.Event)))
(check-sat)
(pop)
(push)
(assert (le x3 java.util.Set))
(check-sat)
(push)
(assert (le x0 siena.ByteBuf))
(check-sat)
(pop)
(push)
(assert (not (le x0 siena.ByteBuf)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x3 java.util.Set)))
(check-sat)
(pop)
(push)
(assert (le x1 siena.AttributeValue))
(check-sat)
(pop)
(push)
(assert (not (le x1 siena.AttributeValue)))
(check-sat)
(pop)
(push)
(assert (le x3 java.util.Set))
(check-sat)
(push)
(assert (= x1 java.lang.Integer))
(check-sat)
(pop)
(push)
(assert (le x1 java.net.InetAddress))
(check-sat)
(pop)
(push)
(assert (le x1 java.util.AbstractMap))
(check-sat)
(pop)
(push)
(assert (le x1 siena.AttributeValue))
(check-sat)
(push)
(assert (le x3 java.util.Set))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.util.Set)))
(check-sat)
(pop)
(pop)
(push)
(assert (= x1 java.lang.Double))
(check-sat)
(pop)
(push)
(assert (= x1 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.io.File)))
(check-sat)
(push)
(assert (not (= x1 java.lang.String)))
(check-sat)
(push)
(assert (not (le x1 siena.AttributeValue)))
(check-sat)
(push)
(assert (not (le x1 siena.AttributeConstraint)))
(check-sat)
(push)
(assert (le x1 java.lang.Object))
(check-sat)
(push)
(assert (not (le x1 java.util.AbstractMap)))
(check-sat)
(push)
(assert (not (le x1 java.net.InetAddress)))
(check-sat)
(push)
(assert (not (le x1 siena.Subscriber)))
(check-sat)
(pop)
(pop)
(pop)
(pop)
(pop)
(pop)
(pop)
(pop)
(push)
(assert (le x1 java.io.File))
(check-sat)
(pop)
(push)
(assert (= x1 java.lang.Byte))
(check-sat)
(push)
(assert (le x1 java.lang.Object))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.lang.Object)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x1 siena.Subscriber))
(check-sat)
(push)
(assert (le x1 java.lang.Object))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.lang.Object)))
(check-sat)
(pop)
(pop)
(push)
(assert (= x1 java.lang.Long))
(check-sat)
(pop)
(push)
(assert (le x1 siena.AttributeConstraint))
(check-sat)
(pop)
(push)
(assert (le x1 java.util.AbstractList))
(check-sat)
(pop)
(push)
(assert (le x1 java.util.AbstractSet))
(check-sat)
(push)
(assert (= x2 java.lang.StringBuilder))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.StringBuilder)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (not (le x3 java.util.Set)))
(check-sat)
(push)
(assert (le x1 java.lang.Throwable))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.lang.Throwable)))
(check-sat)
(push)
(assert (le x2 siena.Event))
(check-sat)
(pop)
(push)
(assert (not (le x2 siena.Event)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (le x2 siena.Event))
(check-sat)
(pop)
(push)
(assert (not (le x2 siena.Event)))
(check-sat)
(pop)
(push)
(assert (= x0 java.lang.StringBuilder))
(check-sat)
(push)
(assert (le x3 java.util.Set))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.util.Set)))
(check-sat)
(pop)
(push)
(assert (= x0 java.lang.StringBuilder))
(check-sat)
(pop)
(push)
(assert (not (= x0 java.lang.StringBuilder)))
(check-sat)
(pop)
(push)
(assert (= x0 java.lang.StringBuilder))
(check-sat)
(pop)
(push)
(assert (not (= x0 java.lang.StringBuilder)))
(check-sat)
(pop)
(push)
(assert (= x1 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x1 java.lang.String)))
(check-sat)
(push)
(assert (= x0 java.lang.StringBuilder))
(check-sat)
(pop)
(push)
(assert (not (= x0 java.lang.StringBuilder)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x3 java.util.Set))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.util.Set)))
(check-sat)
(pop)
(push)
(assert (le x2 java.util.Set))
(check-sat)
(pop)
(push)
(assert (not (le x2 java.util.Set)))
(check-sat)
(pop)
(push)
(assert (= x0 java.lang.StringBuilder))
(check-sat)
(push)
(assert (le x3 java.util.Set))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.util.Set)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (= x0 java.lang.StringBuilder)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (= x0 java.lang.StringBuilder)))
(check-sat)
(pop)
(push)
(assert (= x0 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x0 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (le x0 java.lang.Throwable))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.lang.Throwable)))
(check-sat)
(push)
(assert (= x1 java.lang.StringBuilder))
(check-sat)
(pop)
(push)
(assert (not (= x1 java.lang.StringBuilder)))
(check-sat)
(pop)
(push)
(assert (le x2 siena.ByteBuf))
(check-sat)
(pop)
(push)
(assert (not (le x2 siena.ByteBuf)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (not (le x3 java.util.Set)))
(check-sat)
(push)
(assert (= x2 java.lang.String))
(check-sat)
(push)
(assert (le x3 java.util.Set))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.util.Set)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x2 siena.AttributeConstraint))
(check-sat)
(push)
(assert (le x3 java.util.Set))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.util.Set)))
(check-sat)
(push)
(assert (le x2 siena.AttributeConstraint))
(check-sat)
(pop)
(push)
(assert (not (le x2 siena.AttributeConstraint)))
(check-sat)
(pop)
(push)
(assert (le x3 java.util.Set))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.util.Set)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (not (le x2 siena.AttributeConstraint)))
(check-sat)
(push)
(assert (le x2 siena.AttributeConstraint))
(check-sat)
(pop)
(push)
(assert (not (le x2 siena.AttributeConstraint)))
(check-sat)
(push)
(assert (le x2 siena.AttributeConstraint))
(check-sat)
(pop)
(push)
(assert (not (le x2 siena.AttributeConstraint)))
(check-sat)
(push)
(assert (le x3 java.util.Set))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.util.Set)))
(check-sat)
(pop)
(pop)
(pop)
(pop)
(push)
(assert (le x3 java.util.Set))
(check-sat)
(push)
(assert (le x1 java.util.Set))
(check-sat)
(push)
(assert (= x0 java.lang.StringBuilder))
(check-sat)
(pop)
(push)
(assert (not (= x0 java.lang.StringBuilder)))
(check-sat)
(pop)
(push)
(assert (le x2 java.util.Set))
(check-sat)
(pop)
(push)
(assert (not (le x2 java.util.Set)))
(check-sat)
(pop)
(push)
(assert (le x1 java.util.Set))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.Set)))
(check-sat)
(push)
(assert (le x2 java.lang.Throwable))
(check-sat)
(pop)
(push)
(assert (not (le x2 java.lang.Throwable)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x2 siena.Tokenizer))
(check-sat)
(push)
(assert (le x1 java.util.Set))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.Set)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x2 siena.Tokenizer)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x1 java.util.Set)))
(check-sat)
(pop)
(push)
(assert (le x3 java.util.Set))
(check-sat)
(push)
(assert (= x1 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x1 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x3 java.util.Set)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x3 java.util.Set)))
(check-sat)
(pop)
(push)
(assert (le x3 java.util.Set))
(check-sat)
(push)
(assert (le x0 siena.Event))
(check-sat)
(push)
(assert (le x3 java.util.Set))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.util.Set)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x0 siena.Event)))
(check-sat)
(push)
(assert (le x1 siena.ByteBuf))
(check-sat)
(pop)
(push)
(assert (not (le x1 siena.ByteBuf)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (not (le x3 java.util.Set)))
(check-sat)
(push)
(assert (le x0 siena.Poset))
(check-sat)
(push)
(assert (le x2 java.io.PrintStream))
(check-sat)
(pop)
(push)
(assert (not (le x2 java.io.PrintStream)))
(check-sat)
(pop)
(push)
(assert (le x0 siena.Poset))
(check-sat)
(push)
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (le x0 siena.Poset))
(check-sat)
(pop)
(push)
(assert (not (le x0 siena.Poset)))
(check-sat)
(pop)
(push)
(assert (le x0 siena.Poset))
(check-sat)
(pop)
(push)
(assert (not (le x0 siena.Poset)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x0 siena.Poset)))
(check-sat)
(pop)
(push)
(assert (le x3 java.util.Set))
(check-sat)
(push)
(assert (le x3 java.util.Set))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.util.Set)))
(check-sat)
(pop)
(push)
(assert (le x0 siena.Poset))
(check-sat)
(pop)
(push)
(assert (not (le x0 siena.Poset)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x3 java.util.Set)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x0 siena.Poset)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (not (le x3 java.util.Set)))
(check-sat)
(push)
(assert (le x1 java.util.Set))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.Set)))
(check-sat)
(pop)
(pop)