;symbolic execution tree
(push)
(assert (le x0 java.io.File))
(check-sat)
(push)
(assert (le x1 java.util.zip.ZipEntry))
(check-sat)
(push)
(assert (le x7 java.lang.String))
(check-sat)
(push)
(assert (le x4 java.io.File))
(check-sat)
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
(assert (not (le x4 java.io.File)))
(check-sat)
(pop)
(push)
(assert (le x4 java.io.File))
(check-sat)
(pop)
(push)
(assert (not (le x4 java.io.File)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x7 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (le x7 soot.coffi.CONSTANT_Methodref_info))
(check-sat)
(push)
(assert (le x1 java.util.zip.ZipEntry))
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
(assert (le x7 soot.coffi.CONSTANT_Methodref_info))
(check-sat)
(pop)
(push)
(assert (not (le x7 soot.coffi.CONSTANT_Methodref_info)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x1 java.util.zip.ZipEntry)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x7 soot.coffi.CONSTANT_Methodref_info)))
(check-sat)
(pop)
(push)
(assert (le x3 java.util.zip.ZipEntry))
(check-sat)
(push)
(assert (le x7 java.util.zip.ZipEntry))
(check-sat)
(pop)
(push)
(assert (not (le x7 java.util.zip.ZipEntry)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x3 java.util.zip.ZipEntry)))
(check-sat)
(pop)
(push)
(assert (le x3 soot.SootClass))
(check-sat)
(pop)
(push)
(assert (not (le x3 soot.SootClass)))
(check-sat)
(push)
(assert (le x2 soot.coffi.CONSTANT_Utf8_info))
(check-sat)
(pop)
(push)
(assert (not (le x2 soot.coffi.CONSTANT_Utf8_info)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (not (le x1 java.util.zip.ZipEntry)))
(check-sat)
(pop)
(push)
(assert (le x0 java.io.File))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.io.File)))
(check-sat)
(pop)
(push)
(assert (le x0 java.io.File))
(check-sat)
(push)
(assert (le x6 java.io.File))
(check-sat)
(push)
(assert (le x1 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x6 java.io.File)))
(check-sat)
(pop)
(push)
(assert (le x5 java.util.zip.ZipEntry))
(check-sat)
(pop)
(push)
(assert (not (le x5 java.util.zip.ZipEntry)))
(check-sat)
(pop)
(push)
(assert (le x0 java.io.File))
(check-sat)
(push)
(assert (le x7 java.util.List))
(check-sat)
(push)
(assert (le x5 java.lang.Object))
(check-sat)
(pop)
(push)
(assert (not (le x5 java.lang.Object)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x7 java.util.List)))
(check-sat)
(pop)
(push)
(assert (le x1 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.lang.String)))
(check-sat)
(push)
(assert (le x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x2 java.lang.String)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (not (le x0 java.io.File)))
(check-sat)
(pop)
(push)
(assert (le x3 java.io.File))
(check-sat)
(push)
(assert (le x3 java.io.File))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.io.File)))
(check-sat)
(pop)
(push)
(assert (le x6 java.util.zip.ZipEntry))
(check-sat)
(pop)
(push)
(assert (not (le x6 java.util.zip.ZipEntry)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x3 java.io.File)))
(check-sat)
(pop)
(push)
(assert (le x4 java.io.File))
(check-sat)
(push)
(assert (le x0 java.io.File))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.io.File)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x4 java.io.File)))
(check-sat)
(pop)
(push)
(assert (le x4 soot.coffi.CONSTANT_Utf8_info))
(check-sat)
(pop)
(push)
(assert (not (le x4 soot.coffi.CONSTANT_Utf8_info)))
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
(assert (le x3 java.io.File))
(check-sat)
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
(assert (not (le x3 java.io.File)))
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
(assert (le x2 soot.coffi.CONSTANT_Utf8_info))
(check-sat)
(pop)
(push)
(assert (not (le x2 soot.coffi.CONSTANT_Utf8_info)))
(check-sat)
(pop)
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
(assert (not (le x6 java.lang.String)))
(check-sat)
(push)
(assert (le x4 java.io.File))
(check-sat)
(push)
(assert (le x0 java.io.File))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.io.File)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x4 java.io.File)))
(check-sat)
(push)
(assert (le x4 java.io.File))
(check-sat)
(pop)
(push)
(assert (not (le x4 java.io.File)))
(check-sat)
(pop)
(push)
(assert (le x4 java.io.File))
(check-sat)
(pop)
(push)
(assert (not (le x4 java.io.File)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x7 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x7 java.lang.String)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (not (le x0 java.io.File)))
(check-sat)
(pop)
(push)
(assert (le x3 soot.coffi.CONSTANT_Utf8_info))
(check-sat)
(push)
(assert (le x2 java.lang.String))
(check-sat)
(push)
(assert (le x0 java.io.File))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.io.File)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x2 java.lang.String)))
(check-sat)
(push)
(assert (le x0 java.io.File))
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
(assert (le x6 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x6 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x0 java.io.File)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x6 java.util.zip.ZipEntry))
(check-sat)
(pop)
(push)
(assert (not (le x6 java.util.zip.ZipEntry)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x3 soot.coffi.CONSTANT_Utf8_info)))
(check-sat)
(push)
(assert (le x4 java.io.File))
(check-sat)
(push)
(assert (le x2 java.util.zip.ZipEntry))
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
(assert (le x0 java.io.File))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.io.File)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x2 java.util.zip.ZipEntry)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x4 java.io.File)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (not (le x0 java.io.File)))
(check-sat)
(push)
(assert (le x7 java.lang.Object))
(check-sat)
(pop)
(push)
(assert (not (le x7 java.lang.Object)))
(check-sat)
(push)
(assert (le x5 java.lang.String))
(check-sat)
(push)
(assert (le x6 java.io.DataInputStream))
(check-sat)
(pop)
(push)
(assert (not (le x6 java.io.DataInputStream)))
(check-sat)
(push)
(assert (le x5 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x5 java.lang.String)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (not (le x5 java.lang.String)))
(check-sat)
(push)
(assert (le x0 java.io.File))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.io.File)))
(check-sat)
(pop)
(push)
(assert (le x5 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x5 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (not (le x7 soot.RefType)))
(check-sat)
(pop)
(push)
(assert (le x7 soot.RefType))
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
(assert (le x6 java.util.zip.ZipEntry))
(check-sat)
(push)
(assert (le x7 java.lang.Object))
(check-sat)
(pop)
(push)
(assert (not (le x7 java.lang.Object)))
(check-sat)
(pop)
(push)
(assert (le x3 java.io.DataInputStream))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.io.DataInputStream)))
(check-sat)
(push)
(assert (not (le x7 soot.RefType)))
(check-sat)
(pop)
(push)
(assert (le x7 soot.RefType))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (not (le x6 java.util.zip.ZipEntry)))
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
(push)
(assert (le x6 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x6 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (le x3 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.lang.String)))
(check-sat)
(push)
(assert (le x5 java.io.File))
(check-sat)
(pop)
(push)
(assert (not (le x5 java.io.File)))
(check-sat)
(pop)
(push)
(assert (le x1 java.util.zip.ZipEntry))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.zip.ZipEntry)))
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
(assert (le x1 soot.coffi.CONSTANT_Integer_info))
(check-sat)
(pop)
(push)
(assert (not (le x1 soot.coffi.CONSTANT_Integer_info)))
(check-sat)
(pop)
(pop)
(pop)
