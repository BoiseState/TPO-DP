;symbolic execution tree
(push)
(assert (le x7 java.lang.Thread))
(check-sat)
(push)
(assert (le x6 java.lang.String))
(check-sat)
(push)
(assert (le x3 java.net.InetAddress))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.net.InetAddress)))
(check-sat)
(push)
(assert (le x3 java.net.InetAddress))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.net.InetAddress)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x7 java.lang.Thread))
(check-sat)
(push)
(assert (le x5 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x5 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (le x2 siena.AttributeValue))
(check-sat)
(push)
(assert (le x1 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.lang.String)))
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
(pop)
(push)
(assert (not (le x2 siena.AttributeValue)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x7 java.lang.Thread)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x6 java.lang.String)))
(check-sat)
(push)
(assert (le x3 siena.Event))
(check-sat)
(pop)
(push)
(assert (not (le x3 siena.Event)))
(check-sat)
(pop)
(push)
(assert (le x1 siena.Event))
(check-sat)
(pop)
(push)
(assert (not (le x1 siena.Event)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x5 siena.HierarchicalDispatcher))
(check-sat)
(push)
(assert (le x1 siena.AttributeValue))
(check-sat)
(push)
(assert (le x3 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (le x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x2 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x1 siena.AttributeValue)))
(check-sat)
(pop)
(push)
(assert (le x5 siena.HierarchicalDispatcher))
(check-sat)
(pop)
(push)
(assert (not (le x5 siena.HierarchicalDispatcher)))
(check-sat)
(pop)
(push)
(assert (le x1 siena.HierarchicalDispatcher))
(check-sat)
(push)
(assert (le x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x2 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (le x0 siena.Tokenizer))
(check-sat)
(pop)
(push)
(assert (not (le x0 siena.Tokenizer)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x1 siena.HierarchicalDispatcher)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x5 siena.HierarchicalDispatcher)))
(check-sat)
(pop)
(push)
(assert (le x0 siena.Filter))
(check-sat)
(pop)
(push)
(assert (not (le x0 siena.Filter)))
(check-sat)
(push)
(assert (le x5 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x5 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (le x4 siena.Tokenizer))
(check-sat)
(push)
(assert (le x3 java.util.AbstractMap))
(check-sat)
(pop)
(push)
(assert (le x3 java.lang.Double))
(check-sat)
(pop)
(push)
(assert (le x3 java.lang.Long))
(check-sat)
(pop)
(push)
(assert (not (le x3 siena.Subscriber)))
(check-sat)
(push)
(assert (le x3 java.lang.Object))
(check-sat)
(push)
(assert (not (le x3 siena.AttributeValue)))
(check-sat)
(push)
(assert (not (le x3 java.io.File)))
(check-sat)
(push)
(assert (not (le x3 java.lang.String)))
(check-sat)
(push)
(assert (not (le x3 siena.AttributeConstraint)))
(check-sat)
(push)
(assert (not (le x3 java.net.InetAddress)))
(check-sat)
(push)
(assert (not (le x3 java.util.AbstractMap)))
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
(assert (le x3 siena.AttributeConstraint))
(check-sat)
(pop)
(push)
(assert (le x3 java.lang.String))
(check-sat)
(pop)
(push)
(assert (le x3 java.util.AbstractSet))
(check-sat)
(pop)
(push)
(assert (le x3 java.io.File))
(check-sat)
(pop)
(push)
(assert (le x3 siena.AttributeValue))
(check-sat)
(pop)
(push)
(assert (le x3 siena.Subscriber))
(check-sat)
(pop)
(push)
(assert (le x3 java.lang.Integer))
(check-sat)
(pop)
(push)
(assert (le x3 java.util.AbstractList))
(check-sat)
(pop)
(push)
(assert (le x3 java.net.InetAddress))
(check-sat)
(pop)
(push)
(assert (le x3 java.lang.Byte))
(check-sat)
(pop)
(push)
(assert (le x7 java.lang.Thread))
(check-sat)
(pop)
(push)
(assert (not (le x7 java.lang.Thread)))
(check-sat)
(pop)
(push)
(assert (le x7 java.lang.Thread))
(check-sat)
(pop)
(push)
(assert (not (le x7 java.lang.Thread)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x4 siena.Tokenizer)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x4 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x4 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (le x2 java.util.Set))
(check-sat)
(pop)
(push)
(assert (not (le x2 java.util.Set)))
(check-sat)
(push)
(assert (le x3 siena.Tokenizer))
(check-sat)
(push)
(assert (le x6 java.lang.StringBuilder))
(check-sat)
(pop)
(push)
(assert (not (le x6 java.lang.StringBuilder)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x3 siena.Tokenizer)))
(check-sat)
(pop)
(push)
(assert (le x3 siena.Event))
(check-sat)
(push)
(assert (le x2 java.util.Set))
(check-sat)
(pop)
(push)
(assert (not (le x2 java.util.Set)))
(check-sat)
(push)
(assert (le x4 java.lang.StringBuilder))
(check-sat)
(pop)
(push)
(assert (not (le x4 java.lang.StringBuilder)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (not (le x3 siena.Event)))
(check-sat)
(push)
(assert (le x7 java.lang.Thread))
(check-sat)
(pop)
(push)
(assert (not (le x7 java.lang.Thread)))
(check-sat)
(pop)
(push)
(assert (le x4 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x4 java.lang.String)))
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
(assert (le x3 siena.Event))
(check-sat)
(pop)
(push)
(assert (not (le x3 siena.Event)))
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
(pop)
(push)
(assert (le x1 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (le x1 siena.Tokenizer))
(check-sat)
(pop)
(push)
(assert (not (le x1 siena.Tokenizer)))
(check-sat)
(push)
(assert (le x7 java.lang.Thread))
(check-sat)
(pop)
(push)
(assert (not (le x7 java.lang.Thread)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x3 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.lang.String)))
(check-sat)
(push)
(assert (le x6 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x6 java.lang.String)))
(check-sat)
(push)
(assert (le x1 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (le x4 siena.ByteBuf))
(check-sat)
(pop)
(push)
(assert (not (le x4 siena.ByteBuf)))
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
(pop)
(push)
(assert (le x1 siena.Tokenizer))
(check-sat)
(push)
(assert (le x0 siena.Tokenizer))
(check-sat)
(pop)
(push)
(assert (not (le x0 siena.Tokenizer)))
(check-sat)
(pop)
(push)
(assert (le x7 java.lang.Thread))
(check-sat)
(push)
(assert (le x0 java.lang.String))
(check-sat)
(push)
(assert (le x1 siena.Tokenizer))
(check-sat)
(pop)
(push)
(assert (not (le x1 siena.Tokenizer)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x0 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (le x4 siena.Event))
(check-sat)
(pop)
(push)
(assert (not (le x4 siena.Event)))
(check-sat)
(pop)
(push)
(assert (le x0 java.lang.Long))
(check-sat)
(pop)
(push)
(assert (le x0 java.lang.Integer))
(check-sat)
(push)
(assert (le x5 siena.AttributeConstraint))
(check-sat)
(pop)
(push)
(assert (not (le x5 siena.AttributeConstraint)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x0 java.lang.String))
(check-sat)
(pop)
(push)
(assert (le x0 java.lang.Byte))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.io.File)))
(check-sat)
(push)
(assert (not (le x0 java.lang.String)))
(check-sat)
(push)
(assert (not (le x0 siena.Subscriber)))
(check-sat)
(push)
(assert (not (le x0 java.net.InetAddress)))
(check-sat)
(push)
(assert (not (le x0 java.util.AbstractMap)))
(check-sat)
(push)
(assert (not (le x0 siena.AttributeConstraint)))
(check-sat)
(push)
(assert (not (le x0 siena.AttributeValue)))
(check-sat)
(push)
(assert (le x0 java.lang.Object))
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
(assert (le x0 siena.AttributeValue))
(check-sat)
(pop)
(push)
(assert (le x0 siena.AttributeConstraint))
(check-sat)
(pop)
(push)
(assert (le x0 java.util.AbstractMap))
(check-sat)
(pop)
(push)
(assert (le x0 java.util.AbstractList))
(check-sat)
(pop)
(push)
(assert (le x0 java.util.AbstractSet))
(check-sat)
(pop)
(push)
(assert (le x0 java.net.InetAddress))
(check-sat)
(pop)
(push)
(assert (le x0 siena.Subscriber))
(check-sat)
(pop)
(push)
(assert (le x0 java.lang.Double))
(check-sat)
(pop)
(push)
(assert (le x0 java.io.File))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x7 java.lang.Thread)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x1 siena.Tokenizer)))
(check-sat)
(pop)
(push)
(assert (le x1 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (le x6 java.lang.String))
(check-sat)
(push)
(assert (le x7 java.lang.Thread))
(check-sat)
(pop)
(push)
(assert (not (le x7 java.lang.Thread)))
(check-sat)
(pop)
(push)
(assert (le x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x2 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x6 java.lang.String)))
(check-sat)
(push)
(assert (le x6 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x6 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x4 siena.HierarchicalDispatcher))
(check-sat)
(pop)
(push)
(assert (not (le x4 siena.HierarchicalDispatcher)))
(check-sat)
(push)
(assert (le x0 siena.AttributeValue))
(check-sat)
(pop)
(push)
(assert (not (le x0 siena.AttributeValue)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (not (le x7 java.lang.Thread)))
(check-sat)
(pop)
