; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"Blimey! \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define void @foo(i32) #0 !dbg !7 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0)), !dbg !13
  ret void, !dbg !14
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @bar(i32) #0 !dbg !15 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !16, metadata !DIExpression()), !dbg !17
  %3 = load i32, i32* %2, align 4, !dbg !18
  %4 = icmp sgt i32 %3, 0, !dbg !20
  br i1 %4, label %5, label %8, !dbg !21

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !22
  %7 = sub nsw i32 %6, 1, !dbg !24
  call void @bar(i32 %7), !dbg !25
  br label %8, !dbg !26

; <label>:8:                                      ; preds = %5, %1
  ret void, !dbg !27
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main(i32, i8**) #0 !dbg !28 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca void (i32)*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !34, metadata !DIExpression()), !dbg !35
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !36, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %6, metadata !38, metadata !DIExpression()), !dbg !41
  store i32 0, i32* %6, align 4, !dbg !41
  br label %8, !dbg !42

; <label>:8:                                      ; preds = %20, %2
  %9 = load i32, i32* %6, align 4, !dbg !43
  %10 = icmp ult i32 %9, 10, !dbg !45
  br i1 %10, label %11, label %23, !dbg !46

; <label>:11:                                     ; preds = %8
  call void @llvm.dbg.declare(metadata void (i32)** %7, metadata !47, metadata !DIExpression()), !dbg !50
  %12 = load i32, i32* %6, align 4, !dbg !51
  %13 = load i32, i32* %4, align 4, !dbg !52
  %14 = urem i32 %12, %13, !dbg !53
  %15 = icmp ne i32 %14, 0, !dbg !54
  %16 = zext i1 %15 to i64, !dbg !54
  %17 = select i1 %15, void (i32)* @foo, void (i32)* @bar, !dbg !54
  store void (i32)* %17, void (i32)** %7, align 8, !dbg !50
  %18 = load void (i32)*, void (i32)** %7, align 8, !dbg !55
  %19 = load i32, i32* %6, align 4, !dbg !56
  call void %18(i32 %19), !dbg !55
  br label %20, !dbg !57

; <label>:20:                                     ; preds = %11
  %21 = load i32, i32* %6, align 4, !dbg !58
  %22 = add i32 %21, 1, !dbg !58
  store i32 %22, i32* %6, align 4, !dbg !58
  br label %8, !dbg !59, !llvm.loop !60

; <label>:23:                                     ; preds = %8
  ret i32 0, !dbg !62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 6.0.1-svn334776-1~exp1~20181018153226.114 (branches/release_60)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "example.c", directory: "/home/haoxin/github/CMPT479/week1/project")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.1-svn334776-1~exp1~20181018153226.114 (branches/release_60)"}
!7 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "i", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!12 = !DILocation(line: 3, column: 14, scope: !7)
!13 = !DILocation(line: 4, column: 5, scope: !7)
!14 = !DILocation(line: 5, column: 1, scope: !7)
!15 = distinct !DISubprogram(name: "bar", scope: !1, file: !1, line: 7, type: !8, isLocal: false, isDefinition: true, scopeLine: 7, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!16 = !DILocalVariable(name: "i", arg: 1, scope: !15, file: !1, line: 7, type: !10)
!17 = !DILocation(line: 7, column: 14, scope: !15)
!18 = !DILocation(line: 8, column: 9, scope: !19)
!19 = distinct !DILexicalBlock(scope: !15, file: !1, line: 8, column: 9)
!20 = !DILocation(line: 8, column: 11, scope: !19)
!21 = !DILocation(line: 8, column: 9, scope: !15)
!22 = !DILocation(line: 9, column: 13, scope: !23)
!23 = distinct !DILexicalBlock(scope: !19, file: !1, line: 8, column: 15)
!24 = !DILocation(line: 9, column: 14, scope: !23)
!25 = !DILocation(line: 9, column: 9, scope: !23)
!26 = !DILocation(line: 10, column: 5, scope: !23)
!27 = !DILocation(line: 11, column: 1, scope: !15)
!28 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 13, type: !29, isLocal: false, isDefinition: true, scopeLine: 13, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!29 = !DISubroutineType(types: !30)
!30 = !{!10, !10, !31}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!34 = !DILocalVariable(name: "argc", arg: 1, scope: !28, file: !1, line: 13, type: !10)
!35 = !DILocation(line: 13, column: 14, scope: !28)
!36 = !DILocalVariable(name: "argv", arg: 2, scope: !28, file: !1, line: 13, type: !31)
!37 = !DILocation(line: 13, column: 27, scope: !28)
!38 = !DILocalVariable(name: "i", scope: !39, file: !1, line: 14, type: !40)
!39 = distinct !DILexicalBlock(scope: !28, file: !1, line: 14, column: 5)
!40 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!41 = !DILocation(line: 14, column: 19, scope: !39)
!42 = !DILocation(line: 14, column: 10, scope: !39)
!43 = !DILocation(line: 14, column: 24, scope: !44)
!44 = distinct !DILexicalBlock(scope: !39, file: !1, line: 14, column: 5)
!45 = !DILocation(line: 14, column: 25, scope: !44)
!46 = !DILocation(line: 14, column: 5, scope: !39)
!47 = !DILocalVariable(name: "fptr", scope: !48, file: !1, line: 15, type: !49)
!48 = distinct !DILexicalBlock(scope: !44, file: !1, line: 14, column: 33)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!50 = !DILocation(line: 15, column: 16, scope: !48)
!51 = !DILocation(line: 15, column: 30, scope: !48)
!52 = !DILocation(line: 15, column: 34, scope: !48)
!53 = !DILocation(line: 15, column: 32, scope: !48)
!54 = !DILocation(line: 15, column: 29, scope: !48)
!55 = !DILocation(line: 16, column: 9, scope: !48)
!56 = !DILocation(line: 16, column: 14, scope: !48)
!57 = !DILocation(line: 17, column: 9, scope: !48)
!58 = !DILocation(line: 14, column: 29, scope: !44)
!59 = !DILocation(line: 14, column: 5, scope: !44)
!60 = distinct !{!60, !46, !61}
!61 = !DILocation(line: 17, column: 9, scope: !39)
!62 = !DILocation(line: 18, column: 5, scope: !28)
