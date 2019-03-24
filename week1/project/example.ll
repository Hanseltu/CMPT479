; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [10 x i8] c"Blimey! \0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @foo(i32) #0 !dbg !8 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !12, metadata !DIExpression()), !dbg !13
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0)), !dbg !14
  ret void, !dbg !15
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @bar(i32) #0 !dbg !16 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !17, metadata !DIExpression()), !dbg !18
  %3 = load i32, i32* %2, align 4, !dbg !19
  %4 = icmp sgt i32 %3, 0, !dbg !21
  br i1 %4, label %5, label %8, !dbg !22

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !23
  %7 = sub nsw i32 %6, 1, !dbg !25
  call void @bar(i32 %7), !dbg !26
  br label %8, !dbg !27

; <label>:8:                                      ; preds = %5, %1
  ret void, !dbg !28
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32, i8**) #0 !dbg !29 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca void (i32)*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !35, metadata !DIExpression()), !dbg !36
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %6, metadata !39, metadata !DIExpression()), !dbg !42
  store i32 0, i32* %6, align 4, !dbg !42
  br label %8, !dbg !43

; <label>:8:                                      ; preds = %20, %2
  %9 = load i32, i32* %6, align 4, !dbg !44
  %10 = icmp ult i32 %9, 10, !dbg !46
  br i1 %10, label %11, label %23, !dbg !47

; <label>:11:                                     ; preds = %8
  call void @llvm.dbg.declare(metadata void (i32)** %7, metadata !48, metadata !DIExpression()), !dbg !51
  %12 = load i32, i32* %6, align 4, !dbg !52
  %13 = load i32, i32* %4, align 4, !dbg !53
  %14 = urem i32 %12, %13, !dbg !54
  %15 = icmp ne i32 %14, 0, !dbg !55
  %16 = zext i1 %15 to i64, !dbg !55
  %17 = select i1 %15, void (i32)* @foo, void (i32)* @bar, !dbg !55
  store void (i32)* %17, void (i32)** %7, align 8, !dbg !51
  %18 = load void (i32)*, void (i32)** %7, align 8, !dbg !56
  %19 = load i32, i32* %6, align 4, !dbg !57
  call void %18(i32 %19), !dbg !56
  br label %20, !dbg !58

; <label>:20:                                     ; preds = %11
  %21 = load i32, i32* %6, align 4, !dbg !59
  %22 = add i32 %21, 1, !dbg !59
  store i32 %22, i32* %6, align 4, !dbg !59
  br label %8, !dbg !60, !llvm.loop !61

; <label>:23:                                     ; preds = %8
  ret i32 0, !dbg !63
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.0 (clang-1000.10.44.4)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "example.c", directory: "/Users/tuhaoxin/github/CMPT479/week1/project")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.0 (clang-1000.10.44.4)"}
!8 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 3, type: !9, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DILocalVariable(name: "i", arg: 1, scope: !8, file: !1, line: 3, type: !11)
!13 = !DILocation(line: 3, column: 14, scope: !8)
!14 = !DILocation(line: 4, column: 5, scope: !8)
!15 = !DILocation(line: 5, column: 1, scope: !8)
!16 = distinct !DISubprogram(name: "bar", scope: !1, file: !1, line: 7, type: !9, isLocal: false, isDefinition: true, scopeLine: 7, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!17 = !DILocalVariable(name: "i", arg: 1, scope: !16, file: !1, line: 7, type: !11)
!18 = !DILocation(line: 7, column: 14, scope: !16)
!19 = !DILocation(line: 8, column: 9, scope: !20)
!20 = distinct !DILexicalBlock(scope: !16, file: !1, line: 8, column: 9)
!21 = !DILocation(line: 8, column: 11, scope: !20)
!22 = !DILocation(line: 8, column: 9, scope: !16)
!23 = !DILocation(line: 9, column: 13, scope: !24)
!24 = distinct !DILexicalBlock(scope: !20, file: !1, line: 8, column: 15)
!25 = !DILocation(line: 9, column: 14, scope: !24)
!26 = !DILocation(line: 9, column: 9, scope: !24)
!27 = !DILocation(line: 10, column: 5, scope: !24)
!28 = !DILocation(line: 11, column: 1, scope: !16)
!29 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 13, type: !30, isLocal: false, isDefinition: true, scopeLine: 13, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!30 = !DISubroutineType(types: !31)
!31 = !{!11, !11, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!35 = !DILocalVariable(name: "argc", arg: 1, scope: !29, file: !1, line: 13, type: !11)
!36 = !DILocation(line: 13, column: 14, scope: !29)
!37 = !DILocalVariable(name: "argv", arg: 2, scope: !29, file: !1, line: 13, type: !32)
!38 = !DILocation(line: 13, column: 27, scope: !29)
!39 = !DILocalVariable(name: "i", scope: !40, file: !1, line: 14, type: !41)
!40 = distinct !DILexicalBlock(scope: !29, file: !1, line: 14, column: 5)
!41 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!42 = !DILocation(line: 14, column: 19, scope: !40)
!43 = !DILocation(line: 14, column: 10, scope: !40)
!44 = !DILocation(line: 14, column: 24, scope: !45)
!45 = distinct !DILexicalBlock(scope: !40, file: !1, line: 14, column: 5)
!46 = !DILocation(line: 14, column: 25, scope: !45)
!47 = !DILocation(line: 14, column: 5, scope: !40)
!48 = !DILocalVariable(name: "fptr", scope: !49, file: !1, line: 15, type: !50)
!49 = distinct !DILexicalBlock(scope: !45, file: !1, line: 14, column: 33)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!51 = !DILocation(line: 15, column: 16, scope: !49)
!52 = !DILocation(line: 15, column: 30, scope: !49)
!53 = !DILocation(line: 15, column: 34, scope: !49)
!54 = !DILocation(line: 15, column: 32, scope: !49)
!55 = !DILocation(line: 15, column: 29, scope: !49)
!56 = !DILocation(line: 16, column: 9, scope: !49)
!57 = !DILocation(line: 16, column: 14, scope: !49)
!58 = !DILocation(line: 17, column: 9, scope: !49)
!59 = !DILocation(line: 14, column: 29, scope: !45)
!60 = !DILocation(line: 14, column: 5, scope: !45)
!61 = distinct !{!61, !47, !62}
!62 = !DILocation(line: 17, column: 9, scope: !40)
!63 = !DILocation(line: 18, column: 5, scope: !29)
