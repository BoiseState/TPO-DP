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
(assert (le x1 java.util.List))
(check-sat)
(push)
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
(check-sat)
(push)
(assert (le x0 java.util.zip.ZipEntry))
(check-sat)
(push)
(assert (le x1 java.lang.Object))
(check-sat)
(push)
(assert (le x0 java.util.zip.ZipEntry))
(check-sat)
(push)
(assert (le x1 soot.SootMethod))
(check-sat)
(pop)
(push)
(assert (not (le x1 soot.SootMethod)))
(check-sat)
(push)
(assert (le x3 java.io.File))
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
(assert (le x3 java.io.File))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.io.File)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x3 java.io.File)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (not (le x0 java.util.zip.ZipEntry)))
(check-sat)
(pop)
(push)
(assert (le x0 java.util.zip.ZipEntry))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.util.zip.ZipEntry)))
(check-sat)
(pop)
(push)
(assert (not (le x1 soot.RefType)))
(check-sat)
(push)
(assert (le x3 java.util.zip.ZipEntry))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.util.zip.ZipEntry)))
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
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
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
(pop)
(push)
(assert (le x0 java.util.zip.ZipEntry))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.util.zip.ZipEntry)))
(check-sat)
(pop)
(push)
(assert (le x0 java.util.zip.ZipEntry))
(check-sat)
(push)
(assert (le x0 java.util.zip.ZipEntry))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.util.zip.ZipEntry)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x0 java.util.zip.ZipEntry)))
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
(assert (le x1 java.lang.Object))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.lang.Object)))
(check-sat)
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
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
(check-sat)
(push)
(assert (= x3 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (= x3 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x0 java.util.zip.ZipEntry))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.util.zip.ZipEntry)))
(check-sat)
(pop)
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
(assert (le x1 java.lang.Object))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.lang.Object)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x1 soot.RefType))
(check-sat)
(pop)
(push)
(assert (not (le x1 soot.RefType)))
(check-sat)
(push)
(assert (= x3 java.lang.StringBuilder))
(check-sat)
(push)
(assert (le x0 java.util.zip.ZipEntry))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.util.zip.ZipEntry)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (= x3 java.lang.StringBuilder)))
(check-sat)
(pop)
(push)
(assert (le x0 java.util.zip.ZipEntry))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.util.zip.ZipEntry)))
(check-sat)
(pop)
(push)
(assert (= x3 java.lang.String))
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
(push)
(assert (le x1 java.lang.Object))
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
(assert (not (le x1 java.lang.Object)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (= x3 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (= x3 java.lang.String)))
(check-sat)
(push)
(assert (le x0 java.util.zip.ZipEntry))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.util.zip.ZipEntry)))
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
(assert (le x0 java.util.zip.ZipEntry))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.util.zip.ZipEntry)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (le x1 soot.RefType))
(check-sat)
(push)
(assert (le x0 java.util.zip.ZipEntry))
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
(assert (not (le x0 java.util.zip.ZipEntry)))
(check-sat)
(pop)
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
(assert (le x0 java.util.zip.ZipEntry))
(check-sat)
(push)
(assert (not (le x1 soot.RefType)))
(check-sat)
(pop)
(push)
(assert (le x1 soot.RefType))
(check-sat)
(pop)
(push)
(assert (le x1 java.lang.Object))
(check-sat)
(push)
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
(check-sat)
(push)
(assert (le x3 soot.coffi.CONSTANT_NameAndType_info))
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
(assert (not (le x3 soot.coffi.CONSTANT_NameAndType_info)))
(check-sat)
(pop)
(push)
(assert (not (le x1 soot.RefType)))
(check-sat)
(pop)
(push)
(assert (le x1 soot.RefType))
(check-sat)
(pop)
(push)
(assert (not (le x1 soot.RefType)))
(check-sat)
(pop)
(push)
(assert (le x1 soot.RefType))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (not (le x1 java.lang.Object)))
(check-sat)
(pop)
(push)
(assert (le x3 soot.util.HashChain_currencysign_Link))
(check-sat)
(pop)
(push)
(assert (not (le x3 soot.util.HashChain_currencysign_Link)))
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
(assert (not (le x0 java.util.zip.ZipEntry)))
(check-sat)
(pop)
(push)
(assert (= x3 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (= x3 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x1 java.lang.Object)))
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
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
(check-sat)
(push)
(assert (= x3 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x3 java.lang.String)))
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
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (le x1 java.util.List))
(check-sat)
(push)
(assert (le x0 java.util.zip.ZipEntry))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.util.zip.ZipEntry)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x0 java.util.zip.ZipEntry))
(check-sat)
(push)
(assert (le x3 java.util.zip.ZipEntry))
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
(assert (not (le x3 java.util.zip.ZipEntry)))
(check-sat)
(push)
(assert (le x3 java.util.zip.ZipEntry))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.util.zip.ZipEntry)))
(check-sat)
(push)
(assert (le x0 java.util.zip.ZipEntry))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.util.zip.ZipEntry)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
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
(assert (not (le x0 java.util.zip.ZipEntry)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x0 java.util.zip.ZipEntry)))
(check-sat)
(pop)
(push)
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
(check-sat)
(push)
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(push)
(assert (le x1 java.util.List))
(check-sat)
(push)
(assert (le x1 java.util.List))
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
(assert (not (le x1 java.util.List)))
(check-sat)
(push)
(assert (le x3 java.util.zip.ZipEntry))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.util.zip.ZipEntry)))
(check-sat)
(push)
(assert (= x0 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x0 java.lang.String)))
(check-sat)
(push)
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(pop)
(pop)
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
(pop)
(push)
(assert (not (le x1 java.util.List)))
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
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
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
(assert (le x3 java.util.zip.ZipEntry))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.util.zip.ZipEntry)))
(check-sat)
(push)
(assert (le x3 java.util.zip.ZipEntry))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.util.zip.ZipEntry)))
(check-sat)
(push)
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(pop)
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
(assert (le x0 java.util.zip.ZipEntry))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.util.zip.ZipEntry)))
(check-sat)
(pop)
(push)
(assert (le x0 soot.coffi.CONSTANT_NameAndType_info))
(check-sat)
(push)
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
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
(assert (le x0 soot.coffi.CONSTANT_NameAndType_info))
(check-sat)
(pop)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_NameAndType_info)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_NameAndType_info)))
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
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (le x3 java.io.File))
(check-sat)
(push)
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
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
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
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
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(push)
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
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
(pop)
(push)
(assert (not (le x3 java.io.File)))
(check-sat)
(pop)
(push)
(assert (le x1 java.util.List))
(check-sat)
(push)
(assert (le x1 java.util.List))
(check-sat)
(push)
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
(check-sat)
(push)
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(pop)
(push)
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
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
(pop)
(push)
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
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
(assert (le x1 java.util.List))
(check-sat)
(push)
(assert (le x1 java.util.List))
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
(assert (not (le x1 java.util.List)))
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
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
(check-sat)
(push)
(assert (le x0 soot.coffi.CONSTANT_Methodref_info))
(check-sat)
(pop)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_Methodref_info)))
(check-sat)
(push)
(assert (le x3 soot.coffi.method_info))
(check-sat)
(pop)
(push)
(assert (not (le x3 soot.coffi.method_info)))
(check-sat)
(pop)
(pop)
(pop)
(pop)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(pop)
(push)
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(push)
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
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
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(push)
(assert (le x0 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.util.List)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(push)
(assert (le x3 java.util.zip.ZipEntry))
(check-sat)
(push)
(assert (le x3 java.util.zip.ZipEntry))
(check-sat)
(push)
(assert (le x0 java.util.zip.ZipEntry))
(check-sat)
(pop)
(push)
(assert (not (le x0 java.util.zip.ZipEntry)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x3 java.util.zip.ZipEntry)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x3 java.util.zip.ZipEntry)))
(check-sat)
(push)
(assert (le x3 java.util.zip.ZipEntry))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.util.zip.ZipEntry)))
(check-sat)
(pop)
(pop)
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
(assert (not (le x1 java.util.List)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x0 soot.coffi.CONSTANT_NameAndType_info))
(check-sat)
(push)
(assert (le x1 java.util.List))
(check-sat)
(push)
(assert (le x1 java.util.List))
(check-sat)
(push)
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
(check-sat)
(push)
(assert (le x3 java.io.DataInputStream))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.io.DataInputStream)))
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
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(pop)
(push)
(assert (= x3 java.lang.String))
(check-sat)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_Class_info)))
(check-sat)
(push)
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x0 soot.coffi.CONSTANT_Class_info))
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
(pop)
(push)
(assert (not (= x3 java.lang.String)))
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
(assert (= x3 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x3 java.lang.String)))
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
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
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
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
(check-sat)
(push)
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_Class_info)))
(check-sat)
(pop)
(push)
(assert (le x0 soot.coffi.CONSTANT_Class_info))
(check-sat)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_Fieldref_info)))
(check-sat)
(pop)
(push)
(assert (le x0 soot.coffi.CONSTANT_Fieldref_info))
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
(assert (= x3 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (= x3 java.lang.StringBuffer)))
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
(assert (le x3 java.util.zip.ZipEntry))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.util.zip.ZipEntry)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(pop)
(push)
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
(check-sat)
(push)
(assert (le x1 java.util.List))
(check-sat)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_Class_info)))
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
(assert (= x3 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x3 java.lang.String)))
(check-sat)
(push)
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (le x0 soot.coffi.CONSTANT_Class_info))
(check-sat)
(push)
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
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
(assert (= x3 java.lang.String))
(check-sat)
(push)
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(pop)
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
(pop)
(pop)
(pop)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(push)
(assert (le x1 java.util.List))
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
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x1 java.util.List)))
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
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(push)
(assert (le x3 java.util.List))
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
(assert (not (le x3 java.util.List)))
(check-sat)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_Class_info)))
(check-sat)
(pop)
(push)
(assert (le x0 soot.coffi.CONSTANT_Class_info))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_Class_info)))
(check-sat)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_Fieldref_info)))
(check-sat)
(pop)
(push)
(assert (le x0 soot.coffi.CONSTANT_Fieldref_info))
(check-sat)
(pop)
(pop)
(push)
(assert (le x0 soot.coffi.CONSTANT_Class_info))
(check-sat)
(pop)
(push)
(assert (le x3 soot.util.HashChain_currencysign_Link))
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
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (le x3 soot.util.HashChain_currencysign_Link))
(check-sat)
(push)
(assert (le x3 soot.util.HashChain_currencysign_Link))
(check-sat)
(push)
(assert (le x3 soot.util.HashChain_currencysign_Link))
(check-sat)
(pop)
(push)
(assert (not (le x3 soot.util.HashChain_currencysign_Link)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x3 soot.util.HashChain_currencysign_Link)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x3 soot.util.HashChain_currencysign_Link)))
(check-sat)
(pop)
(push)
(assert (le x3 soot.util.HashChain_currencysign_Link))
(check-sat)
(pop)
(push)
(assert (not (le x3 soot.util.HashChain_currencysign_Link)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x3 soot.util.HashChain_currencysign_Link)))
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
(pop)
(pop)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_NameAndType_info)))
(check-sat)
(push)
(assert (le x0 soot.coffi.CONSTANT_NameAndType_info))
(check-sat)
(pop)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_NameAndType_info)))
(check-sat)
(push)
(assert (le x0 soot.coffi.CONSTANT_NameAndType_info))
(check-sat)
(pop)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_NameAndType_info)))
(check-sat)
(push)
(assert (le x1 java.util.List))
(check-sat)
(push)
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x1 java.util.List)))
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
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
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
(assert (le x0 soot.coffi.CONSTANT_NameAndType_info))
(check-sat)
(pop)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_NameAndType_info)))
(check-sat)
(push)
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(pop)
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
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
(check-sat)
(pop)
(push)
(assert (le x0 soot.coffi.CONSTANT_NameAndType_info))
(check-sat)
(pop)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_NameAndType_info)))
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
(assert (le x0 soot.coffi.CONSTANT_NameAndType_info))
(check-sat)
(pop)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_NameAndType_info)))
(check-sat)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_Class_info)))
(check-sat)
(pop)
(push)
(assert (le x0 soot.coffi.CONSTANT_Class_info))
(check-sat)
(pop)
(push)
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
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
(pop)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_Utf8_info)))
(check-sat)
(pop)
(push)
(assert (le x0 soot.coffi.CONSTANT_Utf8_info))
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
(pop)
(pop)
(push)
(assert (= x3 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x3 java.lang.String)))
(check-sat)
(push)
(assert (le x1 java.util.List))
(check-sat)
(push)
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
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
(assert (not (le x1 java.util.List)))
(check-sat)
(push)
(assert (le x1 java.util.List))
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
(assert (not (le x1 java.util.List)))
(check-sat)
(push)
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
(check-sat)
(push)
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (le x1 java.util.Collection))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.Collection)))
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
(assert (not (le x0 soot.coffi.CONSTANT_Class_info)))
(check-sat)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_Fieldref_info)))
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
(assert (le x0 soot.coffi.CONSTANT_Fieldref_info))
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
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
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
(pop)
(push)
(assert (le x0 soot.coffi.CONSTANT_Class_info))
(check-sat)
(push)
(assert (le x1 java.util.Collection))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.Collection)))
(check-sat)
(pop)
(pop)
(pop)
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
(assert (le x1 java.util.List))
(check-sat)
(push)
(assert (le x0 soot.coffi.CONSTANT_NameAndType_info))
(check-sat)
(pop)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_NameAndType_info)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(pop)
(push)
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
(check-sat)
(push)
(assert (= x3 java.lang.StringBuffer))
(check-sat)
(push)
(assert (le x1 java.lang.Object))
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
(assert (not (le x1 java.lang.Object)))
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
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
(check-sat)
(push)
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
(check-sat)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_Class_info)))
(check-sat)
(pop)
(push)
(assert (le x0 soot.coffi.CONSTANT_Class_info))
(check-sat)
(pop)
(pop)
(push)
(assert (= x3 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (= x3 java.lang.StringBuffer)))
(check-sat)
(pop)
(push)
(assert (le x0 soot.coffi.CONSTANT_NameAndType_info))
(check-sat)
(pop)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_NameAndType_info)))
(check-sat)
(pop)
(push)
(assert (le x0 soot.coffi.CONSTANT_NameAndType_info))
(check-sat)
(pop)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_NameAndType_info)))
(check-sat)
(push)
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
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
(pop)
(pop)
(push)
(assert (not (= x3 java.lang.StringBuffer)))
(check-sat)
(push)
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(pop)
(push)
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(push)
(assert (= x3 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (= x3 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (= x3 java.lang.StringBuffer))
(check-sat)
(pop)
(push)
(assert (not (= x3 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (= x3 java.lang.String))
(check-sat)
(push)
(assert (le x0 soot.coffi.CONSTANT_NameAndType_info))
(check-sat)
(pop)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_NameAndType_info)))
(check-sat)
(pop)
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
(pop)
(pop)
(pop)
(pop)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_Class_info)))
(check-sat)
(push)
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x0 soot.coffi.CONSTANT_Class_info))
(check-sat)
(push)
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
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
(assert (not (le x0 soot.coffi.CONSTANT_Fieldref_info)))
(check-sat)
(pop)
(push)
(assert (le x0 soot.coffi.CONSTANT_Fieldref_info))
(check-sat)
(push)
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_Methodref_info)))
(check-sat)
(push)
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
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
(assert (le x0 soot.coffi.CONSTANT_Methodref_info))
(check-sat)
(push)
(assert (le x1 java.util.Collection))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.Collection)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_Methodref_info)))
(check-sat)
(pop)
(push)
(assert (le x0 soot.coffi.CONSTANT_Methodref_info))
(check-sat)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_InterfaceMethodref_info)))
(check-sat)
(pop)
(push)
(assert (le x0 soot.coffi.CONSTANT_InterfaceMethodref_info))
(check-sat)
(pop)
(pop)
(pop)
(pop)
(push)
(assert (le x0 soot.coffi.CONSTANT_NameAndType_info))
(check-sat)
(pop)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_NameAndType_info)))
(check-sat)
(pop)
(push)
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(push)
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_Class_info)))
(check-sat)
(push)
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x0 soot.coffi.CONSTANT_Class_info))
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
(assert (le x0 soot.coffi.CONSTANT_NameAndType_info))
(check-sat)
(pop)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_NameAndType_info)))
(check-sat)
(push)
(assert (le x0 soot.coffi.CONSTANT_NameAndType_info))
(check-sat)
(pop)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_NameAndType_info)))
(check-sat)
(pop)
(push)
(assert (le x1 java.util.List))
(check-sat)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_Class_info)))
(check-sat)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_Fieldref_info)))
(check-sat)
(push)
(assert (le x0 soot.coffi.CONSTANT_Methodref_info))
(check-sat)
(pop)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_Methodref_info)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x0 soot.coffi.CONSTANT_Fieldref_info))
(check-sat)
(pop)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_Fieldref_info)))
(check-sat)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_Methodref_info)))
(check-sat)
(pop)
(push)
(assert (le x0 soot.coffi.CONSTANT_Methodref_info))
(check-sat)
(pop)
(pop)
(push)
(assert (le x0 soot.coffi.CONSTANT_Fieldref_info))
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
(assert (= x2 java.lang.String))
(check-sat)
(pop)
(push)
(assert (not (= x2 java.lang.String)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x0 soot.coffi.CONSTANT_Class_info))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(pop)
(push)
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(pop)
(push)
(assert (le x1 java.util.List))
(check-sat)
(push)
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(push)
(assert (le x1 java.util.List))
(check-sat)
(push)
(assert (le x0 soot.coffi.CONSTANT_NameAndType_info))
(check-sat)
(pop)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_NameAndType_info)))
(check-sat)
(pop)
(push)
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(pop)
(push)
(assert (le x3 java.util.zip.ZipEntry))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.util.zip.ZipEntry)))
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
(assert (= x3 java.lang.StringBuffer))
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
(assert (not (= x3 java.lang.StringBuffer)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(pop)
(push)
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(pop)
(push)
(assert (le x3 java.io.File))
(check-sat)
(push)
(assert (le x1 java.util.List))
(check-sat)
(pop)
(push)
(assert (not (le x1 java.util.List)))
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
(assert (not (le x0 soot.coffi.CONSTANT_Utf8_info)))
(check-sat)
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
(pop)
(push)
(assert (not (le x3 java.io.File)))
(check-sat)
(pop)
(pop)
(push)
(assert (le x0 soot.coffi.CONSTANT_Utf8_info))
(check-sat)
(pop)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_Class_info)))
(check-sat)
(pop)
(push)
(assert (le x0 soot.coffi.CONSTANT_Class_info))
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
(assert (le x3 java.io.File))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.io.File)))
(check-sat)
(pop)
(pop)
(pop)
(push)
(assert (not (le x3 java.io.File)))
(check-sat)
(push)
(assert (le x1 java.util.List))
(check-sat)
(push)
(assert (le x3 java.io.File))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.io.File)))
(check-sat)
(pop)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(push)
(assert (le x3 java.io.File))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.io.File)))
(check-sat)
(pop)
(pop)
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
(pop)
(push)
(assert (not (le x1 java.util.List)))
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
(assert (le x3 java.util.zip.ZipEntry))
(check-sat)
(pop)
(push)
(assert (not (le x3 java.util.zip.ZipEntry)))
(check-sat)
(push)
(assert (le x0 soot.coffi.CONSTANT_NameAndType_info))
(check-sat)
(pop)
(push)
(assert (not (le x0 soot.coffi.CONSTANT_NameAndType_info)))
(check-sat)
(pop)
(pop)
(pop)
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
(pop)
(pop)
(push)
(assert (not (le x1 java.util.List)))
(check-sat)
(pop)
