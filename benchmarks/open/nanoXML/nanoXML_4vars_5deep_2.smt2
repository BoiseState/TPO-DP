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
(assert (= x0 java.lang.String))
(check-sat)
(push)
(assert (le x1 java.util.Vector))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.Vector)))
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
(assert (= x2 java.lang.String))
(check-sat)
(push)
(assert (le x1 java.util.Properties))
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
(assert (not (le x1 java.util.Properties)))
(check-sat)
(pop)
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
(assert (= x3 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x3 java.lang.String)))
(check-sat)
(push)
(assert (= x0 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x0 java.lang.String)))
(check-sat)
(pop)
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
(assert (le x1 java.util.Properties))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.Properties)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x1 java.io.Reader))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.io.Reader)))
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
(pop)
(pop)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
(check-sat)
(push)
(assert (le x1 net.sourceforge.jxml2sql.output.Output))
(check-sat)
(pop)
(push)
(assert (not (le x1 net.sourceforge.jxml2sql.output.Output)))
(check-sat)
(pop)
(push)
(assert (= x3 java.lang.String))
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
(assert (not (= x3 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (= x1 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (= x1 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x3 java.util.Vector))
(check-sat)
(push)
(assert (= x1 java.lang.String))
(check-sat)
(push)
(assert (= x2 java.lang.StringBuffer))
(check-sat)
(push)
(assert (le x3 java.util.Vector))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.util.Vector)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (= x2 java.lang.StringBuffer)))
(check-sat)
(push)
(assert (= x2 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (not (= x1 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x3 java.util.Vector)))
(check-sat)
(push)
(assert (le x3 java.util.Vector))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.util.Vector)))
(check-sat)
(push)
(assert (le x3 java.util.Vector))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.util.Vector)))
(check-sat)
(push)
(assert (le x1 net.n3.nanoxml.XMLElement))
(check-sat)
(pop)
(push)
(assert (not (le x1 net.n3.nanoxml.XMLElement)))
(check-sat)
(pop)
(pop)
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
(assert (le x3 java.util.Vector))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.util.Vector)))
(check-sat)
(push)
(assert (le x1 java.util.Vector))
(check-sat)
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
(assert (not (le x1 java.util.Vector)))
(check-sat)
(pop)
(push)
(assert (le x1 net.n3.nanoxml.XMLElement))
(check-sat)
(pop)
(push)
(assert (not (le x1 net.n3.nanoxml.XMLElement)))
(check-sat)
(pop)
(push)
(assert (le x2 net.sourceforge.jxml2sql.database.DatabaseElement))
(check-sat)
(pop)
(push)
(assert (not (le x2 net.sourceforge.jxml2sql.database.DatabaseElement)))
(check-sat)
(pop)
(push)
(assert (le x3 java.util.Vector))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.util.Vector)))
(check-sat)
(pop)
(pop)
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
(push)
(assert (le x3 java.util.Vector))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.util.Vector)))
(check-sat)
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
(assert (= x2 java.lang.StringBuffer))
(check-sat)
(push)
(assert (= x1 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (= x1 java.lang.StringBuffer)))
(check-sat)
(push)
(assert (= x0 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (= x0 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (not (= x2 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
(check-sat)
(push)
(assert (= x3 java.lang.StringBuilder))
(check-sat)
(pop)
(push)
(assert (not (= x3 java.lang.StringBuilder)))
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
(assert (= x3 java.lang.String))
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
(assert (not (= x3 java.lang.String)))
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
(assert (le x2 java.util.Vector))
(check-sat)
(push)
(assert (= x1 java.lang.StringBuffer))
(check-sat)
(push)
(assert (le x2 java.util.Vector))
(check-sat)
(pop)
(push)
(assert (not (le x2 java.util.Vector)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (= x1 java.lang.StringBuffer)))
(check-sat)
(push)
(assert (= x3 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x3 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (= x1 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (= x1 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x1 java.io.Reader))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.io.Reader)))
(check-sat)
(pop)
(push)
(assert (= x0 java.lang.String))
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
(assert (not (= x0 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x2 java.util.Vector)))
(check-sat)
(push)
(assert (= x0 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x0 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (= x1 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (= x1 java.lang.StringBuffer)))
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
(assert (= x0 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x0 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (= x1 java.lang.StringBuffer))
(check-sat)
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
(assert (not (= x1 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (not (= x0 java.lang.String)))
(check-sat)
(push)
(assert (le x3 net.n3.nanoxml.XMLElement))
(check-sat)
(push)
(assert (le x3 net.n3.nanoxml.XMLElement))
(check-sat)
(push)
(assert (le x3 net.n3.nanoxml.XMLElement))
(check-sat)
(pop)
(push)
(assert (not (le x3 net.n3.nanoxml.XMLElement)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x3 net.n3.nanoxml.XMLElement)))
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
(assert (= x2 java.lang.String))
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
(assert (not (= x2 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (= x1 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (= x1 java.lang.StringBuffer)))
(check-sat)
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
(assert (= x1 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x1 java.lang.String)))
(check-sat)
(pop)
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
(assert (= x0 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x0 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
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
(assert (= x0 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x0 java.lang.String)))
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
(assert (le x3 net.n3.nanoxml.XMLElement))
(check-sat)
(pop)
(push)
(assert (not (le x3 net.n3.nanoxml.XMLElement)))
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
(pop)
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
(assert (= x0 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x0 java.lang.String)))
(check-sat)
(push)
(assert (= x0 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x0 java.lang.String)))
(check-sat)
(push)
(assert (le x2 java.util.Vector))
(check-sat)
(pop)
(push)
(assert (not (le x2 java.util.Vector)))
(check-sat)
(pop)
(pop)
(pop)
(pop)
(push)
(assert (not (le x3 net.n3.nanoxml.XMLElement)))
(check-sat)
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
(assert (le x2 java.util.Properties))
(check-sat)
(pop)
(push)
(assert (not (le x2 java.util.Properties)))
(check-sat)
(push)
(assert (le x2 java.util.Hashtable))
(check-sat)
(pop)
(push)
(assert (not (le x2 java.util.Hashtable)))
(check-sat)
(push)
(assert (= x0 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x0 java.lang.String)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (le x3 java.util.Properties))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.util.Properties)))
(check-sat)
(push)
(assert (le x2 java.util.Properties))
(check-sat)
(pop)
(push)
(assert (not (le x2 java.util.Properties)))
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
(assert (le x1 net.n3.nanoxml.XMLElement))
(check-sat)
(pop)
(push)
(assert (not (le x1 net.n3.nanoxml.XMLElement)))
(check-sat)
(pop)
(pop)
