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
(assert (le x4 java.lang.Object))
(check-sat)
(push)
(assert (le x5 java.lang.Object))
(check-sat)
(push)
(assert (le x6 java.lang.Object))
(check-sat)
(push)
(assert (le x7 java.lang.Object))
(check-sat)
(push)
(assert (= x5 java.lang.String))
(check-sat)
(push)
(assert (le x3 siena.Tokenizer))
(check-sat)
(pop)
(push)
(assert (not (le x3 siena.Tokenizer)))
(check-sat)
(pop)
(push)
(assert (le x0 siena.AttributeConstraint))
(check-sat)
(push)
(assert (= x2 java.lang.StringBuilder))
(check-sat)
(push)
(assert (le x0 siena.AttributeConstraint))
(check-sat)
(pop)
(push)
(assert (not (le x0 siena.AttributeConstraint)))
(check-sat)
(pop)
(push)
(assert (= x5 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x5 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (= x2 java.lang.StringBuilder)))
(check-sat)
(push)
(assert (le x6 siena.ByteBuf))
(check-sat)
(push)
(assert (= x1 java.lang.StringBuilder))
(check-sat)
(pop)
(push)
(assert (not (= x1 java.lang.StringBuilder)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x6 siena.ByteBuf)))
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
(assert (= x4 java.lang.StringBuilder))
(check-sat)
(pop)
(push)
(assert (not (= x4 java.lang.StringBuilder)))
(check-sat)
(push)
(assert (= x5 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x5 java.lang.String)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (not (le x0 siena.AttributeConstraint)))
(check-sat)
(pop)
(push)
(assert (le x6 java.util.Set))
(check-sat)
(pop)
(push)
(assert (not (le x6 java.util.Set)))
(check-sat)
(pop)
(push)
(assert (= x0 java.lang.String))
(check-sat)
(push)
(assert (= x7 java.lang.String))
(check-sat)
(push)
(assert (le x2 siena.Filter))
(check-sat)
(push)
(assert (le x1 siena.Filter))
(check-sat)
(pop)
(push)
(assert (not (le x1 siena.Filter)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x2 siena.Filter)))
(check-sat)
(pop)
(push)
(assert (= x3 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x3 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (= x5 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x5 java.lang.String)))
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
(pop)
(push)
(assert (not (= x7 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (= x0 java.lang.String)))
(check-sat)
(push)
(assert (= x5 java.lang.String))
(check-sat)
(push)
(assert (le x7 java.io.PrintStream))
(check-sat)
(pop)
(push)
(assert (not (le x7 java.io.PrintStream)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (= x5 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (le x1 siena.Tokenizer))
(check-sat)
(push)
(assert (= x5 java.lang.String))
(check-sat)
(push)
(assert (le x3 siena.Filter))
(check-sat)
(pop)
(push)
(assert (not (le x3 siena.Filter)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (= x5 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (= x5 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x5 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x1 siena.Tokenizer)))
(check-sat)
(pop)
(push)
(assert (= x5 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x5 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (= x2 java.lang.StringBuilder))
(check-sat)
(push)
(assert (le x7 siena.AttributeValue))
(check-sat)
(pop)
(push)
(assert (not (le x7 siena.AttributeValue)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (= x2 java.lang.StringBuilder)))
(check-sat)
(pop)
(push)
(assert (le x2 siena.Tokenizer))
(check-sat)
(push)
(assert (= x5 java.lang.String))
(check-sat)
(push)
(assert (le x0 siena.Notifiable))
(check-sat)
(push)
(assert (le x2 siena.Tokenizer))
(check-sat)
(pop)
(push)
(assert (not (le x2 siena.Tokenizer)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x0 siena.Notifiable)))
(check-sat)
(pop)
(push)
(assert (le x2 siena.Tokenizer))
(check-sat)
(pop)
(push)
(assert (not (le x2 siena.Tokenizer)))
(check-sat)
(pop)
(push)
(assert (le x6 siena.Event))
(check-sat)
(push)
(assert (le x6 siena.Event))
(check-sat)
(pop)
(push)
(assert (not (le x6 siena.Event)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x6 siena.Event)))
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
(assert (= x3 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x3 java.lang.String)))
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
(pop)
(push)
(assert (not (= x5 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (= x7 java.lang.StringBuilder))
(check-sat)
(push)
(assert (le x2 siena.Tokenizer))
(check-sat)
(pop)
(push)
(assert (not (le x2 siena.Tokenizer)))
(check-sat)
(pop)
(push)
(assert (= x7 java.lang.StringBuilder))
(check-sat)
(pop)
(push)
(assert (not (= x7 java.lang.StringBuilder)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (= x7 java.lang.StringBuilder)))
(check-sat)
(push)
(assert (= x6 java.lang.StringBuilder))
(check-sat)
(pop)
(push)
(assert (not (= x6 java.lang.StringBuilder)))
(check-sat)
(pop)
(push)
(assert (= x4 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x4 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (le x4 siena.HierarchicalDispatcher))
(check-sat)
(pop)
(push)
(assert (not (le x4 siena.HierarchicalDispatcher)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x6 siena.AttributeValue))
(check-sat)
(pop)
(push)
(assert (not (le x6 siena.AttributeValue)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x2 siena.Tokenizer)))
(check-sat)
(pop)
(push)
(assert (= x6 java.lang.String))
(check-sat)
(push)
(assert (le x1 siena.ByteBuf))
(check-sat)
(pop)
(push)
(assert (not (le x1 siena.ByteBuf)))
(check-sat)
(push)
(assert (= x4 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x4 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x0 java.lang.Throwable))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.lang.Throwable)))
(check-sat)
(push)
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (not (= x6 java.lang.String)))
(check-sat)
(push)
(assert (le x7 java.util.Set))
(check-sat)
(pop)
(push)
(assert (not (le x7 java.util.Set)))
(check-sat)
(pop)
(push)
(assert (= x6 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x6 java.lang.String)))
(check-sat)
(push)
(assert (le x3 siena.Tokenizer))
(check-sat)
(push)
(assert (le x4 siena.Tokenizer))
(check-sat)
(pop)
(push)
(assert (not (le x4 siena.Tokenizer)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x3 siena.Tokenizer)))
(check-sat)
(push)
(assert (= x1 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x1 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (= x4 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x4 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (= x6 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x6 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x1 java.net.ServerSocket))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.net.ServerSocket)))
(check-sat)
(push)
(assert (= x6 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x6 java.lang.String)))
(check-sat)
(pop)
(pop)
(pop)
(pop)
(pop)
(push)
(assert (not (= x5 java.lang.String)))
(check-sat)
(push)
(assert (= x0 java.lang.Byte))
(check-sat)
(pop)
(push)
(assert (not (= x0 java.lang.Byte)))
(check-sat)
(pop)
(push)
(assert (= x7 java.lang.StringBuilder))
(check-sat)
(pop)
(push)
(assert (not (= x7 java.lang.StringBuilder)))
(check-sat)
(push)
(assert (= x6 java.lang.StringBuilder))
(check-sat)
(pop)
(push)
(assert (not (= x6 java.lang.StringBuilder)))
(check-sat)
(pop)
(push)
(assert (le x4 siena.HierarchicalDispatcher))
(check-sat)
(pop)
(push)
(assert (not (le x4 siena.HierarchicalDispatcher)))
(check-sat)
(pop)
(push)
(assert (= x7 java.lang.StringBuilder))
(check-sat)
(pop)
(push)
(assert (not (= x7 java.lang.StringBuilder)))
(check-sat)
(pop)
(push)
(assert (= x7 java.lang.StringBuilder))
(check-sat)
(pop)
(push)
(assert (not (= x7 java.lang.StringBuilder)))
(check-sat)
(pop)
(pop)
(push)
(assert (= x4 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x4 java.lang.String)))
(check-sat)
(push)
(assert (= x2 java.lang.String))
(check-sat)
(push)
(assert (= x0 java.lang.Byte))
(check-sat)
(pop)
(push)
(assert (not (= x0 java.lang.Byte)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
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
(assert (le x2 siena.AttributeValue))
(check-sat)
(pop)
(push)
(assert (not (le x2 siena.AttributeValue)))
(check-sat)
(pop)
(push)
(assert (= x4 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x4 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (le x1 siena.AttributeValue))
(check-sat)
(push)
(assert (= x0 java.lang.String))
(check-sat)
(push)
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (= x0 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x1 siena.AttributeValue)))
(check-sat)
(push)
(assert (= x5 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x5 java.lang.String)))
(check-sat)
(push)
(assert (= x7 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x7 java.lang.String)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (le x0 siena.Event))
(check-sat)
(push)
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x0 siena.Event)))
(check-sat)
(pop)
(pop)
(push)
(assert (= x3 java.lang.Integer))
(check-sat)
(push)
(assert (le x7 siena.Event))
(check-sat)
(pop)
(push)
(assert (not (le x7 siena.Event)))
(check-sat)
(push)
(assert (= x5 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x5 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x2 siena.AttributeValue))
(check-sat)
(pop)
(push)
(assert (not (le x2 siena.AttributeValue)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (= x3 java.lang.Integer)))
(check-sat)
(pop)
(push)
(assert (le x1 siena.AttributeValue))
(check-sat)
(push)
(assert (le x3 siena.Poset))
(check-sat)
(pop)
(push)
(assert (not (le x3 siena.Poset)))
(check-sat)
(pop)
(pop)
(push)
(assert (= x1 java.lang.Long))
(check-sat)
(pop)
(push)
(assert (= x1 java.lang.String))
(check-sat)
(pop)
(push)
(assert (le x1 siena.AttributeConstraint))
(check-sat)
(pop)
(push)
(assert (le x1 java.net.InetAddress))
(check-sat)
(push)
(assert (le x7 siena.AttributeConstraint))
(check-sat)
(pop)
(push)
(assert (not (le x7 siena.AttributeConstraint)))
(check-sat)
(pop)
(pop)
(push)
(assert (= x1 java.lang.Integer))
(check-sat)
(push)
(assert (= x5 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x5 java.lang.String)))
(check-sat)
(push)
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (= x5 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x5 java.lang.String)))
(check-sat)
(push)
(assert (= x4 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x4 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (= x7 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x7 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (= x7 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x7 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (le x0 siena.Filter))
(check-sat)
(pop)
(push)
(assert (not (le x0 siena.Filter)))
(check-sat)
(pop)
(pop)
(push)
(assert (= x1 java.lang.Byte))
(check-sat)
(pop)
(push)
(assert (le x1 java.util.AbstractMap))
(check-sat)
(push)
(assert (le x0 java.util.Set))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.util.Set)))
(check-sat)
(pop)
(push)
(assert (= x5 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x5 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (le x7 siena.Poset))
(check-sat)
(push)
(assert (= x3 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x3 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x7 siena.Poset)))
(check-sat)
(pop)
(push)
(assert (le x2 siena.Tokenizer))
(check-sat)
(pop)
(push)
(assert (not (le x2 siena.Tokenizer)))
(check-sat)
(push)
(assert (le x2 siena.Tokenizer))
(check-sat)
(pop)
(push)
(assert (not (le x2 siena.Tokenizer)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (le x1 java.util.AbstractList))
(check-sat)
(push)
(assert (le x0 java.util.Set))
(check-sat)
(push)
(assert (le x2 siena.Tokenizer))
(check-sat)
(pop)
(push)
(assert (not (le x2 siena.Tokenizer)))
(check-sat)
(push)
(assert (= x5 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x5 java.lang.String)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (not (le x0 java.util.Set)))
(check-sat)
(pop)
(push)
(assert (= x5 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x5 java.lang.String)))
(check-sat)
(push)
(assert (= x2 java.lang.Byte))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.Byte)))
(check-sat)
(pop)
(push)
(assert (= x7 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x7 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (le x6 java.util.Set))
(check-sat)
(pop)
(push)
(assert (not (le x6 java.util.Set)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x1 java.lang.Object))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.lang.Object)))
(check-sat)
(pop)
(push)
(assert (le x4 siena.AttributeValue))
(check-sat)
(pop)
(push)
(assert (not (le x4 siena.AttributeValue)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x1 java.io.File))
(check-sat)
(pop)
(push)
(assert (= x1 java.lang.Double))
(check-sat)
(pop)
(push)
(assert (not (le x1 siena.Subscriber)))
(check-sat)
(push)
(assert (not (le x1 java.net.InetAddress)))
(check-sat)
(push)
(assert (not (le x1 siena.AttributeConstraint)))
(check-sat)
(push)
(assert (not (= x1 java.lang.String)))
(check-sat)
(push)
(assert (le x1 java.lang.Object))
(check-sat)
(push)
(assert (not (le x1 java.io.File)))
(check-sat)
(push)
(assert (not (le x1 siena.AttributeValue)))
(check-sat)
(push)
(assert (not (le x1 java.util.AbstractMap)))
(check-sat)
(push)
(assert (le x3 siena.AttributeConstraint))
(check-sat)
(pop)
(push)
(assert (not (le x3 siena.AttributeConstraint)))
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
(assert (le x0 java.util.Set))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.util.Set)))
(check-sat)
(pop)
(pop)
(pop)
(pop)
(pop)
(pop)
(pop)
(pop)
(pop)
(push)
(assert (le x1 java.util.AbstractSet))
(check-sat)
(pop)
(push)
(assert (le x1 siena.Subscriber))
(check-sat)
(pop)
(push)
(assert (le x4 siena.AttributeValue))
(check-sat)
(pop)
(push)
(assert (not (le x4 siena.AttributeValue)))
(check-sat)
(pop)
(push)
(assert (le x3 siena.Tokenizer))
(check-sat)
(push)
(assert (le x0 siena.AttributeValue))
(check-sat)
(push)
(assert (= x6 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x6 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x0 siena.AttributeValue)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x3 siena.Tokenizer)))
(check-sat)
(push)
(assert (le x0 java.util.Set))
(check-sat)
(push)
(assert (le x7 siena.HierarchicalDispatcher))
(check-sat)
(push)
(assert (le x1 siena.Filter))
(check-sat)
(pop)
(push)
(assert (not (le x1 siena.Filter)))
(check-sat)
(pop)
(push)
(assert (le x0 java.util.Set))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.util.Set)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x7 siena.HierarchicalDispatcher)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x0 java.util.Set)))
(check-sat)
(push)
(assert (= x6 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x6 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x4 siena.Filter))
(check-sat)
(push)
(assert (le x3 siena.Tokenizer))
(check-sat)
(pop)
(push)
(assert (not (le x3 siena.Tokenizer)))
(check-sat)
(pop)
(push)
(assert (= x2 java.lang.String))
(check-sat)
(push)
(assert (le x7 siena.ByteBuf))
(check-sat)
(pop)
(push)
(assert (not (le x7 siena.ByteBuf)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (= x0 java.lang.String))
(check-sat)
(push)
(assert (le x6 siena.AttributeValue))
(check-sat)
(pop)
(push)
(assert (not (le x6 siena.AttributeValue)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (= x0 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x4 siena.Filter)))
(check-sat)
(pop)
(push)
(assert (= x0 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x0 java.lang.String)))
(check-sat)
(push)
(assert (= x4 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x4 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (= x5 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x5 java.lang.String)))
(check-sat)
(pop)
(pop)
(pop)
