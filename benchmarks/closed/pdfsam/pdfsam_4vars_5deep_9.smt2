;symbolic execution tree
(push)
(assert (le x1 java.lang.StringBuffer))
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
(assert (le x1 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x1 java.lang.StringBuffer))
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
(assert (le x2 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x2 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x1 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x3 java.lang.StringBuffer))
(check-sat)
(push)
(assert (le x2 java.lang.Integer))
(check-sat)
(pop)
(push)
(assert (not (le x2 java.lang.Integer)))
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
(assert (not (le x3 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x1 java.lang.StringBuffer))
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
(assert (le x2 java.lang.Integer))
(check-sat)
(pop)
(push)
(assert (not (le x2 java.lang.Integer)))
(check-sat)
(pop)
(push)
(assert (le x2 com.lowagie.text.pdf.PdfIndirectReference))
(check-sat)
(push)
(assert (le x2 com.lowagie.text.pdf.PdfIndirectReference))
(check-sat)
(pop)
(push)
(assert (not (le x2 com.lowagie.text.pdf.PdfIndirectReference)))
(check-sat)
(pop)
(push)
(assert (le x2 com.lowagie.text.pdf.PdfIndirectReference))
(check-sat)
(pop)
(push)
(assert (not (le x2 com.lowagie.text.pdf.PdfIndirectReference)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x2 com.lowagie.text.pdf.PdfIndirectReference)))
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
(push)
(assert (le x0 java.lang.Integer))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.lang.Integer)))
(check-sat)
(pop)
(push)
(assert (le x1 java.lang.StringBuffer))
(check-sat)
(push)
(assert (le x3 java.lang.Integer))
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
(assert (not (le x3 java.lang.Integer)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x1 java.lang.StringBuffer)))
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
(assert (not (le x1 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x0 java.lang.String))
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
(assert (not (le x0 java.lang.String)))
(check-sat)
(push)
(assert (le x2 com.lowagie.text.pdf.PdfObject))
(check-sat)
(push)
(assert (le x2 com.lowagie.text.pdf.PdfObject))
(check-sat)
(push)
(assert (le x3 com.lowagie.text.pdf.PdfObject))
(check-sat)
(pop)
(push)
(assert (not (le x3 com.lowagie.text.pdf.PdfObject)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x2 com.lowagie.text.pdf.PdfObject)))
(check-sat)
(pop)
(push)
(assert (le x2 com.lowagie.text.pdf.PdfObject))
(check-sat)
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
(assert (not (le x2 com.lowagie.text.pdf.PdfObject)))
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
(push)
(assert (le x3 java.lang.Integer))
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
(pop)
(pop)
(push)
(assert (not (le x3 java.lang.Integer)))
(check-sat)
(pop)
(push)
(assert (le x3 java.lang.String))
(check-sat)
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
(assert (not (le x3 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x2 com.lowagie.text.pdf.PdfObject)))
(check-sat)
(pop)
(push)
(assert (le x2 com.lowagie.text.pdf.ByteBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x2 com.lowagie.text.pdf.ByteBuffer)))
(check-sat)
(push)
(assert (le x2 com.lowagie.text.pdf.ByteBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x2 com.lowagie.text.pdf.ByteBuffer)))
(check-sat)
(pop)
(push)
(assert (le x0 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (le x2 com.lowagie.text.pdf.ByteBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x2 com.lowagie.text.pdf.ByteBuffer)))
(check-sat)
(pop)
(push)
(assert (le x0 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (le x1 java.lang.StringBuffer))
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
(assert (not (le x1 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x0 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x3 java.lang.String))
(check-sat)
(push)
(assert (le x1 java.lang.StringBuffer))
(check-sat)
(push)
(assert (le x0 java.lang.StringBuffer))
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
(push)
(assert (le x3 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.lang.String)))
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
(assert (not (le x3 java.lang.String)))
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
(assert (le x0 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.lang.String)))
(check-sat)
(push)
(assert (le x0 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.lang.String)))
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
(push)
(assert (le x1 java.lang.StringBuffer))
(check-sat)
(push)
(assert (le x0 java.lang.String))
(check-sat)
(push)
(assert (le x0 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x0 java.lang.String)))
(check-sat)
(push)
(assert (le x2 java.lang.Integer))
(check-sat)
(pop)
(push)
(assert (not (le x2 java.lang.Integer)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (not (le x1 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x2 java.lang.StringBuffer))
(check-sat)
(push)
(assert (le x3 java.lang.Integer))
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
(assert (not (le x3 java.lang.Integer)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x2 java.lang.StringBuffer)))
(check-sat)
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
(assert (not (le x1 java.lang.StringBuffer)))
(check-sat)
(push)
(assert (le x3 java.lang.String))
(check-sat)
(push)
(assert (le x3 java.lang.String))
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
(push)
(assert (not (le x3 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x3 java.lang.String)))
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
(push)
(assert (le x0 java.lang.String))
(check-sat)
(push)
(assert (le x2 com.lowagie.text.pdf.PdfName))
(check-sat)
(pop)
(push)
(assert (not (le x2 com.lowagie.text.pdf.PdfName)))
(check-sat)
(push)
(assert (le x1 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.lang.StringBuffer)))
(check-sat)
(push)
(assert (le x2 com.lowagie.text.pdf.PdfName))
(check-sat)
(pop)
(push)
(assert (not (le x2 com.lowagie.text.pdf.PdfName)))
(check-sat)
(pop)
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
(push)
(assert (not (le x0 java.lang.String)))
(check-sat)
(push)
(assert (le x2 java.lang.StringBuffer))
(check-sat)
(push)
(assert (le x0 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.lang.String)))
(check-sat)
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
(assert (not (le x2 java.lang.StringBuffer)))
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
(push)
(assert (le x3 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.lang.String)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (not (le x2 java.lang.StringBuffer)))
(check-sat)
(push)
(assert (le x0 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x0 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.lang.String)))
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
(assert (le x0 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.lang.String)))
(check-sat)
(pop)
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
(pop)
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
(assert (le x3 java.util.IdentityHashMap))
(check-sat)
(pop)
(push)
(assert (le x3 java.util.WeakHashMap))
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
(assert (le x3 java.util.LinkedHashMap))
(check-sat)
(pop)
(push)
(assert (le x3 java.lang.reflect.Field))
(check-sat)
(pop)
(push)
(assert (le x3 java.util.AbstractMap))
(check-sat)
(push)
(assert (not (le x3 java.util.WeakHashMap)))
(check-sat)
(push)
(assert (not (le x3 java.util.HashMap)))
(check-sat)
(push)
(assert (not (le x3 java.util.IdentityHashMap)))
(check-sat)
(push)
(assert (not (le x3 org.dom4j.tree.ConcurrentReaderHashMap)))
(check-sat)
(push)
(assert (not (le x3 java.util.TreeMap)))
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
(pop)