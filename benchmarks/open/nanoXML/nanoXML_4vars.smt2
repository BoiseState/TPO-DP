; nanoXML_4vars.smt2
(set-option :auto-config false) ; disable automatic self configuration
(set-option :mbqi false) ; disable model-based quantifier instantiation 
; use logic of UF
(set-logic UF)
; domain type
(declare-sort Element)
;declaring relation
(declare-fun le (Element Element) Bool)
(declare-const x0 Element)
(declare-const x1 Element)
(declare-const x2 Element)
(declare-const x3 Element)
(declare-const java.lang.Object Element)
(declare-const JXML2SQL Element)
(declare-const net.n3.nanoxml.IXMLParser Element)
(declare-const net.n3.nanoxml.IXMLReader Element)
(declare-const net.sourceforge.jxml2sql.database.DatabaseElement Element)
(declare-const net.n3.nanoxml.IXMLBuilder Element)
(declare-const net.n3.nanoxml.IXMLValidator Element)
(declare-const net.sourceforge.jxml2sql.output.Output Element)
(declare-const java.lang.Class Element)
(declare-const java.io.PrintStream Element)
(declare-const java.io.Reader Element)
(declare-const java.util.Vector Element)
(declare-const java.util.Hashtable Element)
(declare-const java.util.StringTokenizer Element)
(declare-const java.text.DateFormat Element)
(declare-const java.lang.StringBuilder Element)
(declare-const java.lang.StringBuffer Element)
(declare-const java.net.URL Element)
(declare-const java.lang.String Element)
(declare-const java.io.File Element)
(declare-const net.n3.nanoxml.XMLElement Element)
(declare-const net.n3.nanoxml.StdXMLParser Element)
(declare-const net.n3.nanoxml.StdXMLReader Element)
(declare-const net.sourceforge.jxml2sql.database.Database Element)
(declare-const net.sourceforge.jxml2sql.database.DatabaseTable Element)
(declare-const net.sourceforge.jxml2sql.database.DatabaseField Element)
(declare-const net.n3.nanoxml.StdXMLBuilder Element)
(declare-const net.n3.nanoxml.NonValidator Element)
(declare-const net.sourceforge.jxml2sql.output.SQLOutput Element)
(declare-const net.sourceforge.jxml2sql.output.HTMLOutput Element)
(declare-const java.io.InputStreamReader Element)
(declare-const java.io.StringReader Element)
(declare-const net.n3.nanoxml.StdXMLParser_currencysign_ContentReader Element)
(declare-const java.io.CharArrayReader Element)
(declare-const java.io.BufferedReader Element)
(declare-const java.io.FilterReader Element)
(declare-const java.util.Stack Element)
(declare-const java.util.Properties Element)
(declare-const java.io.FileReader Element)
(declare-const java.io.LineNumberReader Element)
(declare-const java.io.PushbackReader Element)
;assert that elements of the hierarchy are distinct
(assert (distinct java.lang.Object JXML2SQL net.n3.nanoxml.IXMLParser net.n3.nanoxml.IXMLReader net.sourceforge.jxml2sql.database.DatabaseElement net.n3.nanoxml.IXMLBuilder net.n3.nanoxml.IXMLValidator net.sourceforge.jxml2sql.output.Output java.lang.Class java.io.PrintStream java.io.Reader java.util.Vector java.util.Hashtable java.util.StringTokenizer java.text.DateFormat java.lang.StringBuilder java.lang.StringBuffer java.net.URL java.lang.String java.io.File net.n3.nanoxml.XMLElement net.n3.nanoxml.StdXMLParser net.n3.nanoxml.StdXMLReader net.sourceforge.jxml2sql.database.Database net.sourceforge.jxml2sql.database.DatabaseTable net.sourceforge.jxml2sql.database.DatabaseField net.n3.nanoxml.StdXMLBuilder net.n3.nanoxml.NonValidator net.sourceforge.jxml2sql.output.SQLOutput net.sourceforge.jxml2sql.output.HTMLOutput java.io.InputStreamReader java.io.StringReader net.n3.nanoxml.StdXMLParser_currencysign_ContentReader java.io.CharArrayReader java.io.BufferedReader java.io.FilterReader java.util.Stack java.util.Properties java.io.FileReader java.io.LineNumberReader java.io.PushbackReader))
; reflexive
(assert (forall ((x Element)) (! (le x x) :pattern (le x x) )))
; antisymmetric
(assert (forall ((x Element) (y Element)) (! (=> (and (le x y) (le y x)) (= x y)) :pattern (le x y))))
; transitive
(assert (forall ((x Element) (y Element) (z Element)) (! (=> (and (le x y ) ( le y z)) (le x z)) :pattern ((le x y) (le y z)) )))
; single root element
(assert (forall ((x Element)) ( ! (le x java.lang.Object) :pattern (le x java.lang.Object))))
;base constraints
(assert (and
	 (le java.io.InputStreamReader java.io.Reader)
	 (le java.util.Stack java.util.Vector)
	 (le java.util.Properties java.util.Hashtable)
	 (le java.io.FileReader java.io.InputStreamReader)
	 (le java.io.StringReader java.io.Reader)
	 (le net.sourceforge.jxml2sql.database.Database net.sourceforge.jxml2sql.database.DatabaseElement)
	 (le net.sourceforge.jxml2sql.database.DatabaseTable net.sourceforge.jxml2sql.database.DatabaseElement)
	 (le net.sourceforge.jxml2sql.output.SQLOutput net.sourceforge.jxml2sql.output.Output)
	 (le net.sourceforge.jxml2sql.output.HTMLOutput net.sourceforge.jxml2sql.output.Output)
	 (le net.n3.nanoxml.StdXMLReader net.n3.nanoxml.IXMLReader)
	 (le net.sourceforge.jxml2sql.database.DatabaseField net.sourceforge.jxml2sql.database.DatabaseElement)
	 (le java.io.PushbackReader java.io.FilterReader)
	 (le java.io.LineNumberReader java.io.BufferedReader)
	 (le net.n3.nanoxml.StdXMLBuilder net.n3.nanoxml.IXMLBuilder)
	 (le net.n3.nanoxml.StdXMLParser net.n3.nanoxml.IXMLParser)
	 (le net.n3.nanoxml.StdXMLParser_currencysign_ContentReader java.io.Reader)
	 (le java.io.CharArrayReader java.io.Reader)
	 (le net.n3.nanoxml.NonValidator net.n3.nanoxml.IXMLValidator)
	 (le java.io.BufferedReader java.io.Reader)
	 (le java.io.FilterReader java.io.Reader)
	 (not (= x0 java.io.Reader))
	 (not (= x1 java.io.Reader))
	 (not (= x2 java.io.Reader))
	 (not (= x3 java.io.Reader))
	 (not (= x0 java.text.DateFormat))
	 (not (= x1 java.text.DateFormat))
	 (not (= x2 java.text.DateFormat))
	 (not (= x3 java.text.DateFormat))
	 (not (= x0 net.n3.nanoxml.IXMLParser))
	 (not (= x1 net.n3.nanoxml.IXMLParser))
	 (not (= x2 net.n3.nanoxml.IXMLParser))
	 (not (= x3 net.n3.nanoxml.IXMLParser))
	 (not (= x0 net.sourceforge.jxml2sql.output.Output))
	 (not (= x1 net.sourceforge.jxml2sql.output.Output))
	 (not (= x2 net.sourceforge.jxml2sql.output.Output))
	 (not (= x3 net.sourceforge.jxml2sql.output.Output))
	 (not (= x0 net.n3.nanoxml.IXMLReader))
	 (not (= x1 net.n3.nanoxml.IXMLReader))
	 (not (= x2 net.n3.nanoxml.IXMLReader))
	 (not (= x3 net.n3.nanoxml.IXMLReader))
	 (not (= x0 net.n3.nanoxml.IXMLBuilder))
	 (not (= x1 net.n3.nanoxml.IXMLBuilder))
	 (not (= x2 net.n3.nanoxml.IXMLBuilder))
	 (not (= x3 net.n3.nanoxml.IXMLBuilder))
	 (not (= x0 net.n3.nanoxml.IXMLValidator))
	 (not (= x1 net.n3.nanoxml.IXMLValidator))
	 (not (= x2 net.n3.nanoxml.IXMLValidator))
	 (not (= x3 net.n3.nanoxml.IXMLValidator))
	 (not (= x0 java.io.FilterReader))
	 (not (= x1 java.io.FilterReader))
	 (not (= x2 java.io.FilterReader))
	 (not (= x3 java.io.FilterReader))
	 (not (le java.net.URL JXML2SQL))
	 (not (le java.net.URL net.n3.nanoxml.IXMLParser))
	 (not (le java.net.URL net.n3.nanoxml.IXMLReader))
	 (not (le java.net.URL net.sourceforge.jxml2sql.database.DatabaseElement))
	 (not (le java.net.URL net.n3.nanoxml.IXMLBuilder))
	 (not (le java.net.URL net.n3.nanoxml.IXMLValidator))
	 (not (le java.net.URL net.sourceforge.jxml2sql.output.Output))
	 (not (le java.net.URL java.lang.Class))
	 (not (le java.net.URL java.io.PrintStream))
	 (not (le java.net.URL java.io.Reader))
	 (not (le java.net.URL java.util.Vector))
	 (not (le java.net.URL java.util.Hashtable))
	 (not (le java.net.URL java.util.StringTokenizer))
	 (not (le java.net.URL java.text.DateFormat))
	 (not (le java.net.URL java.lang.StringBuilder))
	 (not (le java.net.URL java.lang.StringBuffer))
	 (not (le java.net.URL java.lang.String))
	 (not (le java.net.URL java.io.File))
	 (not (le java.net.URL net.n3.nanoxml.XMLElement))
	 (not (le java.lang.Class JXML2SQL))
	 (not (le java.lang.Class net.n3.nanoxml.IXMLParser))
	 (not (le java.lang.Class net.n3.nanoxml.IXMLReader))
	 (not (le java.lang.Class net.sourceforge.jxml2sql.database.DatabaseElement))
	 (not (le java.lang.Class net.n3.nanoxml.IXMLBuilder))
	 (not (le java.lang.Class net.n3.nanoxml.IXMLValidator))
	 (not (le java.lang.Class net.sourceforge.jxml2sql.output.Output))
	 (not (le java.lang.Class java.io.PrintStream))
	 (not (le java.lang.Class java.io.Reader))
	 (not (le java.lang.Class java.util.Vector))
	 (not (le java.lang.Class java.util.Hashtable))
	 (not (le java.lang.Class java.util.StringTokenizer))
	 (not (le java.lang.Class java.text.DateFormat))
	 (not (le java.lang.Class java.lang.StringBuilder))
	 (not (le java.lang.Class java.lang.StringBuffer))
	 (not (le java.lang.Class java.net.URL))
	 (not (le java.lang.Class java.lang.String))
	 (not (le java.lang.Class java.io.File))
	 (not (le java.lang.Class net.n3.nanoxml.XMLElement))
	 (not (le java.lang.StringBuilder JXML2SQL))
	 (not (le java.lang.StringBuilder net.n3.nanoxml.IXMLParser))
	 (not (le java.lang.StringBuilder net.n3.nanoxml.IXMLReader))
	 (not (le java.lang.StringBuilder net.sourceforge.jxml2sql.database.DatabaseElement))
	 (not (le java.lang.StringBuilder net.n3.nanoxml.IXMLBuilder))
	 (not (le java.lang.StringBuilder net.n3.nanoxml.IXMLValidator))
	 (not (le java.lang.StringBuilder net.sourceforge.jxml2sql.output.Output))
	 (not (le java.lang.StringBuilder java.lang.Class))
	 (not (le java.lang.StringBuilder java.io.PrintStream))
	 (not (le java.lang.StringBuilder java.io.Reader))
	 (not (le java.lang.StringBuilder java.util.Vector))
	 (not (le java.lang.StringBuilder java.util.Hashtable))
	 (not (le java.lang.StringBuilder java.util.StringTokenizer))
	 (not (le java.lang.StringBuilder java.text.DateFormat))
	 (not (le java.lang.StringBuilder java.lang.StringBuffer))
	 (not (le java.lang.StringBuilder java.net.URL))
	 (not (le java.lang.StringBuilder java.lang.String))
	 (not (le java.lang.StringBuilder java.io.File))
	 (not (le java.lang.StringBuilder net.n3.nanoxml.XMLElement))
	 (not (le java.lang.StringBuffer JXML2SQL))
	 (not (le java.lang.StringBuffer net.n3.nanoxml.IXMLParser))
	 (not (le java.lang.StringBuffer net.n3.nanoxml.IXMLReader))
	 (not (le java.lang.StringBuffer net.sourceforge.jxml2sql.database.DatabaseElement))
	 (not (le java.lang.StringBuffer net.n3.nanoxml.IXMLBuilder))
	 (not (le java.lang.StringBuffer net.n3.nanoxml.IXMLValidator))
	 (not (le java.lang.StringBuffer net.sourceforge.jxml2sql.output.Output))
	 (not (le java.lang.StringBuffer java.lang.Class))
	 (not (le java.lang.StringBuffer java.io.PrintStream))
	 (not (le java.lang.StringBuffer java.io.Reader))
	 (not (le java.lang.StringBuffer java.util.Vector))
	 (not (le java.lang.StringBuffer java.util.Hashtable))
	 (not (le java.lang.StringBuffer java.util.StringTokenizer))
	 (not (le java.lang.StringBuffer java.text.DateFormat))
	 (not (le java.lang.StringBuffer java.lang.StringBuilder))
	 (not (le java.lang.StringBuffer java.net.URL))
	 (not (le java.lang.StringBuffer java.lang.String))
	 (not (le java.lang.StringBuffer java.io.File))
	 (not (le java.lang.StringBuffer net.n3.nanoxml.XMLElement))
	 (not (le java.lang.String JXML2SQL))
	 (not (le java.lang.String net.n3.nanoxml.IXMLParser))
	 (not (le java.lang.String net.n3.nanoxml.IXMLReader))
	 (not (le java.lang.String net.sourceforge.jxml2sql.database.DatabaseElement))
	 (not (le java.lang.String net.n3.nanoxml.IXMLBuilder))
	 (not (le java.lang.String net.n3.nanoxml.IXMLValidator))
	 (not (le java.lang.String net.sourceforge.jxml2sql.output.Output))
	 (not (le java.lang.String java.lang.Class))
	 (not (le java.lang.String java.io.PrintStream))
	 (not (le java.lang.String java.io.Reader))
	 (not (le java.lang.String java.util.Vector))
	 (not (le java.lang.String java.util.Hashtable))
	 (not (le java.lang.String java.util.StringTokenizer))
	 (not (le java.lang.String java.text.DateFormat))
	 (not (le java.lang.String java.lang.StringBuilder))
	 (not (le java.lang.String java.lang.StringBuffer))
	 (not (le java.lang.String java.net.URL))
	 (not (le java.lang.String java.io.File))
	 (not (le java.lang.String net.n3.nanoxml.XMLElement))))