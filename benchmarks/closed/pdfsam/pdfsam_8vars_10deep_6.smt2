;symbolic execution tree
(push)
(assert (le x2 java.lang.StringBuffer))
(check-sat)
(push)
(assert (le x4 com.lowagie.text.pdf.ByteBuffer))
(check-sat)
(push)
(assert (le x0 com.lowagie.text.pdf.ByteBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x0 com.lowagie.text.pdf.ByteBuffer)))
(check-sat)
(pop)
(push)
(assert (le x4 com.lowagie.text.pdf.ByteBuffer))
(check-sat)
(push)
(assert (le x0 com.lowagie.text.pdf.PdfObject))
(check-sat)
(push)
(assert (le x0 com.lowagie.text.pdf.PdfObject))
(check-sat)
(push)
(assert (le x5 java.lang.StringBuffer))
(check-sat)
(push)
(assert (le x5 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x5 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x3 com.lowagie.text.pdf.ByteBuffer))
(check-sat)
(push)
(assert (le x3 com.lowagie.text.pdf.ByteBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x3 com.lowagie.text.pdf.ByteBuffer)))
(check-sat)
(pop)
(push)
(assert (le x2 java.lang.StringBuffer))
(check-sat)
(push)
(assert (le x1 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x6 com.lowagie.text.pdf.PdfObject))
(check-sat)
(pop)
(push)
(assert (not (le x6 com.lowagie.text.pdf.PdfObject)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x2 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x3 com.lowagie.text.pdf.ByteBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x5 java.lang.StringBuffer)))
(check-sat)
(push)
(assert (le x2 java.lang.StringBuffer))
(check-sat)
(push)
(assert (le x2 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x2 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x5 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x5 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x2 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x7 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x7 java.lang.StringBuffer)))
(check-sat)
(push)
(assert (le x5 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x5 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(pop)
(pop)
(push)
(assert (not (le x0 com.lowagie.text.pdf.PdfObject)))
(check-sat)
(pop)
(push)
(assert (le x0 com.lowagie.text.pdf.PdfObject))
(check-sat)
(push)
(assert (le x4 com.lowagie.text.pdf.ByteBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x4 com.lowagie.text.pdf.ByteBuffer)))
(check-sat)
(pop)
(push)
(assert (le x3 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x0 com.lowagie.text.pdf.PdfObject)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x0 com.lowagie.text.pdf.PdfObject)))
(check-sat)
(pop)
(push)
(assert (le x6 java.lang.Integer))
(check-sat)
(push)
(assert (le x4 com.lowagie.text.pdf.ByteBuffer))
(check-sat)
(push)
(assert (le x7 java.lang.StringBuffer))
(check-sat)
(push)
(assert (le x5 com.lowagie.text.pdf.ByteBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x5 com.lowagie.text.pdf.ByteBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x7 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x7 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x7 java.lang.String)))
(check-sat)
(push)
(assert (le x1 java.lang.Integer))
(check-sat)
(push)
(assert (le x2 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x2 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x1 java.lang.Integer)))
(check-sat)
(push)
(assert (le x1 java.lang.Integer))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.lang.Integer)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (le x3 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.lang.StringBuffer)))
(check-sat)
(push)
(assert (le x2 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x2 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x5 org.dom4j.tree.ContentListFacade))
(check-sat)
(pop)
(push)
(assert (le x5 org.dom4j.tree.BackedList))
(check-sat)
(pop)
(push)
(assert (le x5 java.util.AbstractList))
(check-sat)
(push)
(assert (not (le x5 java.util.ArrayList)))
(check-sat)
(push)
(assert (not (le x5 java.util.Vector)))
(check-sat)
(push)
(assert (not (le x5 org.dom4j.tree.ContentListFacade)))
(check-sat)
(push)
(assert (le x6 java.lang.Integer))
(check-sat)
(pop)
(push)
(assert (not (le x6 java.lang.Integer)))
(check-sat)
(pop)
(push)
(assert (le x3 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.lang.StringBuffer)))
(check-sat)
(push)
(assert (le x6 java.lang.Integer))
(check-sat)
(pop)
(push)
(assert (not (le x6 java.lang.Integer)))
(check-sat)
(pop)
(push)
(assert (le x0 com.lowagie.text.pdf.PdfObject))
(check-sat)
(pop)
(push)
(assert (not (le x0 com.lowagie.text.pdf.PdfObject)))
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
(pop)
(pop)
(pop)
(pop)
(pop)
(push)
(assert (le x5 java.util.Vector))
(check-sat)
(pop)
(push)
(assert (not (le x5 com.lowagie.text.Section)))
(check-sat)
(push)
(assert (not (le x5 com.lowagie.text.Phrase)))
(check-sat)
(push)
(assert (le x5 java.util.ArrayList))
(check-sat)
(push)
(assert (not (le x5 org.dom4j.tree.BackedList)))
(check-sat)
(pop)
(pop)
(pop)
(pop)
(push)
(assert (le x5 java.util.HashSet))
(check-sat)
(pop)
(push)
(assert (le x5 java.util.LinkedList))
(check-sat)
(pop)
(push)
(assert (le x5 com.lowagie.text.Cell))
(check-sat)
(pop)
(push)
(assert (le x5 com.lowagie.text.Phrase))
(check-sat)
(pop)
(push)
(assert (le x5 com.lowagie.text.Section))
(check-sat)
(pop)
(push)
(assert (le x5 java.util.TreeSet))
(check-sat)
(pop)
(push)
(assert (not (le x5 java.util.AbstractList)))
(check-sat)
(push)
(assert (le x5 java.util.AbstractCollection))
(check-sat)
(pop)
(pop)
(pop)
(pop)
(push)
(assert (not (le x4 com.lowagie.text.pdf.ByteBuffer)))
(check-sat)
(pop)
(push)
(assert (le x7 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x7 java.lang.StringBuffer)))
(check-sat)
(push)
(assert (le x0 com.lowagie.text.pdf.PdfObject))
(check-sat)
(push)
(assert (le x0 com.lowagie.text.pdf.PdfObject))
(check-sat)
(pop)
(push)
(assert (not (le x0 com.lowagie.text.pdf.PdfObject)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x0 com.lowagie.text.pdf.PdfObject)))
(check-sat)
(push)
(assert (le x1 java.util.HashMap))
(check-sat)
(push)
(assert (not (le x3 com.lowagie.text.pdf.PdfRectangle)))
(check-sat)
(push)
(assert (le x3 com.lowagie.text.pdf.PdfArray))
(check-sat)
(pop)
(pop)
(push)
(assert (le x3 com.lowagie.text.pdf.PdfRectangle))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x1 java.util.HashMap)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x0 java.lang.StringBuffer))
(check-sat)
(push)
(assert (le x7 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x7 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x7 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x7 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x0 java.lang.StringBuffer)))
(check-sat)
(push)
(assert (le x4 com.lowagie.text.pdf.ByteBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x4 com.lowagie.text.pdf.ByteBuffer)))
(check-sat)
(pop)
(push)
(assert (le x6 java.lang.Integer))
(check-sat)
(push)
(assert (le x4 com.lowagie.text.pdf.ByteBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x4 com.lowagie.text.pdf.ByteBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x6 java.lang.Integer)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x6 java.lang.Integer))
(check-sat)
(pop)
(push)
(assert (not (le x6 java.lang.Integer)))
(check-sat)
(pop)
(push)
(assert (le x3 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.lang.StringBuffer)))
(check-sat)
(push)
(assert (le x2 java.lang.StringBuffer))
(check-sat)
(push)
(assert (le x4 com.lowagie.text.pdf.ByteBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x4 com.lowagie.text.pdf.ByteBuffer)))
(check-sat)
(pop)
(push)
(assert (le x0 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x2 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (le x6 java.lang.Integer))
(check-sat)
(push)
(assert (le x6 java.lang.Integer))
(check-sat)
(pop)
(push)
(assert (not (le x6 java.lang.Integer)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x6 java.lang.Integer)))
(check-sat)
(pop)
(push)
(assert (le x3 java.lang.String))
(check-sat)
(push)
(assert (le x3 java.lang.String))
(check-sat)
(push)
(assert (le x5 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x5 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x3 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x3 java.lang.String)))
(check-sat)
(push)
(assert (le x7 java.lang.reflect.AccessibleObject))
(check-sat)
(push)
(assert (le x0 com.lowagie.text.pdf.PdfName))
(check-sat)
(pop)
(push)
(assert (not (le x0 com.lowagie.text.pdf.PdfName)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x7 java.lang.reflect.AccessibleObject)))
(check-sat)
(pop)
(push)
(assert (le x5 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x5 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x7 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x7 java.lang.StringBuffer)))
(check-sat)
(push)
(assert (le x5 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x5 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x6 java.lang.Integer))
(check-sat)
(pop)
(push)
(assert (not (le x6 java.lang.Integer)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (not (le x6 java.lang.Integer)))
(check-sat)
(pop)
(push)
(assert (le x6 java.lang.Integer))
(check-sat)
(pop)
(push)
(assert (not (le x6 java.lang.Integer)))
(check-sat)
(pop)
(push)
(assert (le x5 com.lowagie.text.pdf.PdfObject))
(check-sat)
(pop)
(push)
(assert (not (le x5 com.lowagie.text.pdf.PdfObject)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x4 com.lowagie.text.pdf.ByteBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x4 com.lowagie.text.pdf.ByteBuffer)))
(check-sat)
(pop)
(push)
(assert (le x1 java.lang.StringBuffer))
(check-sat)
(push)
(assert (le x4 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x4 java.lang.StringBuffer)))
(check-sat)
(push)
(assert (le x7 java.lang.StringBuffer))
(check-sat)
(push)
(assert (le x7 java.lang.StringBuffer))
(check-sat)
(push)
(assert (le x0 java.lang.StringBuffer))
(check-sat)
(push)
(assert (le x1 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x0 java.lang.StringBuffer)))
(check-sat)
(push)
(assert (le x5 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x5 java.lang.String)))
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
(assert (le x7 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x7 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (le x4 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x4 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x5 com.lowagie.text.pdf.PdfName))
(check-sat)
(pop)
(push)
(assert (not (le x5 com.lowagie.text.pdf.PdfName)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x7 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x3 com.lowagie.text.pdf.PdfName))
(check-sat)
(pop)
(push)
(assert (not (le x3 com.lowagie.text.pdf.PdfName)))
(check-sat)
(pop)
(push)
(assert (le x3 java.util.HashMap))
(check-sat)
(push)
(assert (le x3 java.util.Hashtable))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.util.LinkedHashMap)))
(check-sat)
(push)
(assert (le x3 java.util.HashMap))
(check-sat)
(push)
(assert (le x1 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x7 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x7 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x5 com.lowagie.text.pdf.ByteBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x5 com.lowagie.text.pdf.ByteBuffer)))
(check-sat)
(push)
(assert (le x3 java.util.HashMap))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.util.HashMap)))
(check-sat)
(pop)
(push)
(assert (le x0 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.lang.StringBuffer)))
(check-sat)
(push)
(assert (le x0 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(pop)
(pop)
(pop)
(push)
(assert (le x3 java.util.IdentityHashMap))
(check-sat)
(pop)
(push)
(assert (le x3 java.lang.reflect.Field))
(check-sat)
(pop)
(push)
(assert (le x3 java.util.LinkedHashMap))
(check-sat)
(pop)
(push)
(assert (le x3 java.util.WeakHashMap))
(check-sat)
(pop)
(push)
(assert (le x3 java.util.TreeMap))
(check-sat)
(pop)
(push)
(assert (le x3 org.dom4j.tree.ConcurrentReaderHashMap))
(check-sat)
(pop)
(push)
(assert (le x3 java.security.Provider))
(check-sat)
(pop)
(push)
(assert (le x3 java.awt.RenderingHints))
(check-sat)
(pop)
(push)
(assert (le x3 java.util.AbstractMap))
(check-sat)
(push)
(assert (not (le x3 org.dom4j.tree.ConcurrentReaderHashMap)))
(check-sat)
(push)
(assert (not (le x3 java.util.HashMap)))
(check-sat)
(push)
(assert (not (le x3 java.util.TreeMap)))
(check-sat)
(push)
(assert (not (le x3 java.util.WeakHashMap)))
(check-sat)
(push)
(assert (not (le x3 java.util.IdentityHashMap)))
(check-sat)
(pop)
(pop)
(pop)
(pop)
(pop)
(pop)
(push)
(assert (not (le x3 java.util.Hashtable)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x3 java.util.HashMap)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x7 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x4 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x4 java.lang.StringBuffer)))
(check-sat)
(push)
(assert (le x1 java.lang.StringBuffer))
(check-sat)
(push)
(assert (le x6 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x6 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x1 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x6 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x6 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x2 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x2 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x7 com.lowagie.text.pdf.ByteBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x7 com.lowagie.text.pdf.ByteBuffer)))
(check-sat)
(push)
(assert (le x7 com.lowagie.text.pdf.ByteBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x7 com.lowagie.text.pdf.ByteBuffer)))
(check-sat)
(push)
(assert (le x0 java.lang.StringBuffer))
(check-sat)
(push)
(assert (le x0 java.lang.StringBuffer))
(check-sat)
(push)
(assert (le x7 com.lowagie.text.pdf.ByteBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x7 com.lowagie.text.pdf.ByteBuffer)))
(check-sat)
(push)
(assert (le x1 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (not (le x0 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x0 java.lang.StringBuffer)))
(check-sat)
(push)
(assert (le x3 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x7 com.lowagie.text.pdf.ByteBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x7 com.lowagie.text.pdf.ByteBuffer)))
(check-sat)
(pop)
(push)
(assert (le x0 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.lang.StringBuffer)))
(check-sat)
(push)
(assert (le x2 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x2 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x2 java.lang.StringBuffer))
(check-sat)
(push)
(assert (le x7 com.lowagie.text.pdf.ByteBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x7 com.lowagie.text.pdf.ByteBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x2 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x4 com.lowagie.text.pdf.PdfName))
(check-sat)
(pop)
(push)
(assert (not (le x4 com.lowagie.text.pdf.PdfName)))
(check-sat)
(pop)
(push)
(assert (le x3 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (le x5 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x5 java.lang.StringBuffer)))
(check-sat)
(push)
(assert (le x1 java.lang.StringBuffer))
(check-sat)
(push)
(assert (le x5 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x5 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x4 com.lowagie.text.pdf.ByteBuffer))
(check-sat)
(push)
(assert (le x6 com.lowagie.text.pdf.PdfName))
(check-sat)
(pop)
(push)
(assert (not (le x6 com.lowagie.text.pdf.PdfName)))
(check-sat)
(pop)
(push)
(assert (le x0 com.lowagie.text.pdf.PdfObject))
(check-sat)
(pop)
(push)
(assert (not (le x0 com.lowagie.text.pdf.PdfObject)))
(check-sat)
(push)
(assert (le x3 com.lowagie.text.pdf.ByteBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x3 com.lowagie.text.pdf.ByteBuffer)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (not (le x4 com.lowagie.text.pdf.ByteBuffer)))
(check-sat)
(pop)
(push)
(assert (le x3 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x1 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x0 com.lowagie.text.pdf.ByteBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x0 com.lowagie.text.pdf.ByteBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x2 java.lang.StringBuffer))
(check-sat)
(push)
(assert (le x1 java.lang.StringBuffer))
(check-sat)
(push)
(assert (le x7 com.lowagie.text.pdf.ByteBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x7 com.lowagie.text.pdf.ByteBuffer)))
(check-sat)
(push)
(assert (le x5 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x5 java.lang.StringBuffer)))
(check-sat)
(push)
(assert (le x4 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x4 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x3 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.lang.StringBuffer)))
(check-sat)
(push)
(assert (le x7 com.lowagie.text.pdf.ByteBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x7 com.lowagie.text.pdf.ByteBuffer)))
(check-sat)
(pop)
(pop)
(pop)
(pop)
(push)
(assert (not (le x1 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x2 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x6 com.lowagie.text.pdf.PdfName))
(check-sat)
(pop)
(push)
(assert (not (le x6 com.lowagie.text.pdf.PdfName)))
(check-sat)
(push)
(assert (le x2 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x2 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x7 com.lowagie.text.pdf.ByteBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x7 com.lowagie.text.pdf.ByteBuffer)))
(check-sat)
(pop)
(push)
(assert (le x0 org.jaxen.Context))
(check-sat)
(pop)
(push)
(assert (not (le x0 org.jaxen.Context)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x6 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x6 java.lang.StringBuffer)))
(check-sat)
(push)
(assert (le x1 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x6 java.util.HashMap))
(check-sat)
(pop)
(push)
(assert (not (le x6 java.util.HashMap)))
(check-sat)
(pop)
(push)
(assert (le x1 java.lang.StringBuffer))
(check-sat)
(push)
(assert (le x0 java.lang.Integer))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.lang.Integer)))
(check-sat)
(pop)
(push)
(assert (le x2 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x2 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x2 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x2 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x3 java.lang.Integer))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.lang.Integer)))
(check-sat)
(push)
(assert (le x6 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x6 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x4 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x4 java.lang.String)))
(check-sat)
(push)
(assert (le x5 com.lowagie.text.pdf.PdfObject))
(check-sat)
(pop)
(push)
(assert (not (le x5 com.lowagie.text.pdf.PdfObject)))
(check-sat)
(push)
(assert (le x4 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x4 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (le x0 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (le x1 java.lang.StringBuffer))
(check-sat)
(push)
(assert (le x5 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x5 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x1 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x4 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x4 java.lang.StringBuffer)))
(check-sat)
(push)
(assert (le x6 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x6 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x3 java.lang.Integer))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.lang.Integer)))
(check-sat)
(push)
(assert (le x6 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x6 java.lang.String)))
(check-sat)
(push)
(assert (le x3 java.lang.Integer))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.lang.Integer)))
(check-sat)
(pop)
(push)
(assert (le x3 java.lang.Integer))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.lang.Integer)))
(check-sat)
(push)
(assert (le x3 java.lang.Integer))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.lang.Integer)))
(check-sat)
(pop)
(push)
(assert (le x1 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(pop)
(pop)
(push)
(assert (le x7 com.lowagie.text.pdf.ByteBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x7 com.lowagie.text.pdf.ByteBuffer)))
(check-sat)
(pop)
(push)
(assert (le x2 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x2 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x0 com.lowagie.text.pdf.ByteBuffer))
(check-sat)
(push)
(assert (le x5 java.lang.reflect.AccessibleObject))
(check-sat)
(pop)
(push)
(assert (not (le x5 java.lang.reflect.AccessibleObject)))
(check-sat)
(push)
(assert (le x0 com.lowagie.text.pdf.ByteBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x0 com.lowagie.text.pdf.ByteBuffer)))
(check-sat)
(pop)
(push)
(assert (le x3 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.lang.StringBuffer)))
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
(pop)
(push)
(assert (le x5 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x5 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x0 com.lowagie.text.pdf.ByteBuffer)))
(check-sat)
(push)
(assert (le x7 com.lowagie.text.pdf.ByteBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x7 com.lowagie.text.pdf.ByteBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x2 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x2 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x3 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.lang.StringBuffer)))
(check-sat)
(push)
(assert (le x1 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (not (le x1 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x4 java.util.HashMap))
(check-sat)
(pop)
(push)
(assert (not (le x4 java.util.HashMap)))
(check-sat)
(push)
(assert (le x7 com.lowagie.text.pdf.ByteBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x7 com.lowagie.text.pdf.ByteBuffer)))
(check-sat)
(push)
(assert (le x3 com.lowagie.text.pdf.PdfDictionary))
(check-sat)
(pop)
(push)
(assert (not (le x3 com.lowagie.text.pdf.PdfDictionary)))
(check-sat)
(pop)
(push)
(assert (le x3 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.lang.StringBuffer)))
(check-sat)
(push)
(assert (le x4 java.util.HashMap))
(check-sat)
(pop)
(push)
(assert (not (le x4 java.util.HashMap)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (le x4 java.util.HashMap))
(check-sat)
(pop)
(push)
(assert (not (le x4 java.util.HashMap)))
(check-sat)
(push)
(assert (le x7 java.lang.StringBuffer))
(check-sat)
(push)
(assert (le x6 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x6 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x7 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x3 com.lowagie.text.pdf.ByteBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x3 com.lowagie.text.pdf.ByteBuffer)))
(check-sat)
(push)
(assert (le x2 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x2 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x2 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x2 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x3 com.lowagie.text.pdf.ByteBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x3 com.lowagie.text.pdf.ByteBuffer)))
(check-sat)
(push)
(assert (le x2 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x2 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(pop)
(pop)
(push)
(assert (le x6 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x6 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (le x2 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x2 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x7 java.lang.StringBuffer))
(check-sat)
(push)
(assert (le x6 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x6 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (le x0 com.lowagie.text.pdf.PdfName))
(check-sat)
(pop)
(push)
(assert (not (le x0 com.lowagie.text.pdf.PdfName)))
(check-sat)
(push)
(assert (le x7 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x7 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x4 java.util.HashMap))
(check-sat)
(push)
(assert (not (le x4 java.util.LinkedHashMap)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x4 java.util.Hashtable)))
(check-sat)
(pop)
(push)
(assert (le x4 java.awt.RenderingHints))
(check-sat)
(pop)
(push)
(assert (le x4 java.lang.reflect.Field))
(check-sat)
(pop)
(push)
(assert (le x4 java.util.WeakHashMap))
(check-sat)
(pop)
(push)
(assert (le x4 java.util.TreeMap))
(check-sat)
(pop)
(push)
(assert (le x4 java.util.LinkedHashMap))
(check-sat)
(pop)
(push)
(assert (le x4 java.util.IdentityHashMap))
(check-sat)
(pop)
(push)
(assert (le x4 java.security.Provider))
(check-sat)
(pop)
(push)
(assert (le x4 org.dom4j.tree.ConcurrentReaderHashMap))
(check-sat)
(pop)
(push)
(assert (not (le x4 org.dom4j.tree.ConcurrentReaderHashMap)))
(check-sat)
(push)
(assert (not (le x4 java.util.IdentityHashMap)))
(check-sat)
(push)
(assert (le x4 java.util.AbstractMap))
(check-sat)
(push)
(assert (not (le x4 java.util.TreeMap)))
(check-sat)
(push)
(assert (not (le x4 java.util.WeakHashMap)))
(check-sat)
(push)
(assert (not (le x4 java.util.HashMap)))
(check-sat)
(pop)
(pop)
(pop)
(pop)
(pop)
(pop)
(push)
(assert (le x4 java.util.Hashtable))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x7 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (not (le x1 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x2 java.lang.StringBuffer)))
(check-sat)
(pop)
