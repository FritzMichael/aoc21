	.file	"output.c"
	.text
	.section	.text.__pyx_bisect_code_objects,"ax",@progbits
	.p2align 4
	.type	__pyx_bisect_code_objects, @function
__pyx_bisect_code_objects:
.LFB194:
	.cfi_startproc
	movl	%esi, %r8d
	movl	%esi, %eax
	decl	%r8d
	js	.L3
	movslq	%r8d, %rcx
	salq	$4, %rcx
	cmpl	%edx, 8(%rdi,%rcx)
	jl	.L15
	testl	%r8d, %r8d
	jle	.L3
	xorl	%esi, %esi
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L16:
	jge	.L1
	leal	1(%rax), %esi
	cmpl	%esi, %r8d
	jle	.L8
.L4:
	movl	%r8d, %ecx
	subl	%esi, %ecx
	movl	%ecx, %eax
	shrl	$31, %eax
	addl	%ecx, %eax
	sarl	%eax
	addl	%esi, %eax
	movslq	%eax, %rcx
	salq	$4, %rcx
	movl	8(%rdi,%rcx), %ecx
	cmpl	%edx, %ecx
	jle	.L16
	movl	%eax, %r8d
	cmpl	%esi, %r8d
	jg	.L4
.L8:
	cmpl	%ecx, %edx
	setg	%dl
	movzbl	%dl, %edx
	addl	%edx, %eax
.L1:
	ret
	.p2align 4,,10
	.p2align 3
.L15:
	ret
	.p2align 4,,10
	.p2align 3
.L3:
	movl	8(%rdi), %ecx
	xorl	%eax, %eax
	jmp	.L8
	.cfi_endproc
.LFE194:
	.size	__pyx_bisect_code_objects, .-__pyx_bisect_code_objects
	.section	.text.__Pyx_PyObject_GetAttrStr,"ax",@progbits
	.p2align 4
	.type	__Pyx_PyObject_GetAttrStr, @function
__Pyx_PyObject_GetAttrStr:
.LFB176:
	.cfi_startproc
	movq	8(%rdi), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L18
	jmp	*%rax
	.p2align 4,,10
	.p2align 3
.L18:
	jmp	*PyObject_GetAttr@GOTPCREL(%rip)
	.cfi_endproc
.LFE176:
	.size	__Pyx_PyObject_GetAttrStr, .-__Pyx_PyObject_GetAttrStr
	.section	.text.__Pyx_PyFunction_FastCallNoKw,"ax",@progbits
	.p2align 4
	.type	__Pyx_PyFunction_FastCallNoKw, @function
__Pyx_PyFunction_FastCallNoKw:
.LFB183:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	%rcx, %r14
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdx, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	call	*_PyThreadState_UncheckedGet@GOTPCREL(%rip)
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movq	%r12, %rsi
	movq	%rax, %r13
	movq	%rax, %rdi
	call	*PyFrame_New@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.L25
	movq	__pyx_pyframe_localsplus_offset(%rip), %rcx
	movq	%rax, %r12
	xorl	%eax, %eax
	addq	%r12, %rcx
	testq	%rbx, %rbx
	jle	.L24
	.p2align 4,,10
	.p2align 3
.L21:
	movq	0(%rbp,%rax,8), %rdx
	incq	(%rdx)
	movq	%rdx, (%rcx,%rax,8)
	incq	%rax
	cmpq	%rax, %rbx
	jne	.L21
.L24:
	xorl	%esi, %esi
	movq	%r12, %rdi
	call	*PyEval_EvalFrameEx@GOTPCREL(%rip)
	movl	32(%r13), %ecx
	leal	1(%rcx), %edx
	movl	%edx, 32(%r13)
	decq	(%r12)
	je	.L31
.L22:
	movl	%ecx, 32(%r13)
.L19:
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L31:
	.cfi_restore_state
	movq	%rax, 8(%rsp)
	movq	%r12, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movl	32(%r13), %eax
	leal	-1(%rax), %ecx
	movq	8(%rsp), %rax
	jmp	.L22
.L25:
	xorl	%eax, %eax
	jmp	.L19
	.cfi_endproc
.LFE183:
	.size	__Pyx_PyFunction_FastCallNoKw, .-__Pyx_PyFunction_FastCallNoKw
	.section	.text.unlikely.__Pyx_copy_spec_to_module,"ax",@progbits
	.type	__Pyx_copy_spec_to_module, @function
__Pyx_copy_spec_to_module:
.LFB173:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	%rcx, %r14
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rsi, %r13
	movq	%rdx, %rsi
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movl	%r8d, %ebx
	call	*PyObject_GetAttrString@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.L33
	cmpq	_Py_NoneStruct@GOTPCREL(%rip), %rax
	movq	%rax, %rbp
	jne	.L39
	xorl	%r12d, %r12d
	andb	$1, %bl
	je	.L34
.L39:
	movq	%rbp, %rdx
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	*PyDict_SetItemString@GOTPCREL(%rip)
	movl	%eax, %r12d
.L34:
	decq	0(%rbp)
	jne	.L32
	movq	%rbp, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L32
.L33:
	movq	PyExc_AttributeError@GOTPCREL(%rip), %rax
	orl	$-1, %r12d
	movq	(%rax), %rdi
	call	*PyErr_ExceptionMatches@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L32
	call	*PyErr_Clear@GOTPCREL(%rip)
	xorl	%r12d, %r12d
.L32:
	popq	%rbx
	.cfi_def_cfa_offset 40
	movl	%r12d, %eax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE173:
	.size	__Pyx_copy_spec_to_module, .-__Pyx_copy_spec_to_module
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Interpreter change detected - this module can only be loaded into one interpreter per process."
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"name"
.LC2:
	.string	"__loader__"
.LC3:
	.string	"loader"
.LC4:
	.string	"__file__"
.LC5:
	.string	"origin"
.LC6:
	.string	"__package__"
.LC7:
	.string	"parent"
.LC8:
	.string	"__path__"
.LC9:
	.string	"submodule_search_locations"
	.section	.text.unlikely.__pyx_pymod_create,"ax",@progbits
	.type	__pyx_pymod_create, @function
__pyx_pymod_create:
.LFB174:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rcx
	.cfi_def_cfa_offset 48
	call	*PyThreadState_Get@GOTPCREL(%rip)
	movq	16(%rax), %rdi
	call	*PyInterpreterState_GetID@GOTPCREL(%rip)
	movq	main_interpreter_id.13479(%rip), %rdx
	cmpq	$-1, %rdx
	jne	.L42
	movq	%rax, main_interpreter_id.13479(%rip)
	incq	%rax
	je	.L61
	jmp	.L43
.L42:
	cmpq	%rdx, %rax
	je	.L43
	movq	PyExc_ImportError@GOTPCREL(%rip), %rax
	leaq	.LC0(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
.L61:
	xorl	%r12d, %r12d
	jmp	.L41
.L43:
	movq	__pyx_m(%rip), %r12
	testq	%r12, %r12
	je	.L45
	incq	(%r12)
	jmp	.L41
.L45:
	leaq	.LC1(%rip), %rsi
	movq	%r13, %rdi
	call	*PyObject_GetAttrString@GOTPCREL(%rip)
	movq	%rax, %r14
	testq	%rax, %rax
	je	.L61
	movq	%rax, %rdi
	call	*PyModule_NewObject@GOTPCREL(%rip)
	decq	(%r14)
	movq	%rax, %rbp
	jne	.L47
	movq	%r14, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
.L47:
	testq	%rbp, %rbp
	je	.L61
	movq	%rbp, %rdi
	call	*PyModule_GetDict@GOTPCREL(%rip)
	movq	%rax, %r14
	testq	%rax, %rax
	je	.L48
	movl	$1, %r8d
	leaq	.LC2(%rip), %rcx
	movq	%rax, %rsi
	movq	%r13, %rdi
	leaq	.LC3(%rip), %rdx
	call	__Pyx_copy_spec_to_module
	testl	%eax, %eax
	js	.L48
	movl	$1, %r8d
	leaq	.LC4(%rip), %rcx
	movq	%r14, %rsi
	movq	%r13, %rdi
	leaq	.LC5(%rip), %rdx
	call	__Pyx_copy_spec_to_module
	testl	%eax, %eax
	js	.L48
	movl	$1, %r8d
	leaq	.LC6(%rip), %rcx
	movq	%r14, %rsi
	movq	%r13, %rdi
	leaq	.LC7(%rip), %rdx
	call	__Pyx_copy_spec_to_module
	testl	%eax, %eax
	js	.L48
	xorl	%r8d, %r8d
	leaq	.LC8(%rip), %rcx
	movq	%r14, %rsi
	movq	%r13, %rdi
	leaq	.LC9(%rip), %rdx
	call	__Pyx_copy_spec_to_module
	testl	%eax, %eax
	js	.L48
	movq	%rbp, %r12
	jmp	.L41
.L48:
	decq	0(%rbp)
	jne	.L61
	movq	%rbp, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
.L41:
	popq	%rdx
	.cfi_def_cfa_offset 40
	movq	%r12, %rax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE174:
	.size	__pyx_pymod_create, .-__pyx_pymod_create
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	" while calling a Python object"
	.section	.text.__Pyx_PyFunction_FastCallDict.constprop.0,"ax",@progbits
	.p2align 4
	.type	__Pyx_PyFunction_FastCallDict.constprop.0, @function
__Pyx_PyFunction_FastCallDict.constprop.0:
.LFB226:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rsi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	movq	16(%rdi), %r14
	movq	24(%rdi), %r15
	movq	32(%rdi), %r12
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L68
	movl	24(%r14), %edx
	testl	%edx, %edx
	jne	.L64
	cmpl	$67, 36(%r14)
	jne	.L64
	testq	%r12, %r12
	je	.L78
.L64:
	movq	48(%rbx), %rsi
	movq	40(%rbx), %rcx
	xorl	%edx, %edx
	testq	%r12, %r12
	je	.L67
	movl	16(%r12), %eax
	leaq	24(%r12), %rdx
.L67:
	subq	$8, %rsp
	.cfi_def_cfa_offset 72
	xorl	%r9d, %r9d
	movl	%ebp, %r8d
	movq	%r14, %rdi
	pushq	%rsi
	.cfi_def_cfa_offset 80
	movq	%r15, %rsi
	pushq	%rcx
	.cfi_def_cfa_offset 88
	movq	%r13, %rcx
	pushq	%rax
	.cfi_def_cfa_offset 96
	pushq	%rdx
	.cfi_def_cfa_offset 104
	xorl	%edx, %edx
	pushq	$0
	.cfi_def_cfa_offset 112
	call	*PyEval_EvalCodeEx@GOTPCREL(%rip)
	movq	%rax, %r12
	addq	$48, %rsp
	.cfi_def_cfa_offset 64
.L66:
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
.L62:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r12, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L68:
	.cfi_restore_state
	xorl	%r12d, %r12d
	jmp	.L62
	.p2align 4,,10
	.p2align 3
.L78:
	movslq	16(%r14), %rdx
	cmpq	%rbp, %rdx
	je	.L79
	movq	48(%rbx), %rsi
	movq	40(%rbx), %rcx
	xorl	%edx, %edx
	jmp	.L67
.L79:
	movq	%r15, %rcx
	movq	%r13, %rsi
	movq	%r14, %rdi
	call	__Pyx_PyFunction_FastCallNoKw
	movq	%rax, %r12
	jmp	.L66
	.cfi_endproc
.LFE226:
	.size	__Pyx_PyFunction_FastCallDict.constprop.0, .-__Pyx_PyFunction_FastCallDict.constprop.0
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"NULL result without error in PyObject_Call"
	.section	.text.__Pyx_PyObject_CallOneArg,"ax",@progbits
	.p2align 4
	.type	__Pyx_PyObject_CallOneArg, @function
__Pyx_PyObject_CallOneArg:
.LFB188:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movq	8(%rdi), %rdi
	cmpq	PyFunction_Type@GOTPCREL(%rip), %rdi
	movq	%rsi, 8(%rsp)
	je	.L109
	cmpq	PyCFunction_Type@GOTPCREL(%rip), %rdi
	jne	.L110
	movq	16(%rbp), %rdx
	movl	16(%rdx), %eax
	testb	$8, %al
	je	.L89
.L96:
	movq	8(%rsp), %r13
	movq	8(%rdx), %rbx
	xorl	%r12d, %r12d
	testb	$32, %al
	je	.L111
.L86:
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L88
	movq	%r12, %rdi
	movq	%r13, %rsi
	call	*%rbx
	movq	%rax, %r12
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	testq	%r12, %r12
	je	.L112
.L80:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%r12, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L111:
	.cfi_restore_state
	movq	24(%rbp), %r12
	jmp	.L86
	.p2align 4,,10
	.p2align 3
.L112:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L113
.L88:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%r12d, %r12d
	popq	%rbx
	.cfi_def_cfa_offset 32
	movq	%r12, %rax
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L109:
	.cfi_restore_state
	leaq	8(%rsp), %rsi
	movl	$1, %edx
	movq	%rbp, %rdi
	call	__Pyx_PyFunction_FastCallDict.constprop.0
	movq	%rax, %r12
	jmp	.L80
	.p2align 4,,10
	.p2align 3
.L110:
	movq	PyCFunction_Type@GOTPCREL(%rip), %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L84
	movq	16(%rbp), %rdx
	movl	16(%rdx), %eax
	testb	$8, %al
	jne	.L96
	movq	8(%rbp), %rdi
	cmpq	PyCFunction_Type@GOTPCREL(%rip), %rdi
	je	.L89
	movq	PyCFunction_Type@GOTPCREL(%rip), %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L84
	movq	16(%rbp), %rdx
	movl	16(%rdx), %eax
.L89:
	movl	%eax, %ecx
	andl	$-115, %ecx
	cmpl	$128, %ecx
	je	.L114
.L84:
	movq	8(%rsp), %rbx
	movl	$1, %edi
	call	*PyTuple_New@GOTPCREL(%rip)
	movq	%rax, %r13
	testq	%rax, %rax
	je	.L88
	incq	(%rbx)
	movq	%rbx, 24(%rax)
	movq	8(%rbp), %rax
	movq	128(%rax), %rbx
	testq	%rbx, %rbx
	je	.L115
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L95
	xorl	%edx, %edx
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	*%rbx
	movq	%rax, %r12
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	testq	%r12, %r12
	je	.L116
.L93:
	decq	0(%r13)
	jne	.L80
	movq	%r13, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L80
.L114:
	movq	8(%rdx), %r8
	xorl	%edi, %edi
	testb	$32, %al
	jne	.L90
	movq	24(%rbp), %rdi
.L90:
	leaq	8(%rsp), %rsi
	testb	$2, %al
	jne	.L117
	movl	$1, %edx
	call	*%r8
	movq	%rax, %r12
	jmp	.L80
.L113:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	jmp	.L80
	.p2align 4,,10
	.p2align 3
.L95:
	xorl	%r12d, %r12d
	jmp	.L93
.L115:
	xorl	%edx, %edx
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	*PyObject_Call@GOTPCREL(%rip)
	movq	%rax, %r12
	jmp	.L93
.L116:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.L95
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	jmp	.L93
.L117:
	xorl	%ecx, %ecx
	movl	$1, %edx
	call	*%r8
	movq	%rax, %r12
	jmp	.L80
	.cfi_endproc
.LFE188:
	.size	__Pyx_PyObject_CallOneArg, .-__Pyx_PyObject_CallOneArg
	.section	.text.__Pyx_PyObject_Call2Args,"ax",@progbits
	.p2align 4
	.type	__Pyx_PyObject_Call2Args, @function
__Pyx_PyObject_Call2Args:
.LFB189:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rdx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 80
	movq	8(%rdi), %rdi
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	cmpq	PyFunction_Type@GOTPCREL(%rip), %rdi
	je	.L137
	movq	PyCFunction_Type@GOTPCREL(%rip), %rsi
	cmpq	%rsi, %rdi
	je	.L124
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L123
.L124:
	movq	16(%rbp), %rdx
	movl	16(%rdx), %eax
	movl	%eax, %ecx
	andl	$-115, %ecx
	cmpl	$128, %ecx
	je	.L138
.L123:
	movl	$2, %edi
	call	*PyTuple_New@GOTPCREL(%rip)
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L135
	incq	(%rbx)
	movq	%rbx, 24(%rax)
	incq	0(%r13)
	movq	%r13, 32(%rax)
	movq	8(%rbp), %rax
	incq	0(%rbp)
	movq	128(%rax), %rbx
	testq	%rbx, %rbx
	je	.L139
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L131
	xorl	%edx, %edx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	*%rbx
	movq	%rax, %r13
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	testq	%r13, %r13
	je	.L140
.L129:
	decq	(%r12)
	je	.L141
	decq	0(%rbp)
	je	.L142
.L118:
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L143
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%r13, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L142:
	.cfi_restore_state
	movq	%rbp, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L118
	.p2align 4,,10
	.p2align 3
.L141:
	movq	%r12, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	decq	0(%rbp)
	jne	.L118
	jmp	.L142
	.p2align 4,,10
	.p2align 3
.L140:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	movq	%rax, %r13
	testq	%rax, %rax
	je	.L144
.L131:
	xorl	%r13d, %r13d
	jmp	.L129
	.p2align 4,,10
	.p2align 3
.L137:
	movq	%rdx, %xmm1
	movq	%rsi, %xmm0
	movq	%rbp, %rdi
	movq	%rsp, %rsi
	punpcklqdq	%xmm1, %xmm0
	movl	$2, %edx
	movaps	%xmm0, (%rsp)
	call	__Pyx_PyFunction_FastCallDict.constprop.0
	movq	%rax, %r13
	jmp	.L118
	.p2align 4,,10
	.p2align 3
.L135:
	xorl	%r13d, %r13d
	jmp	.L118
	.p2align 4,,10
	.p2align 3
.L138:
	movq	%rbx, %xmm0
	movq	%r13, %xmm2
	movq	8(%rdx), %r8
	xorl	%edi, %edi
	punpcklqdq	%xmm2, %xmm0
	movaps	%xmm0, (%rsp)
	testb	$32, %al
	je	.L145
.L125:
	movq	%rsp, %rsi
	testb	$2, %al
	jne	.L146
	movl	$2, %edx
	call	*%r8
	movq	%rax, %r13
	jmp	.L118
	.p2align 4,,10
	.p2align 3
.L139:
	xorl	%edx, %edx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	*PyObject_Call@GOTPCREL(%rip)
	movq	%rax, %r13
	jmp	.L129
	.p2align 4,,10
	.p2align 3
.L145:
	movq	24(%rbp), %rdi
	jmp	.L125
.L144:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	jmp	.L129
.L146:
	xorl	%ecx, %ecx
	movl	$2, %edx
	call	*%r8
	movq	%rax, %r13
	jmp	.L118
.L143:
	call	*__stack_chk_fail@GOTPCREL(%rip)
	.cfi_endproc
.LFE189:
	.size	__Pyx_PyObject_Call2Args, .-__Pyx_PyObject_Call2Args
	.section	.rodata.str1.1
.LC12:
	.string	"name '%U' is not defined"
	.section	.text.__Pyx_GetBuiltinName,"ax",@progbits
	.p2align 4
	.type	__Pyx_GetBuiltinName, @function
__Pyx_GetBuiltinName:
.LFB177:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%r13, %rsi
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	__pyx_b(%rip), %rdi
	movq	8(%rdi), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L148
	call	*%rax
	movq	%rax, %r12
	testq	%r12, %r12
	je	.L152
.L147:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%r12, %rax
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L148:
	.cfi_restore_state
	call	*PyObject_GetAttr@GOTPCREL(%rip)
	movq	%rax, %r12
	testq	%r12, %r12
	jne	.L147
.L152:
	movq	PyExc_NameError@GOTPCREL(%rip), %rax
	movq	%r13, %rdx
	leaq	.LC12(%rip), %rsi
	movq	(%rax), %rdi
	xorl	%eax, %eax
	call	*PyErr_Format@GOTPCREL(%rip)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movq	%r12, %rax
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE177:
	.size	__Pyx_GetBuiltinName, .-__Pyx_GetBuiltinName
	.section	.text.__Pyx__GetModuleGlobalName,"ax",@progbits
	.p2align 4
	.type	__Pyx__GetModuleGlobalName, @function
__Pyx__GetModuleGlobalName:
.LFB181:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rsi, %r13
	movq	%rdi, %rsi
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdx, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	24(%rdi), %rdx
	movq	__pyx_d(%rip), %rdi
	call	*_PyDict_GetItem_KnownHash@GOTPCREL(%rip)
	movq	%rax, %r12
	movq	__pyx_d(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, 0(%r13)
	movq	%r12, (%rbx)
	testq	%r12, %r12
	je	.L154
	incq	(%r12)
.L153:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%r12, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L154:
	.cfi_restore_state
	call	*PyErr_Occurred@GOTPCREL(%rip)
	testq	%rax, %rax
	jne	.L153
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	movq	%rbp, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	__Pyx_GetBuiltinName
	.cfi_endproc
.LFE181:
	.size	__Pyx__GetModuleGlobalName, .-__Pyx__GetModuleGlobalName
	.section	.rodata.str1.1
.LC13:
	.string	"output.c"
.LC14:
	.string	"%s (%s:%d)"
	.section	.text.__Pyx_AddTraceback,"ax",@progbits
	.p2align 4
	.type	__Pyx_AddTraceback, @function
__Pyx_AddTraceback:
.LFB198:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rcx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%esi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edx, %ebx
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	call	*_PyThreadState_UncheckedGet@GOTPCREL(%rip)
	movq	__pyx_cython_runtime(%rip), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	je	.L158
	movq	88(%rax), %rax
	pxor	%xmm0, %xmm0
	movq	104(%rbp), %r15
	movq	$0, 104(%rbp)
	movq	%rax, (%rsp)
	movq	96(%rbp), %rax
	movups	%xmm0, 88(%rbp)
	movq	%rax, 8(%rsp)
	call	*_PyObject_GetDictPtr@GOTPCREL(%rip)
	movq	%rax, %rcx
	testq	%rax, %rax
	je	.L159
	movq	(%rax), %rdi
	movq	__pyx_dict_version.13654(%rip), %rax
	cmpq	%rax, 24(%rdi)
	jne	.L160
	movq	__pyx_dict_cached_value.13655(%rip), %r8
.L161:
	testq	%r8, %r8
	je	.L168
	movq	_Py_FalseStruct@GOTPCREL(%rip), %rax
.L167:
	cmpq	%rax, %r8
	je	.L172
	cmpq	_Py_TrueStruct@GOTPCREL(%rip), %r8
	je	.L169
	movq	%r8, %rdi
	call	*PyObject_Not@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L169
.L172:
	xorl	%r12d, %r12d
	jmp	.L169
.L164:
	call	*PyErr_Clear@GOTPCREL(%rip)
	.p2align 4,,10
	.p2align 3
.L168:
	movq	_Py_FalseStruct@GOTPCREL(%rip), %rdx
	movq	__pyx_n_s_cline_in_traceback(%rip), %rsi
	xorl	%r12d, %r12d
	movq	__pyx_cython_runtime(%rip), %rdi
	call	*PyObject_SetAttr@GOTPCREL(%rip)
.L169:
	movq	(%rsp), %xmm0
	movq	88(%rbp), %rdi
	movq	96(%rbp), %r9
	movq	104(%rbp), %r8
	movq	%r15, 104(%rbp)
	movhps	8(%rsp), %xmm0
	movups	%xmm0, 88(%rbp)
	testq	%rdi, %rdi
	je	.L174
	decq	(%rdi)
	je	.L233
.L174:
	testq	%r9, %r9
	je	.L177
	decq	(%r9)
	je	.L234
.L177:
	testq	%r8, %r8
	je	.L180
	decq	(%r8)
	je	.L235
.L180:
	movl	%ebx, %r15d
	testl	%r12d, %r12d
	je	.L182
.L158:
	movl	%r12d, %r15d
	negl	%r15d
.L182:
	movq	8+__pyx_code_cache(%rip), %rdi
	testq	%rdi, %rdi
	je	.L183
	movl	__pyx_code_cache(%rip), %r9d
	movl	%r15d, %edx
	movl	%r9d, %esi
	call	__pyx_bisect_code_objects
	cmpl	%eax, %r9d
	jle	.L183
	cltq
	salq	$4, %rax
	addq	%rdi, %rax
	cmpl	%r15d, 8(%rax)
	jne	.L183
	movq	(%rax), %r12
	incq	(%r12)
.L184:
	movq	%rbp, %rdi
	movq	__pyx_d(%rip), %rdx
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	call	*PyFrame_New@GOTPCREL(%rip)
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L198
	movl	%ebx, 108(%rax)
	movq	%rax, %rdi
	call	*PyTraceBack_Here@GOTPCREL(%rip)
	decq	(%r12)
	je	.L236
	decq	0(%rbp)
	movq	%rbp, %rdi
	je	.L232
.L157:
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L198:
	.cfi_restore_state
	decq	(%r12)
	jne	.L157
	movq	%r12, %rdi
.L232:
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	*_Py_Dealloc@GOTPCREL(%rip)
	.p2align 4,,10
	.p2align 3
.L236:
	.cfi_restore_state
	movq	%r12, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	decq	0(%rbp)
	movq	%rbp, %rdi
	jne	.L157
	jmp	.L232
	.p2align 4,,10
	.p2align 3
.L183:
	movq	%r13, %rdi
	call	*PyUnicode_FromString@GOTPCREL(%rip)
	movq	%rax, %r13
	testq	%rax, %rax
	je	.L157
	testl	%r12d, %r12d
	jne	.L237
	movq	%r14, %rdi
	call	*PyUnicode_FromString@GOTPCREL(%rip)
	movq	%rax, %r14
.L188:
	testq	%r14, %r14
	je	.L189
	movq	__pyx_empty_tuple(%rip), %rax
	subq	$8, %rsp
	.cfi_def_cfa_offset 104
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	movq	__pyx_empty_bytes(%rip), %r9
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%edi, %edi
	pushq	%r9
	.cfi_def_cfa_offset 112
	pushq	%rbx
	.cfi_def_cfa_offset 120
	pushq	%r14
	.cfi_def_cfa_offset 128
	pushq	%r13
	.cfi_def_cfa_offset 136
	pushq	%rax
	.cfi_def_cfa_offset 144
	pushq	%rax
	.cfi_def_cfa_offset 152
	pushq	%rax
	.cfi_def_cfa_offset 160
	pushq	%rax
	.cfi_def_cfa_offset 168
	pushq	%rax
	.cfi_def_cfa_offset 176
	call	*PyCode_New@GOTPCREL(%rip)
	movq	%rax, %r12
	movq	0(%r13), %rax
	addq	$80, %rsp
	.cfi_def_cfa_offset 96
	decq	%rax
	movq	%rax, 0(%r13)
	testq	%rax, %rax
	je	.L238
.L190:
	decq	(%r14)
	je	.L239
.L191:
	testq	%r12, %r12
	je	.L157
	movq	8+__pyx_code_cache(%rip), %rdi
	testl	%r15d, %r15d
	je	.L184
	testq	%rdi, %rdi
	je	.L240
	movl	__pyx_code_cache(%rip), %r9d
	movl	%r15d, %edx
	movl	%r9d, %esi
	call	__pyx_bisect_code_objects
	movslq	%eax, %r13
	cmpl	%r13d, %r9d
	jle	.L194
	movslq	%r13d, %rsi
	salq	$4, %rsi
	addq	%rdi, %rsi
	cmpl	%r15d, 8(%rsi)
	je	.L241
	cmpl	%r9d, 4+__pyx_code_cache(%rip)
	je	.L202
.L203:
	leal	-1(%r9), %ecx
	movl	%r9d, %edx
	movslq	%ecx, %rcx
	salq	$4, %rcx
	addq	%rdi, %rcx
	.p2align 4,,10
	.p2align 3
.L197:
	movdqu	(%rcx), %xmm1
	movslq	%edx, %rax
	decl	%edx
	subq	$16, %rcx
	salq	$4, %rax
	movups	%xmm1, (%rdi,%rax)
	cmpl	%edx, %r13d
	jl	.L197
.L196:
	incl	%r9d
	movl	%r15d, 8(%rsi)
	movq	%r12, (%rsi)
	movl	%r9d, __pyx_code_cache(%rip)
	incq	(%r12)
	jmp	.L184
	.p2align 4,,10
	.p2align 3
.L237:
	movq	%r14, %rsi
	movl	%r12d, %ecx
	leaq	.LC13(%rip), %rdx
	xorl	%eax, %eax
	leaq	.LC14(%rip), %rdi
	call	*PyUnicode_FromFormat@GOTPCREL(%rip)
	movq	%rax, %r14
	jmp	.L188
	.p2align 4,,10
	.p2align 3
.L189:
	decq	0(%r13)
	jne	.L157
	movq	%r13, %rdi
	jmp	.L232
	.p2align 4,,10
	.p2align 3
.L194:
	cmpl	%r9d, 4+__pyx_code_cache(%rip)
	jne	.L242
.L202:
	leal	64(%r9), %r14d
	movslq	%r14d, %rsi
	salq	$4, %rsi
	call	*PyMem_Realloc@GOTPCREL(%rip)
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L184
	movslq	%r13d, %rsi
	movl	__pyx_code_cache(%rip), %r9d
	movq	%rax, 8+__pyx_code_cache(%rip)
	salq	$4, %rsi
	movl	%r14d, 4+__pyx_code_cache(%rip)
	addq	%rax, %rsi
	cmpl	%r9d, %r13d
	jl	.L203
	jmp	.L196
	.p2align 4,,10
	.p2align 3
.L233:
	movq	%r8, 8(%rsp)
	movq	%r9, (%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	8(%rsp), %r8
	movq	(%rsp), %r9
	jmp	.L174
	.p2align 4,,10
	.p2align 3
.L234:
	movq	%r8, (%rsp)
	movq	%r9, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	(%rsp), %r8
	jmp	.L177
	.p2align 4,,10
	.p2align 3
.L235:
	movq	%r8, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L180
	.p2align 4,,10
	.p2align 3
.L239:
	movq	%r14, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L191
	.p2align 4,,10
	.p2align 3
.L238:
	movq	%r13, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L190
	.p2align 4,,10
	.p2align 3
.L159:
	movq	__pyx_cython_runtime(%rip), %rdi
	movq	__pyx_n_s_cline_in_traceback(%rip), %rsi
	movq	8(%rdi), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L162
	call	*%rax
	movq	%rax, %rdi
.L163:
	testq	%rdi, %rdi
	je	.L164
	movq	%rdi, 16(%rsp)
	call	*PyObject_Not@GOTPCREL(%rip)
	movq	16(%rsp), %rdi
	testl	%eax, %eax
	movq	(%rdi), %rax
	jne	.L165
	decq	%rax
	movq	%rax, (%rdi)
	je	.L243
	movq	_Py_FalseStruct@GOTPCREL(%rip), %rax
	cmpq	%rax, _Py_TrueStruct@GOTPCREL(%rip)
	jne	.L169
	jmp	.L172
	.p2align 4,,10
	.p2align 3
.L160:
	movq	__pyx_n_s_cline_in_traceback(%rip), %rsi
	movq	%rcx, 16(%rsp)
	movq	24(%rsi), %rdx
	call	*_PyDict_GetItem_KnownHash@GOTPCREL(%rip)
	movq	16(%rsp), %rcx
	movq	%rax, __pyx_dict_cached_value.13655(%rip)
	movq	%rax, %r8
	movq	(%rcx), %rax
	movq	24(%rax), %rax
	movq	%rax, __pyx_dict_version.13654(%rip)
	jmp	.L161
	.p2align 4,,10
	.p2align 3
.L240:
	movl	$1024, %edi
	call	*PyMem_Malloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.L184
	movabsq	$274877906945, %rsi
	movq	%rax, 8+__pyx_code_cache(%rip)
	movq	%rsi, __pyx_code_cache(%rip)
	movl	%r15d, 8(%rax)
	movq	%r12, (%rax)
	incq	(%r12)
	jmp	.L184
	.p2align 4,,10
	.p2align 3
.L242:
	salq	$4, %r13
	leaq	(%rdi,%r13), %rsi
	jmp	.L196
	.p2align 4,,10
	.p2align 3
.L165:
	decq	%rax
	movq	%rax, (%rdi)
	jne	.L172
	movq	_Py_FalseStruct@GOTPCREL(%rip), %rax
	movq	%rax, %r8
.L205:
	movq	%rax, 24(%rsp)
	movq	%r8, 16(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	16(%rsp), %r8
	movq	24(%rsp), %rax
	jmp	.L167
.L241:
	movq	(%rsi), %rdi
	movq	%r12, (%rsi)
	decq	(%rdi)
	jne	.L184
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L184
.L243:
	movq	_Py_TrueStruct@GOTPCREL(%rip), %r8
	movq	_Py_FalseStruct@GOTPCREL(%rip), %rax
	jmp	.L205
.L162:
	call	*PyObject_GetAttr@GOTPCREL(%rip)
	movq	%rax, %rdi
	jmp	.L163
	.cfi_endproc
.LFE198:
	.size	__Pyx_AddTraceback, .-__Pyx_AddTraceback
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"Module 'output' has already been imported. Re-initialisation is not supported."
	.section	.rodata.str1.1
.LC16:
	.string	"%d.%d"
.LC17:
	.string	"%s"
.LC18:
	.string	"output"
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"compiletime version %s of module '%.100s' does not match runtime version %s"
	.section	.rodata.str1.1
.LC20:
	.string	""
.LC21:
	.string	"builtins"
.LC22:
	.string	"cython_runtime"
.LC23:
	.string	"__builtins__"
.LC24:
	.string	"2388317100"
.LC25:
	.string	"3879782983"
.LC26:
	.string	"4217206544"
.LC27:
	.string	"30979330271"
.LC28:
	.string	"37675211133"
.LC29:
	.string	"48993801750"
.LC30:
	.string	"55700720745"
.LC31:
	.string	"67374456587"
.LC32:
	.string	"535767221581"
.LC33:
	.string	"output.pyx"
.LC34:
	.string	"init output"
	.section	.text.unlikely.__pyx_pymod_exec_output,"ax",@progbits
	.type	__pyx_pymod_exec_output, @function
__pyx_pymod_exec_output:
.LFB175:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$224, %rsp
	.cfi_def_cfa_offset 272
	movq	__pyx_m(%rip), %rdx
	movq	%fs:40, %rax
	movq	%rax, 216(%rsp)
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.L245
	cmpq	%rdi, %rdx
	je	.L244
	movq	PyExc_RuntimeError@GOTPCREL(%rip), %rax
	leaq	.LC15(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	orl	$-1, %eax
	jmp	.L244
.L245:
	leaq	8(%rsp), %r13
	movl	$9, %r8d
	xorl	%eax, %eax
	movl	$3, %ecx
	leaq	.LC16(%rip), %rdx
	movl	$4, %esi
	movq	%r13, %rdi
	call	*PyOS_snprintf@GOTPCREL(%rip)
	leaq	12(%rsp), %rbx
	call	*Py_GetVersion@GOTPCREL(%rip)
	leaq	.LC17(%rip), %rdx
	movl	$4, %esi
	movq	%rbx, %rdi
	movq	%rax, %rcx
	xorl	%eax, %eax
	call	*PyOS_snprintf@GOTPCREL(%rip)
	movb	12(%rsp), %al
	cmpb	%al, 8(%rsp)
	jne	.L247
	movb	14(%rsp), %al
	cmpb	%al, 10(%rsp)
	je	.L248
.L247:
	leaq	16(%rsp), %r12
	movl	$200, %esi
	xorl	%eax, %eax
	movq	%rbx, %r9
	leaq	.LC19(%rip), %rdx
	movq	%r12, %rdi
	leaq	.LC18(%rip), %r8
	movq	%r13, %rcx
	call	*PyOS_snprintf@GOTPCREL(%rip)
	xorl	%edi, %edi
	movl	$1, %edx
	movq	%r12, %rsi
	call	*PyErr_WarnEx@GOTPCREL(%rip)
	testl	%eax, %eax
	js	.L288
.L248:
	movq	PyFrame_Type@GOTPCREL(%rip), %rax
	xorl	%edi, %edi
	movq	32(%rax), %rax
	subq	$8, %rax
	movq	%rax, __pyx_pyframe_localsplus_offset(%rip)
	call	*PyTuple_New@GOTPCREL(%rip)
	movq	%rax, __pyx_empty_tuple(%rip)
	testq	%rax, %rax
	je	.L289
	xorl	%esi, %esi
	leaq	.LC20(%rip), %rdi
	call	*PyBytes_FromStringAndSize@GOTPCREL(%rip)
	movq	%rax, __pyx_empty_bytes(%rip)
	testq	%rax, %rax
	je	.L290
	xorl	%esi, %esi
	leaq	.LC20(%rip), %rdi
	call	*PyUnicode_FromStringAndSize@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.L291
	incq	0(%rbp)
	movq	%rbp, %rdi
	movq	%rbp, __pyx_m(%rip)
	call	*PyModule_GetDict@GOTPCREL(%rip)
	movq	%rax, __pyx_d(%rip)
	testq	%rax, %rax
	je	.L292
	incq	(%rax)
	leaq	.LC21(%rip), %rdi
	call	*PyImport_AddModule@GOTPCREL(%rip)
	movq	%rax, __pyx_b(%rip)
	testq	%rax, %rax
	je	.L293
	incq	(%rax)
	leaq	.LC22(%rip), %rdi
	call	*PyImport_AddModule@GOTPCREL(%rip)
	movq	%rax, __pyx_cython_runtime(%rip)
	testq	%rax, %rax
	je	.L294
	incq	(%rax)
	movq	__pyx_b(%rip), %rdx
	leaq	.LC23(%rip), %rsi
	movl	$3606, %r12d
	movq	__pyx_m(%rip), %rdi
	movl	$1, %r13d
	leaq	__pyx_string_tab(%rip), %rbp
	call	*PyObject_SetAttrString@GOTPCREL(%rip)
	testl	%eax, %eax
	js	.L249
.L250:
	movq	0(%rbp), %r12
	testq	%r12, %r12
	je	.L538
	movb	32(%rbp), %al
	orb	33(%rbp), %al
	movq	8(%rbp), %rdi
	je	.L251
	cmpb	$0, 34(%rbp)
	je	.L252
	call	*PyUnicode_InternFromString@GOTPCREL(%rip)
	movq	%rax, (%r12)
	jmp	.L253
.L252:
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	leaq	-1(%rax), %rsi
	testq	%rdx, %rdx
	je	.L254
	xorl	%ecx, %ecx
	call	*PyUnicode_Decode@GOTPCREL(%rip)
	movq	%rax, (%r12)
	jmp	.L253
.L254:
	call	*PyUnicode_FromStringAndSize@GOTPCREL(%rip)
	movq	%rax, (%r12)
	jmp	.L253
.L251:
	movq	16(%rbp), %rax
	leaq	-1(%rax), %rsi
	call	*PyBytes_FromStringAndSize@GOTPCREL(%rip)
	movq	%rax, (%r12)
.L253:
	movq	0(%rbp), %rax
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	.L306
	call	*PyObject_Hash@GOTPCREL(%rip)
	incq	%rax
	je	.L306
	addq	$40, %rbp
	jmp	.L250
.L288:
	movl	$3558, %r12d
	movl	$1, %r13d
	jmp	.L249
.L289:
	movl	$3562, %r12d
	movl	$1, %r13d
	jmp	.L249
.L290:
	movl	$3563, %r12d
	movl	$1, %r13d
	jmp	.L249
.L291:
	movl	$3564, %r12d
	movl	$1, %r13d
	jmp	.L249
.L292:
	movl	$3600, %r12d
	movl	$1, %r13d
	jmp	.L249
.L293:
	movl	$3602, %r12d
	movl	$1, %r13d
	jmp	.L249
.L294:
	movl	$3604, %r12d
	movl	$1, %r13d
	jmp	.L249
.L538:
	xorl	%edi, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_0(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$1, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_1(%rip)
	testq	%rax, %rax
	jne	.L545
.L306:
	movl	$3608, %r12d
	movl	$1, %r13d
.L249:
	cmpq	$0, __pyx_m(%rip)
	je	.L277
	cmpq	$0, __pyx_d(%rip)
	je	.L278
	leaq	.LC33(%rip), %rcx
	movl	%r13d, %edx
	movl	%r12d, %esi
	leaq	.LC34(%rip), %rdi
	call	__Pyx_AddTraceback
.L278:
	movq	__pyx_m(%rip), %rdi
	testq	%rdi, %rdi
	je	.L276
	decq	(%rdi)
	movq	$0, __pyx_m(%rip)
	jne	.L276
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L276
.L277:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	testq	%rax, %rax
	jne	.L276
	movq	PyExc_ImportError@GOTPCREL(%rip), %rax
	leaq	.LC34(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
.L276:
	xorl	%eax, %eax
	cmpq	$0, __pyx_m(%rip)
	sete	%al
	negl	%eax
	jmp	.L244
.L545:
	movl	$2, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_2(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$3, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_3(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$4, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_4(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$5, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_5(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$6, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_6(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$7, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_7(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$8, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_8(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$9, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_9(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$10, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_10(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$11, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_11(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$12, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_12(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$13, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_13(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$14, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_14(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$15, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_15(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$53, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_53(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$80, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_80(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$84, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_84(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$86, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_86(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$92, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_92(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$95, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_95(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$102, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_102(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$116, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_116(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$120, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_120(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$131, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_131(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$139, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_139(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$151, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_151(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$159, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_159(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$161, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_161(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$193, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_193(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$200, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_200(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$208, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_208(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$211, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_211(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$220, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_220(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$230, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_230(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$254, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_254(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$547, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_547(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$689, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_689(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$826, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_826(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$2007, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_2007(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$3462, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_3462(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$14698, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_14698(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$18956, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_18956(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$19219, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_19219(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$25736, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_25736(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$35056, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_35056(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$44586, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_44586(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$46058, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_46058(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$49769, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_49769(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$198398, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_198398(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$289600, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_289600(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$522179, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_522179(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$580431, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_580431(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$664609, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_664609(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$886515, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_886515(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$8599772, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_8599772(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$12998225, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_12998225(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$196905722, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_196905722(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$1176227742, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_1176227742(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$1466502782, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_1466502782(%rip)
	testq	%rax, %rax
	je	.L306
	movl	$1736671104, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	%rax, __pyx_int_1736671104(%rip)
	testq	%rax, %rax
	je	.L306
	xorl	%edx, %edx
	xorl	%esi, %esi
	leaq	.LC24(%rip), %rdi
	call	*PyLong_FromString@GOTPCREL(%rip)
	movq	%rax, __pyx_int_2388317100(%rip)
	testq	%rax, %rax
	je	.L306
	xorl	%edx, %edx
	xorl	%esi, %esi
	leaq	.LC25(%rip), %rdi
	call	*PyLong_FromString@GOTPCREL(%rip)
	movq	%rax, __pyx_int_3879782983(%rip)
	testq	%rax, %rax
	je	.L306
	xorl	%edx, %edx
	xorl	%esi, %esi
	leaq	.LC26(%rip), %rdi
	call	*PyLong_FromString@GOTPCREL(%rip)
	movq	%rax, __pyx_int_4217206544(%rip)
	testq	%rax, %rax
	je	.L306
	xorl	%edx, %edx
	xorl	%esi, %esi
	leaq	.LC27(%rip), %rdi
	call	*PyLong_FromString@GOTPCREL(%rip)
	movq	%rax, __pyx_int_30979330271(%rip)
	testq	%rax, %rax
	je	.L306
	xorl	%edx, %edx
	xorl	%esi, %esi
	leaq	.LC28(%rip), %rdi
	call	*PyLong_FromString@GOTPCREL(%rip)
	movq	%rax, __pyx_int_37675211133(%rip)
	testq	%rax, %rax
	je	.L306
	xorl	%edx, %edx
	xorl	%esi, %esi
	leaq	.LC29(%rip), %rdi
	call	*PyLong_FromString@GOTPCREL(%rip)
	movq	%rax, __pyx_int_48993801750(%rip)
	testq	%rax, %rax
	je	.L306
	xorl	%edx, %edx
	xorl	%esi, %esi
	leaq	.LC30(%rip), %rdi
	call	*PyLong_FromString@GOTPCREL(%rip)
	movq	%rax, __pyx_int_55700720745(%rip)
	testq	%rax, %rax
	je	.L306
	xorl	%edx, %edx
	xorl	%esi, %esi
	leaq	.LC31(%rip), %rdi
	call	*PyLong_FromString@GOTPCREL(%rip)
	movq	%rax, __pyx_int_67374456587(%rip)
	testq	%rax, %rax
	je	.L306
	xorl	%edx, %edx
	xorl	%esi, %esi
	leaq	.LC32(%rip), %rdi
	call	*PyLong_FromString@GOTPCREL(%rip)
	movq	%rax, __pyx_int_535767221581(%rip)
	testq	%rax, %rax
	je	.L306
	movq	__pyx_module_is_main_output@GOTPCREL(%rip), %rax
	cmpl	$0, (%rax)
	je	.L284
	movq	__pyx_n_s_main(%rip), %rdx
	movq	__pyx_n_s_name(%rip), %rsi
	movq	__pyx_m(%rip), %rdi
	call	*PyObject_SetAttr@GOTPCREL(%rip)
	testl	%eax, %eax
	js	.L296
.L284:
	call	*PyImport_GetModuleDict@GOTPCREL(%rip)
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L297
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	*PyDict_GetItemString@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.L260
.L263:
	movq	__pyx_n_s_sum(%rip), %rdi
	call	__Pyx_GetBuiltinName
	movq	%rax, __pyx_builtin_sum(%rip)
	testq	%rax, %rax
	je	.L261
	jmp	.L540
.L260:
	movq	__pyx_m(%rip), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rbp, %rdi
	call	*PyDict_SetItemString@GOTPCREL(%rip)
	testl	%eax, %eax
	jns	.L263
	movl	$3619, %r12d
	movl	$1, %r13d
	jmp	.L249
.L540:
	movq	__pyx_n_s_min(%rip), %rdi
	call	__Pyx_GetBuiltinName
	movq	%rax, __pyx_builtin_min(%rip)
	testq	%rax, %rax
	jne	.L546
.L261:
	movl	$3624, %r12d
	movl	$1, %r13d
	jmp	.L249
.L546:
	movq	__pyx_n_s_max(%rip), %rdi
	call	__Pyx_GetBuiltinName
	movq	%rax, __pyx_builtin_max(%rip)
	testq	%rax, %rax
	je	.L261
	xorl	%eax, %eax
	movq	__pyx_n_s_x(%rip), %rsi
	movl	$1, %edi
	call	*PyTuple_Pack@GOTPCREL(%rip)
	testq	%rax, %rax
	jne	.L264
.L265:
	movl	$3626, %r12d
	movl	$1, %r13d
	jmp	.L249
.L264:
	movq	__pyx_empty_tuple(%rip), %rdx
	movq	__pyx_empty_bytes(%rip), %r9
	pushq	%rcx
	.cfi_def_cfa_offset 280
	movl	$3, %r8d
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	xorl	%edi, %edi
	pushq	%r9
	.cfi_def_cfa_offset 288
	pushq	$3
	.cfi_def_cfa_offset 296
	pushq	__pyx_n_s_calc_x(%rip)
	.cfi_def_cfa_offset 304
	pushq	__pyx_kp_s_output_pyx(%rip)
	.cfi_def_cfa_offset 312
	pushq	%rdx
	.cfi_def_cfa_offset 320
	pushq	%rdx
	.cfi_def_cfa_offset 328
	pushq	%rax
	.cfi_def_cfa_offset 336
	pushq	%rdx
	.cfi_def_cfa_offset 344
	pushq	%rdx
	.cfi_def_cfa_offset 352
	movl	$1, %edx
	call	*PyCode_New@GOTPCREL(%rip)
	addq	$80, %rsp
	.cfi_def_cfa_offset 272
	testq	%rax, %rax
	je	.L265
	movq	__pyx_n_s_math(%rip), %r14
	xorl	%edi, %edi
	call	*PyList_New@GOTPCREL(%rip)
	movq	%rax, %r13
	testq	%rax, %rax
	jne	.L266
.L271:
	movl	$3645, %r12d
	movl	$1, %r13d
	jmp	.L249
.L266:
	movq	__pyx_m(%rip), %rdi
	xorl	%r12d, %r12d
	call	*PyModule_GetDict@GOTPCREL(%rip)
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L267
	call	*PyDict_New@GOTPCREL(%rip)
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L300
	movq	%rbp, %rsi
	xorl	%r8d, %r8d
	movq	%r13, %rcx
	movq	%rax, %rdx
	movq	%r14, %rdi
	call	*PyImport_ImportModuleLevelObject@GOTPCREL(%rip)
	movq	%rax, %rbp
	jmp	.L267
.L296:
	movl	$3613, %r12d
	movl	$1, %r13d
	jmp	.L249
.L297:
	movl	$3617, %r12d
	movl	$1, %r13d
	jmp	.L249
.L300:
	xorl	%ebp, %ebp
.L267:
	decq	0(%r13)
	jne	.L281
	movq	%r13, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
.L281:
	testq	%r12, %r12
	je	.L269
	decq	(%r12)
	jne	.L269
	movq	%r12, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
.L269:
	testq	%rbp, %rbp
	je	.L271
	movq	__pyx_n_s_math(%rip), %rsi
	movq	__pyx_d(%rip), %rdi
	movq	%rbp, %rdx
	call	*PyDict_SetItem@GOTPCREL(%rip)
	testl	%eax, %eax
	js	.L301
	decq	0(%rbp)
	jne	.L273
	movq	%rbp, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
.L273:
	movq	__pyx_n_s_output(%rip), %rdx
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	leaq	__pyx_mdef_6output_1calc_x(%rip), %rdi
	call	*PyCMethod_New@GOTPCREL(%rip)
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L302
	movq	__pyx_n_s_calc_x(%rip), %rsi
	movq	__pyx_d(%rip), %rdi
	movq	%rax, %rdx
	call	*PyDict_SetItem@GOTPCREL(%rip)
	testl	%eax, %eax
	js	.L303
	decq	0(%rbp)
	jne	.L274
	movq	%rbp, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
.L274:
	call	*PyDict_New@GOTPCREL(%rip)
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L304
	movq	__pyx_n_s_test(%rip), %rsi
	movq	__pyx_d(%rip), %rdi
	movq	%rax, %rdx
	call	*PyDict_SetItem@GOTPCREL(%rip)
	testl	%eax, %eax
	js	.L305
	decq	0(%rbp)
	jne	.L276
	movq	%rbp, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L276
.L302:
	movl	$3657, %r12d
	movl	$3, %r13d
	jmp	.L249
.L304:
	movl	$3667, %r12d
	movl	$1, %r13d
	jmp	.L249
.L301:
	movl	$3647, %r12d
	movl	$1, %r13d
	jmp	.L272
.L303:
	movl	$3659, %r12d
	movl	$3, %r13d
	jmp	.L272
.L305:
	movl	$3669, %r12d
	movl	$1, %r13d
.L272:
	decq	0(%rbp)
	jne	.L249
	movq	%rbp, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L249
.L244:
	movq	216(%rsp), %rbx
	xorq	%fs:40, %rbx
	je	.L286
	call	*__stack_chk_fail@GOTPCREL(%rip)
.L286:
	addq	$224, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE175:
	.size	__pyx_pymod_exec_output, .-__pyx_pymod_exec_output
	.section	.rodata.str1.1
.LC35:
	.string	"output.calc_x"
	.section	.text.__pyx_pw_6output_1calc_x,"ax",@progbits
	.p2align 4
	.type	__pyx_pw_6output_1calc_x, @function
__pyx_pw_6output_1calc_x:
.LFB159:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$344, %rsp
	.cfi_def_cfa_offset 400
	movq	__pyx_dict_version.13277(%rip), %rsi
	movq	%fs:40, %rax
	movq	%rax, 328(%rsp)
	xorl	%eax, %eax
	movq	__pyx_d(%rip), %rax
	cmpq	%rsi, 24(%rax)
	jne	.L548
	movq	__pyx_dict_cached_value.13278(%rip), %rbx
	testq	%rbx, %rbx
	je	.L549
	incq	(%rbx)
.L550:
	movq	8(%rbx), %rax
	movq	__pyx_n_s_prod(%rip), %rsi
	movq	%rbx, %rdi
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L553
	call	*%rax
	movq	%rax, 16(%rsp)
.L554:
	cmpq	$0, 16(%rsp)
	je	.L1717
	decq	(%rbx)
	je	.L2327
.L555:
	movq	__pyx_d(%rip), %rax
	movq	__pyx_dict_version.13280(%rip), %rbx
	cmpq	%rbx, 24(%rax)
	jne	.L556
	movq	__pyx_dict_cached_value.13281(%rip), %rbx
	testq	%rbx, %rbx
	je	.L557
	incq	(%rbx)
.L558:
	movq	8(%rbx), %rax
	movq	__pyx_n_s_prod(%rip), %rsi
	movq	%rbx, %rdi
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L560
	call	*%rax
	movq	%rax, 8(%rsp)
.L561:
	cmpq	$0, 8(%rsp)
	je	.L1719
	decq	(%rbx)
	je	.L2328
.L562:
	movq	__pyx_d(%rip), %rax
	movq	__pyx_dict_version.13282(%rip), %rsi
	cmpq	%rsi, 24(%rax)
	jne	.L563
	movq	__pyx_dict_cached_value.13283(%rip), %rbx
	testq	%rbx, %rbx
	je	.L564
	incq	(%rbx)
.L565:
	movq	8(%rbx), %rax
	movq	__pyx_n_s_prod(%rip), %rsi
	movq	%rbx, %rdi
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L567
	call	*%rax
	movq	%rax, 24(%rsp)
.L568:
	cmpq	$0, 24(%rsp)
	je	.L1721
	decq	(%rbx)
	je	.L2329
.L569:
	movq	__pyx_d(%rip), %rax
	movq	__pyx_dict_version.13284(%rip), %rbx
	cmpq	%rbx, 24(%rax)
	jne	.L570
	movq	__pyx_dict_cached_value.13285(%rip), %rbx
	testq	%rbx, %rbx
	je	.L571
	incq	(%rbx)
.L572:
	movq	8(%rbx), %rax
	movq	__pyx_n_s_prod(%rip), %rsi
	movq	%rbx, %rdi
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L574
	call	*%rax
	movq	%rax, %rbp
.L575:
	testq	%rbp, %rbp
	je	.L1723
	decq	(%rbx)
	je	.L2330
.L576:
	movq	__pyx_d(%rip), %rax
	movq	__pyx_dict_version.13286(%rip), %rsi
	cmpq	%rsi, 24(%rax)
	jne	.L577
	movq	__pyx_dict_cached_value.13287(%rip), %rbx
	testq	%rbx, %rbx
	je	.L578
	incq	(%rbx)
.L579:
	movq	8(%rbx), %rax
	movq	__pyx_n_s_prod(%rip), %rsi
	movq	%rbx, %rdi
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L581
	call	*%rax
	movq	%rax, %r13
.L582:
	testq	%r13, %r13
	je	.L1725
	decq	(%rbx)
	je	.L2331
.L583:
	movl	$1, %edi
	call	*PyList_New@GOTPCREL(%rip)
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L1726
	movq	__pyx_int_1736671104(%rip), %rax
	movq	__pyx_builtin_min(%rip), %r15
	movq	24(%r12), %rdx
	incq	(%rax)
	movq	8(%r15), %rdi
	cmpq	PyFunction_Type@GOTPCREL(%rip), %rdi
	movq	%rax, (%rdx)
	movq	%r12, 320(%rsp)
	je	.L2332
	cmpq	PyCFunction_Type@GOTPCREL(%rip), %rdi
	jne	.L2333
	movq	16(%r15), %rdx
	movq	%r12, %rbx
	movl	16(%rdx), %eax
	testb	$8, %al
	je	.L593
.L1714:
	movq	8(%rdx), %rdx
	xorl	%r14d, %r14d
	movq	%rdx, 32(%rsp)
	testb	$32, %al
	je	.L2334
.L589:
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L2335
	movq	%r14, %rdi
	movq	32(%rsp), %rax
	movq	%rbx, %rsi
	call	*%rax
	movq	%rax, %r14
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	testq	%r14, %r14
	je	.L2336
.L1687:
	decq	(%r12)
	je	.L2337
.L603:
	movl	$1, %edi
	call	*PyList_New@GOTPCREL(%rip)
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L1730
	movq	__pyx_builtin_sum(%rip), %r15
	movq	24(%rax), %rax
	movq	8(%r15), %rdi
	cmpq	PyFunction_Type@GOTPCREL(%rip), %rdi
	movq	%r14, (%rax)
	movq	%r12, 320(%rsp)
	je	.L2338
	cmpq	PyCFunction_Type@GOTPCREL(%rip), %rdi
	jne	.L2339
	movq	16(%r15), %rdx
	movq	%r12, %rbx
	movl	16(%rdx), %eax
	testb	$8, %al
	je	.L613
.L1713:
	movq	8(%rdx), %rsi
	xorl	%r14d, %r14d
	movq	%rsi, 32(%rsp)
	testb	$32, %al
	jne	.L609
	movq	24(%r15), %r14
.L609:
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L2340
	movq	%r14, %rdi
	movq	32(%rsp), %rax
	movq	%rbx, %rsi
	call	*%rax
	movq	%rax, %r14
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	testq	%r14, %r14
	je	.L2341
.L1683:
	decq	(%r12)
	je	.L2342
.L623:
	movl	$1, %edi
	call	*PyList_New@GOTPCREL(%rip)
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.L1734
	movq	24(%rax), %rax
	movq	8(%r13), %rdi
	cmpq	PyMethod_Type@GOTPCREL(%rip), %rdi
	movq	%r14, (%rax)
	je	.L2343
.L624:
	cmpq	PyFunction_Type@GOTPCREL(%rip), %rdi
	movq	%rbx, 320(%rsp)
	je	.L2344
	cmpq	PyCFunction_Type@GOTPCREL(%rip), %rdi
	jne	.L2345
	movq	16(%r13), %rax
	movq	%rbx, %r12
	movl	16(%rax), %edx
	testb	$8, %dl
	je	.L636
.L1712:
	xorl	%r15d, %r15d
	andl	$32, %edx
	movq	8(%rax), %r14
	jne	.L631
	movq	24(%r13), %r15
.L631:
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L633
	movq	%r15, %rdi
	movq	%r12, %rsi
	call	*%r14
	movq	%rax, %r15
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	testq	%r15, %r15
	je	.L2346
.L627:
	movq	%r13, %r12
.L643:
	decq	(%rbx)
	je	.L2347
.L644:
	testq	%r15, %r15
	je	.L1737
	decq	(%r12)
	je	.L2348
.L645:
	movl	$1, %edi
	call	*PyList_New@GOTPCREL(%rip)
	movq	%rax, %r13
	testq	%rax, %rax
	je	.L1738
	movq	24(%rax), %rax
	movq	%r15, (%rax)
	movq	__pyx_builtin_max(%rip), %r15
	movq	%r13, 320(%rsp)
	movq	8(%r15), %rdi
	cmpq	PyFunction_Type@GOTPCREL(%rip), %rdi
	je	.L2349
	cmpq	PyCFunction_Type@GOTPCREL(%rip), %rdi
	jne	.L2350
	movq	16(%r15), %rdx
	movq	%r13, %r12
	movl	16(%rdx), %eax
	testb	$8, %al
	je	.L655
.L1711:
	movq	8(%rdx), %r14
	xorl	%ebx, %ebx
	testb	$32, %al
	jne	.L651
	movq	24(%r15), %rbx
.L651:
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L2351
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	*%r14
	movq	%rax, %r15
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	testq	%r15, %r15
	je	.L2352
.L1678:
	decq	0(%r13)
	je	.L2353
.L665:
	movl	$1, %edi
	call	*PyList_New@GOTPCREL(%rip)
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.L1742
	movq	24(%rax), %rax
	movq	8(%rbp), %rdi
	cmpq	PyMethod_Type@GOTPCREL(%rip), %rdi
	movq	%r15, (%rax)
	je	.L2354
.L666:
	cmpq	PyFunction_Type@GOTPCREL(%rip), %rdi
	movq	%rbx, 320(%rsp)
	je	.L2355
	cmpq	PyCFunction_Type@GOTPCREL(%rip), %rdi
	jne	.L2356
	movq	16(%rbp), %rax
	movq	%rbx, %r15
	movl	16(%rax), %edx
	testb	$8, %dl
	je	.L678
.L1710:
	xorl	%r14d, %r14d
	andl	$32, %edx
	movq	8(%rax), %r13
	jne	.L673
	movq	24(%rbp), %r14
.L673:
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L675
	movq	%r15, %rsi
	movq	%r14, %rdi
	call	*%r13
	movq	%rax, 32(%rsp)
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	testq	%r8, %r8
	je	.L2357
.L669:
	movq	%rbp, %r15
.L685:
	decq	(%rbx)
	je	.L2358
.L686:
	testq	%r8, %r8
	je	.L1745
	decq	(%r15)
	je	.L2359
.L687:
	movq	%r8, 32(%rsp)
	movl	$1, %edi
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	testq	%rax, %rax
	movq	%rax, %rbp
	je	.L1746
	movq	__pyx_builtin_min(%rip), %r14
	movq	24(%rax), %rax
	movq	8(%r14), %rdi
	cmpq	PyFunction_Type@GOTPCREL(%rip), %rdi
	movq	%r8, (%rax)
	movq	%rbp, 320(%rsp)
	je	.L2360
	cmpq	PyCFunction_Type@GOTPCREL(%rip), %rdi
	jne	.L2361
	movq	16(%r14), %rdx
	movq	%rbp, %r12
	movl	16(%rdx), %eax
	testb	$8, %al
	je	.L697
.L1709:
	movq	8(%rdx), %r13
	xorl	%r15d, %r15d
	testb	$32, %al
	je	.L2362
.L693:
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L2363
	movq	%r12, %rsi
	movq	%r15, %rdi
	call	*%r13
	movq	%rax, 32(%rsp)
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	testq	%r8, %r8
	je	.L2364
.L1673:
	decq	0(%rbp)
	je	.L2365
.L707:
	movq	%r8, 32(%rsp)
	movl	$1, %edi
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	testq	%rax, %rax
	movq	%rax, %rbp
	je	.L1750
	movq	__pyx_builtin_min(%rip), %r14
	movq	24(%rax), %rax
	movq	8(%r14), %rdi
	cmpq	PyFunction_Type@GOTPCREL(%rip), %rdi
	movq	%r8, (%rax)
	movq	%rbp, 320(%rsp)
	je	.L2366
	cmpq	PyCFunction_Type@GOTPCREL(%rip), %rdi
	jne	.L2367
	movq	16(%r14), %rdx
	movq	%rbp, %r12
	movl	16(%rdx), %eax
	testb	$8, %al
	je	.L717
.L1708:
	movq	8(%rdx), %r13
	xorl	%r15d, %r15d
	testb	$32, %al
	je	.L2368
.L713:
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L2369
	movq	%r12, %rsi
	movq	%r15, %rdi
	call	*%r13
	movq	%rax, 32(%rsp)
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	testq	%r8, %r8
	je	.L2370
.L1669:
	decq	0(%rbp)
	je	.L2371
.L727:
	movq	%r8, 32(%rsp)
	movl	$1, %edi
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L1754
	movq	24(%rax), %rax
	movq	%r8, (%rax)
	movq	24(%rsp), %rax
	movq	8(%rax), %rdi
	cmpq	PyMethod_Type@GOTPCREL(%rip), %rdi
	je	.L2372
.L728:
	cmpq	PyFunction_Type@GOTPCREL(%rip), %rdi
	movq	%rbx, 320(%rsp)
	je	.L2373
	cmpq	PyCFunction_Type@GOTPCREL(%rip), %rdi
	jne	.L2374
	movq	24(%rsp), %rax
	movq	%rbx, %r14
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	testb	$8, %dl
	je	.L740
.L1707:
	xorl	%r13d, %r13d
	andl	$32, %edx
	movq	8(%rax), %rbp
	jne	.L735
	movq	24(%rsp), %rax
	movq	24(%rax), %r13
.L735:
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L737
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	*%rbp
	movq	%rax, 32(%rsp)
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	movq	32(%rsp), %r10
	testq	%r10, %r10
	je	.L2375
.L2323:
	movq	24(%rsp), %r11
.L747:
	decq	(%rbx)
	je	.L2376
.L748:
	testq	%r10, %r10
	je	.L1757
	decq	(%r11)
	je	.L2377
.L749:
	movq	%r10, 24(%rsp)
	movl	$1, %edi
	call	*PyList_New@GOTPCREL(%rip)
	movq	24(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L1758
	movq	24(%rax), %rax
	movq	%r10, (%rax)
	movq	8(%rsp), %rax
	movq	8(%rax), %rdi
	cmpq	PyMethod_Type@GOTPCREL(%rip), %rdi
	je	.L2378
.L750:
	cmpq	PyFunction_Type@GOTPCREL(%rip), %rdi
	movq	%rbx, 320(%rsp)
	je	.L2379
	cmpq	PyCFunction_Type@GOTPCREL(%rip), %rdi
	jne	.L2380
	movq	8(%rsp), %rax
	movq	%rbx, %r14
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	testb	$8, %dl
	je	.L762
.L1706:
	xorl	%r13d, %r13d
	andl	$32, %edx
	movq	8(%rax), %rbp
	jne	.L757
	movq	8(%rsp), %rax
	movq	24(%rax), %r13
.L757:
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L759
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	*%rbp
	movq	%rax, 24(%rsp)
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	movq	24(%rsp), %r11
	testq	%r11, %r11
	je	.L2381
.L2324:
	movq	8(%rsp), %r10
.L769:
	decq	(%rbx)
	je	.L2382
.L770:
	testq	%r11, %r11
	je	.L1761
	decq	(%r10)
	je	.L2383
.L771:
	movq	%r11, 24(%rsp)
	movl	$1, %edi
	call	*PyList_New@GOTPCREL(%rip)
	movq	24(%rsp), %r11
	testq	%rax, %rax
	movq	%rax, 8(%rsp)
	movq	%rax, %rbx
	je	.L1762
	movq	__pyx_builtin_min(%rip), %rbp
	movq	24(%rax), %rax
	movq	8(%rbp), %rdi
	cmpq	PyFunction_Type@GOTPCREL(%rip), %rdi
	movq	%r11, (%rax)
	movq	%rbx, 320(%rsp)
	je	.L2384
	cmpq	PyCFunction_Type@GOTPCREL(%rip), %rdi
	jne	.L2385
	movq	16(%rbp), %rdx
	movq	8(%rsp), %r15
	movl	16(%rdx), %eax
	testb	$8, %al
	je	.L781
.L1705:
	movq	8(%rdx), %r13
	xorl	%r14d, %r14d
	testb	$32, %al
	jne	.L777
	movq	24(%rbp), %r14
.L777:
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L2386
	movq	%r15, %rsi
	movq	%r14, %rdi
	call	*%r13
	movq	%rax, 24(%rsp)
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	movq	24(%rsp), %r11
	testq	%r11, %r11
	je	.L2387
.L1663:
	movq	8(%rsp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 24(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	je	.L2388
.L791:
	movq	%r11, 24(%rsp)
	movl	$1, %edi
	call	*PyList_New@GOTPCREL(%rip)
	movq	24(%rsp), %r11
	testq	%rax, %rax
	movq	%rax, 8(%rsp)
	movq	%rax, %rdx
	je	.L1766
	movq	__pyx_builtin_max(%rip), %rbp
	movq	24(%rax), %rax
	movq	8(%rbp), %rdi
	cmpq	PyFunction_Type@GOTPCREL(%rip), %rdi
	movq	%r11, (%rax)
	movq	%rdx, 320(%rsp)
	je	.L2389
	cmpq	PyCFunction_Type@GOTPCREL(%rip), %rdi
	jne	.L2390
	movq	16(%rbp), %rdx
	movq	8(%rsp), %r15
	movl	16(%rdx), %eax
	testb	$8, %al
	je	.L801
.L1704:
	movq	8(%rdx), %r13
	xorl	%r14d, %r14d
	testb	$32, %al
	jne	.L797
	movq	24(%rbp), %r14
.L797:
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L2391
	movq	%r15, %rsi
	movq	%r14, %rdi
	call	*%r13
	movq	%rax, 24(%rsp)
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	movq	24(%rsp), %r11
	testq	%r11, %r11
	je	.L2392
.L1659:
	movq	8(%rsp), %rsi
	movq	(%rsi), %rax
	movq	%rax, 24(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	je	.L2393
.L811:
	movq	%r11, 24(%rsp)
	movl	$1, %edi
	call	*PyList_New@GOTPCREL(%rip)
	movq	24(%rsp), %r11
	testq	%rax, %rax
	movq	%rax, 8(%rsp)
	movq	%rax, %rbx
	je	.L1770
	movq	__pyx_builtin_max(%rip), %rbp
	movq	24(%rax), %rax
	movq	8(%rbp), %rdi
	cmpq	PyFunction_Type@GOTPCREL(%rip), %rdi
	movq	%r11, (%rax)
	movq	%rbx, 320(%rsp)
	je	.L2394
	cmpq	PyCFunction_Type@GOTPCREL(%rip), %rdi
	jne	.L2395
	movq	16(%rbp), %rdx
	movq	8(%rsp), %r15
	movl	16(%rdx), %eax
	testb	$8, %al
	je	.L821
.L1703:
	movq	8(%rdx), %r13
	xorl	%r14d, %r14d
	testb	$32, %al
	jne	.L817
	movq	24(%rbp), %r14
.L817:
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L2396
	movq	%r15, %rsi
	movq	%r14, %rdi
	call	*%r13
	movq	%rax, 24(%rsp)
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	movq	24(%rsp), %r11
	testq	%r11, %r11
	je	.L2397
.L1655:
	movq	8(%rsp), %rbx
	movq	(%rbx), %rax
	movq	%rax, 24(%rsp)
	decq	%rax
	movq	%rax, (%rbx)
	je	.L2398
.L831:
	movq	%r11, 24(%rsp)
	movl	$1, %edi
	call	*PyList_New@GOTPCREL(%rip)
	movq	24(%rsp), %r11
	testq	%rax, %rax
	movq	%rax, 8(%rsp)
	movq	%rax, %rsi
	je	.L1774
	movq	__pyx_builtin_max(%rip), %rbp
	movq	24(%rax), %rax
	movq	8(%rbp), %rdi
	cmpq	PyFunction_Type@GOTPCREL(%rip), %rdi
	movq	%r11, (%rax)
	movq	%rsi, 320(%rsp)
	je	.L2399
	cmpq	PyCFunction_Type@GOTPCREL(%rip), %rdi
	jne	.L2400
	movq	16(%rbp), %rdx
	movq	8(%rsp), %r15
	movl	16(%rdx), %eax
	testb	$8, %al
	je	.L841
.L1702:
	movq	8(%rdx), %r13
	xorl	%r14d, %r14d
	testb	$32, %al
	jne	.L837
	movq	24(%rbp), %r14
.L837:
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L2401
	movq	%r15, %rsi
	movq	%r14, %rdi
	call	*%r13
	movq	%rax, 24(%rsp)
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	movq	24(%rsp), %r11
	testq	%r11, %r11
	je	.L2402
.L1651:
	movq	8(%rsp), %rbx
	movq	(%rbx), %rax
	movq	%rax, 24(%rsp)
	decq	%rax
	movq	%rax, (%rbx)
	je	.L2403
.L851:
	movq	%r11, 8(%rsp)
	movl	$1, %edi
	call	*PyList_New@GOTPCREL(%rip)
	movq	8(%rsp), %r11
	testq	%rax, %rax
	movq	%rax, %r10
	je	.L1778
	movq	24(%rax), %rax
	movq	%r11, (%rax)
	movq	16(%rsp), %rax
	movq	8(%rax), %rdi
	cmpq	PyMethod_Type@GOTPCREL(%rip), %rdi
	je	.L2404
.L852:
	cmpq	PyFunction_Type@GOTPCREL(%rip), %rdi
	movq	%r10, 320(%rsp)
	je	.L2405
	cmpq	PyCFunction_Type@GOTPCREL(%rip), %rdi
	jne	.L2406
	movq	16(%rsp), %rax
	movq	%r10, %r13
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	testb	$8, %dl
	je	.L864
.L1701:
	xorl	%r12d, %r12d
	andl	$32, %edx
	movq	8(%rax), %rbp
	jne	.L859
	movq	16(%rsp), %rax
	movq	24(%rax), %r12
.L859:
	movq	%r10, 8(%rsp)
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	movq	8(%rsp), %r10
	testl	%eax, %eax
	jne	.L861
	movq	%r10, 8(%rsp)
	movq	%r13, %rsi
	movq	%r12, %rdi
	call	*%rbp
	movq	%rax, %rbx
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	testq	%rbx, %rbx
	movq	8(%rsp), %r10
	je	.L2407
.L855:
	movq	16(%rsp), %r11
.L871:
	decq	(%r10)
	je	.L2408
.L872:
	testq	%rbx, %rbx
	je	.L1781
	decq	(%r11)
	je	.L2409
.L873:
	movl	$1, %edi
	call	*PyList_New@GOTPCREL(%rip)
	movq	%rax, 16(%rsp)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L1782
	movq	__pyx_builtin_min(%rip), %rbp
	movq	24(%rax), %rax
	movq	8(%rbp), %rdi
	cmpq	PyFunction_Type@GOTPCREL(%rip), %rdi
	movq	%rbx, (%rax)
	movq	%rdx, 320(%rsp)
	je	.L2410
	cmpq	PyCFunction_Type@GOTPCREL(%rip), %rdi
	jne	.L2411
	movq	16(%rbp), %rax
	movq	16(%rsp), %r14
	movl	16(%rax), %edx
	testb	$8, %dl
	je	.L885
.L1700:
	xorl	%r13d, %r13d
	andl	$32, %edx
	movq	8(%rax), %r12
	jne	.L879
	movq	24(%rbp), %r13
.L879:
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L2412
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	*%r12
	movq	%rax, %rbx
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	testq	%rbx, %rbx
	je	.L2413
.L1646:
	movq	16(%rsp), %rsi
	movq	(%rsi), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	je	.L2414
.L895:
	movl	$1, %edi
	call	*PyList_New@GOTPCREL(%rip)
	movq	%rax, 16(%rsp)
	movq	%rax, %rsi
	testq	%rax, %rax
	je	.L1786
	movq	__pyx_builtin_min(%rip), %rbp
	movq	24(%rax), %rax
	movq	8(%rbp), %rdi
	cmpq	PyFunction_Type@GOTPCREL(%rip), %rdi
	movq	%rbx, (%rax)
	movq	%rsi, 320(%rsp)
	je	.L2415
	cmpq	PyCFunction_Type@GOTPCREL(%rip), %rdi
	jne	.L2416
	movq	16(%rbp), %rax
	movq	16(%rsp), %r14
	movl	16(%rax), %edx
	testb	$8, %dl
	je	.L907
.L1699:
	xorl	%r13d, %r13d
	andl	$32, %edx
	movq	8(%rax), %r12
	jne	.L901
	movq	24(%rbp), %r13
.L901:
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L2417
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	*%r12
	movq	%rax, %rbx
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	testq	%rbx, %rbx
	je	.L2418
.L1642:
	movq	16(%rsp), %rdi
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rdi)
	je	.L2419
.L917:
	movl	$1, %edi
	call	*PyList_New@GOTPCREL(%rip)
	movq	%rax, 16(%rsp)
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L1790
	movq	24(%rax), %rax
	movq	__pyx_builtin_min(%rip), %rbp
	movq	%rbx, (%rax)
	movq	%rdi, 320(%rsp)
	movq	8(%rbp), %rdi
	cmpq	PyFunction_Type@GOTPCREL(%rip), %rdi
	je	.L2420
	movq	PyCFunction_Type@GOTPCREL(%rip), %r12
	cmpq	%r12, %rdi
	jne	.L2421
	movq	16(%rbp), %rax
	movq	16(%rsp), %r14
	movl	16(%rax), %edx
	testb	$8, %dl
	je	.L929
.L1698:
	xorl	%r13d, %r13d
	andl	$32, %edx
	movq	8(%rax), %r12
	jne	.L923
	movq	24(%rbp), %r13
.L923:
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L2422
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	*%r12
	movq	%rax, %rbx
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	testq	%rbx, %rbx
	je	.L2423
.L1638:
	movq	16(%rsp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	je	.L2424
.L939:
	movl	$1, %edi
	call	*PyList_New@GOTPCREL(%rip)
	movq	%rax, 16(%rsp)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L1794
	movq	__pyx_builtin_min(%rip), %rbp
	movq	24(%rax), %rax
	movq	8(%rbp), %rdi
	cmpq	PyFunction_Type@GOTPCREL(%rip), %rdi
	movq	%rbx, (%rax)
	movq	%rdx, 320(%rsp)
	je	.L2425
	movq	PyCFunction_Type@GOTPCREL(%rip), %r12
	cmpq	%r12, %rdi
	jne	.L2426
	movq	16(%rbp), %rax
	movq	16(%rsp), %r14
	movl	16(%rax), %edx
	testb	$8, %dl
	je	.L951
.L1697:
	xorl	%r13d, %r13d
	andl	$32, %edx
	movq	8(%rax), %r12
	jne	.L945
	movq	24(%rbp), %r13
.L945:
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L2427
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	*%r12
	movq	%rax, %rbx
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	testq	%rbx, %rbx
	je	.L2428
.L1634:
	movq	16(%rsp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	je	.L2429
.L961:
	movl	$1, %edi
	call	*PyList_New@GOTPCREL(%rip)
	movq	%rax, 16(%rsp)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L1798
	movq	__pyx_builtin_max(%rip), %r12
	movq	24(%rax), %rax
	movq	8(%r12), %rdi
	cmpq	PyFunction_Type@GOTPCREL(%rip), %rdi
	movq	%rbx, (%rax)
	movq	%rdx, 320(%rsp)
	je	.L2430
	movq	PyCFunction_Type@GOTPCREL(%rip), %rbp
	cmpq	%rbp, %rdi
	jne	.L2431
	movq	16(%r12), %rax
	movq	16(%rsp), %r13
	movl	16(%rax), %edx
	testb	$8, %dl
	je	.L973
.L1696:
	xorl	%ebp, %ebp
	andl	$32, %edx
	movq	8(%rax), %r14
	jne	.L967
	movq	24(%r12), %rbp
.L967:
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L2432
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	*%r14
	movq	%rax, %rbx
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	testq	%rbx, %rbx
	je	.L2433
.L1630:
	movq	16(%rsp), %rsi
	movq	(%rsi), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	je	.L2434
.L983:
	movl	$1, %edi
	call	*PyList_New@GOTPCREL(%rip)
	movq	%rax, 16(%rsp)
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L1802
	movq	24(%rax), %rax
	movq	__pyx_builtin_min(%rip), %r12
	movq	%rbx, (%rax)
	movq	%rdi, 320(%rsp)
	movq	8(%r12), %rdi
	cmpq	PyFunction_Type@GOTPCREL(%rip), %rdi
	je	.L2435
	movq	PyCFunction_Type@GOTPCREL(%rip), %rbp
	cmpq	%rbp, %rdi
	jne	.L2436
	movq	16(%r12), %rax
	movq	16(%rsp), %r13
	movl	16(%rax), %edx
	testb	$8, %dl
	je	.L995
.L1695:
	xorl	%ebp, %ebp
	andl	$32, %edx
	movq	8(%rax), %r14
	jne	.L989
	movq	24(%r12), %rbp
.L989:
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L2437
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	*%r14
	movq	%rax, %rbx
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	testq	%rbx, %rbx
	je	.L2438
.L1626:
	movq	16(%rsp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	je	.L2439
.L1005:
	movl	$1, %edi
	call	*PyList_New@GOTPCREL(%rip)
	movq	%rax, 16(%rsp)
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L1806
	movq	24(%rdi), %rdx
	movq	__pyx_int_522179(%rip), %rax
	movq	__pyx_builtin_max(%rip), %rbp
	incq	(%rax)
	movq	%rax, (%rdx)
	movq	%rdi, 320(%rsp)
	movq	8(%rbp), %rdi
	cmpq	PyFunction_Type@GOTPCREL(%rip), %rdi
	je	.L2440
	movq	PyCFunction_Type@GOTPCREL(%rip), %r12
	cmpq	%r12, %rdi
	jne	.L2441
	movq	16(%rbp), %rax
	movq	16(%rsp), %r12
	movl	16(%rax), %edx
	testb	$8, %dl
	je	.L1017
.L1694:
	xorl	%r13d, %r13d
	andl	$32, %edx
	movq	8(%rax), %r14
	jne	.L1011
	movq	24(%rbp), %r13
.L1011:
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L2442
	movq	%r12, %rsi
	movq	%r13, %rdi
	call	*%r14
	movq	%rax, %r14
	movq	%rax, 8(%rsp)
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	testq	%r14, %r14
	je	.L2443
.L1622:
	movq	16(%rsp), %rdi
	movq	(%rdi), %rax
	movq	%rax, 24(%rsp)
	decq	%rax
	movq	%rax, (%rdi)
	je	.L2444
.L1027:
	movq	__pyx_d(%rip), %rax
	movq	__pyx_dict_version.13298(%rip), %rsi
	cmpq	%rsi, 24(%rax)
	jne	.L1028
	movq	__pyx_dict_cached_value.13299(%rip), %r11
	testq	%r11, %r11
	je	.L1029
	incq	(%r11)
.L1030:
	movq	8(%r11), %rax
	movq	%r11, 16(%rsp)
	movq	%r11, %rdi
	movq	__pyx_n_s_prod(%rip), %rsi
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L1032
	call	*%rax
	movq	16(%rsp), %r11
	movq	%rax, 24(%rsp)
.L1033:
	cmpq	$0, 24(%rsp)
	je	.L1811
	decq	(%r11)
	je	.L2445
.L1034:
	movl	$2, %edi
	call	*PyList_New@GOTPCREL(%rip)
	movq	%rax, %r11
	testq	%rax, %rax
	je	.L1812
	movq	__pyx_int_19219(%rip), %rax
	movq	24(%r11), %rdx
	incq	(%rax)
	movq	%rax, (%rdx)
	movq	__pyx_int_1(%rip), %rax
	incq	(%rax)
	movq	%rax, 8(%rdx)
	movq	24(%rsp), %rax
	movq	8(%rax), %rdi
	cmpq	PyMethod_Type@GOTPCREL(%rip), %rdi
	je	.L2446
.L1035:
	cmpq	PyFunction_Type@GOTPCREL(%rip), %rdi
	movq	%r11, 320(%rsp)
	je	.L2447
	movq	PyCFunction_Type@GOTPCREL(%rip), %rbp
	cmpq	%rbp, %rdi
	jne	.L2448
	movq	24(%rsp), %rax
	movq	%r11, %rbp
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	testb	$8, %dl
	je	.L1047
.L1693:
	xorl	%r13d, %r13d
	andl	$32, %edx
	movq	8(%rax), %r14
	jne	.L1042
	movq	24(%rsp), %rax
	movq	24(%rax), %r13
.L1042:
	movq	%r11, 16(%rsp)
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	movq	16(%rsp), %r11
	testl	%eax, %eax
	jne	.L1044
	movq	%r11, 32(%rsp)
	movq	%rbp, %rsi
	movq	%r13, %rdi
	call	*%r14
	movq	%rax, %r14
	movq	%rax, 16(%rsp)
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	testq	%r14, %r14
	movq	32(%rsp), %r11
	je	.L2449
.L2325:
	movq	24(%rsp), %r10
.L1054:
	decq	(%r11)
	je	.L2450
.L1055:
	cmpq	$0, 16(%rsp)
	je	.L1815
	decq	(%r10)
	je	.L2451
.L1056:
	movq	__pyx_d(%rip), %rax
	movq	__pyx_dict_version.13302(%rip), %rdx
	cmpq	%rdx, 24(%rax)
	jne	.L1057
	movq	__pyx_dict_cached_value.13303(%rip), %r11
	testq	%r11, %r11
	je	.L1058
	incq	(%r11)
.L1059:
	movq	8(%r11), %rax
	movq	%r11, 24(%rsp)
	movq	%r11, %rdi
	movq	__pyx_n_s_prod(%rip), %rsi
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L1061
	call	*%rax
	movq	24(%rsp), %r11
	movq	%rax, %r10
.L1062:
	testq	%r10, %r10
	je	.L1817
	decq	(%r11)
	je	.L2452
.L1063:
	movq	%r10, 24(%rsp)
	movl	$3, %edi
	call	*PyList_New@GOTPCREL(%rip)
	movq	24(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, %r11
	je	.L1818
	movq	24(%rax), %rax
	movq	__pyx_int_7(%rip), %rdx
	movq	8(%r10), %rdi
	incq	(%rdx)
	movq	%rdx, (%rax)
	movq	__pyx_int_8(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 8(%rax)
	movq	__pyx_int_14(%rip), %rdx
	incq	(%rdx)
	cmpq	PyMethod_Type@GOTPCREL(%rip), %rdi
	movq	%rdx, 16(%rax)
	je	.L2453
.L1064:
	cmpq	PyFunction_Type@GOTPCREL(%rip), %rdi
	movq	%r11, 320(%rsp)
	je	.L2454
	movq	PyCFunction_Type@GOTPCREL(%rip), %rbp
	cmpq	%rbp, %rdi
	jne	.L2455
	movq	16(%r10), %rax
	movq	%r11, %rbp
	movl	16(%rax), %edx
	testb	$8, %dl
	je	.L1076
.L1692:
	xorl	%r13d, %r13d
	andl	$32, %edx
	movq	8(%rax), %r14
	jne	.L1071
	movq	24(%r10), %r13
.L1071:
	movq	%r11, 32(%rsp)
	leaq	.LC10(%rip), %rdi
	movq	%r10, 24(%rsp)
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	movq	24(%rsp), %r10
	movq	32(%rsp), %r11
	testl	%eax, %eax
	jne	.L1073
	movq	%r11, 40(%rsp)
	movq	%rbp, %rsi
	movq	%r13, %rdi
	movq	%r10, 32(%rsp)
	call	*%r14
	movq	%rax, %r14
	movq	%rax, 24(%rsp)
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	testq	%r14, %r14
	movq	32(%rsp), %r10
	movq	40(%rsp), %r11
	je	.L2456
.L1083:
	decq	(%r11)
	je	.L2457
.L1084:
	cmpq	$0, 24(%rsp)
	je	.L1821
	decq	(%r10)
	je	.L2458
.L1085:
	movq	__pyx_d(%rip), %rax
	movq	__pyx_dict_version.13306(%rip), %rdx
	cmpq	%rdx, 24(%rax)
	jne	.L1086
	movq	__pyx_dict_cached_value.13307(%rip), %r11
	testq	%r11, %r11
	je	.L1087
	incq	(%r11)
.L1088:
	movq	8(%r11), %rax
	movq	%r11, 32(%rsp)
	movq	%r11, %rdi
	movq	__pyx_n_s_prod(%rip), %rsi
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L1090
	call	*%rax
	movq	32(%rsp), %r11
	movq	%rax, %rbp
.L1091:
	testq	%rbp, %rbp
	je	.L1823
	decq	(%r11)
	je	.L2459
.L1092:
	movl	$3, %edi
	call	*PyList_New@GOTPCREL(%rip)
	movq	%rax, %r11
	testq	%rax, %rax
	je	.L1824
	movq	24(%rax), %rax
	movq	__pyx_int_8(%rip), %rdx
	movq	8(%rbp), %rdi
	incq	(%rdx)
	movq	%rdx, (%rax)
	movq	__pyx_int_2(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 8(%rax)
	movq	__pyx_int_12(%rip), %rdx
	incq	(%rdx)
	cmpq	PyMethod_Type@GOTPCREL(%rip), %rdi
	movq	%rdx, 16(%rax)
	je	.L2460
.L1093:
	cmpq	PyFunction_Type@GOTPCREL(%rip), %rdi
	movq	%r11, 320(%rsp)
	je	.L2461
	movq	PyCFunction_Type@GOTPCREL(%rip), %r13
	cmpq	%r13, %rdi
	jne	.L2462
	movq	16(%rbp), %rax
	movl	16(%rax), %edx
	testb	$8, %dl
	je	.L1105
.L1691:
	xorl	%r13d, %r13d
	andb	$32, %dl
	movq	320(%rsp), %r14
	movq	8(%rax), %r12
	jne	.L1100
	movq	24(%rbp), %r13
.L1100:
	movq	%r11, 32(%rsp)
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	movq	32(%rsp), %r11
	testl	%eax, %eax
	jne	.L1102
	movq	%r11, 40(%rsp)
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	*%r12
	movq	%rax, 32(%rsp)
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	movq	32(%rsp), %r10
	movq	40(%rsp), %r11
	testq	%r10, %r10
	je	.L2463
.L1112:
	decq	(%r11)
	je	.L2464
.L1113:
	testq	%r10, %r10
	je	.L1827
	decq	0(%rbp)
	je	.L2465
.L1114:
	movq	__pyx_d(%rip), %rax
	movq	__pyx_dict_version.13310(%rip), %rsi
	cmpq	%rsi, 24(%rax)
	jne	.L1115
	movq	__pyx_dict_cached_value.13311(%rip), %r11
	testq	%r11, %r11
	je	.L1116
	incq	(%r11)
.L1117:
	movq	8(%r11), %rax
	movq	%r10, 40(%rsp)
	movq	%r11, %rdi
	movq	%r11, 32(%rsp)
	movq	__pyx_n_s_prod(%rip), %rsi
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L1119
	call	*%rax
	movq	32(%rsp), %r11
	movq	40(%rsp), %r10
	movq	%rax, %r8
.L1120:
	testq	%r8, %r8
	je	.L1829
	decq	(%r11)
	je	.L2466
.L1121:
	movq	%r10, 40(%rsp)
	movl	$3, %edi
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, %r11
	je	.L1830
	movq	24(%rax), %rax
	movq	__pyx_int_4(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, (%rax)
	movq	__pyx_int_10(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 8(%rax)
	movq	__pyx_int_3(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 16(%rax)
	movq	PyMethod_Type@GOTPCREL(%rip), %rax
	cmpq	%rax, 8(%r8)
	je	.L2467
.L1122:
	movq	%r11, %rsi
	movq	%r8, %rdi
	movq	%r10, 48(%rsp)
	movq	%r11, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r8
	movq	40(%rsp), %r11
	movq	48(%rsp), %r10
	movq	%rax, %rbp
	movq	%r8, %r9
.L1124:
	decq	(%r11)
	je	.L2468
.L1125:
	testq	%rbp, %rbp
	je	.L1831
	decq	(%r9)
	je	.L2469
.L1126:
	movq	%r10, 32(%rsp)
	movl	$3, %edi
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, %r8
	je	.L1832
	movq	24(%rax), %rax
	movq	%r10, %xmm1
	movq	%r8, %rsi
	movq	24(%rsp), %xmm0
	movq	__pyx_builtin_sum(%rip), %rdi
	movq	%r8, 24(%rsp)
	movq	%rbp, 16(%rax)
	punpcklqdq	%xmm1, %xmm0
	movups	%xmm0, (%rax)
	call	__Pyx_PyObject_CallOneArg
	movq	24(%rsp), %r8
	testq	%rax, %rax
	movq	%rax, %rbp
	je	.L1833
	decq	(%r8)
	je	.L2470
.L1127:
	movq	__pyx_d(%rip), %rax
	movq	__pyx_dict_version.13314(%rip), %rdi
	cmpq	%rdi, 24(%rax)
	jne	.L1128
	movq	__pyx_dict_cached_value.13315(%rip), %r11
	testq	%r11, %r11
	je	.L1129
	incq	(%r11)
.L1130:
	movq	__pyx_n_s_prod(%rip), %rsi
	movq	%r11, %rdi
	movq	%r11, 32(%rsp)
	call	__Pyx_PyObject_GetAttrStr
	movq	32(%rsp), %r11
	testq	%rax, %rax
	movq	%rax, 24(%rsp)
	je	.L1835
	decq	(%r11)
	je	.L2471
.L1132:
	movl	$2, %edi
	call	*PyList_New@GOTPCREL(%rip)
	movq	%rax, %r11
	testq	%rax, %rax
	je	.L1836
	movq	24(%r11), %rdx
	movq	__pyx_int_0(%rip), %rax
	incq	(%rax)
	movq	%rax, (%rdx)
	movq	__pyx_int_46058(%rip), %rax
	incq	(%rax)
	movq	%rax, 8(%rdx)
	movq	24(%rsp), %rax
	movq	PyMethod_Type@GOTPCREL(%rip), %rdx
	cmpq	%rdx, 8(%rax)
	je	.L2472
.L1133:
	movq	24(%rsp), %r14
	movq	%r11, %rsi
	movq	%r11, 32(%rsp)
	movq	%r14, %rdi
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r11
	movq	%r14, %r9
	movq	%rax, %r8
.L1135:
	decq	(%r11)
	je	.L2473
.L1136:
	testq	%r8, %r8
	je	.L1837
	decq	(%r9)
	je	.L2474
.L1137:
	movq	%r8, 32(%rsp)
	movl	$1, %edi
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	testq	%rax, %rax
	movq	%rax, 24(%rsp)
	movq	%rax, %r14
	je	.L1838
	movq	__pyx_int_664609(%rip), %rax
	movq	24(%r14), %rdx
	movq	%r14, %rsi
	movq	__pyx_builtin_sum(%rip), %rdi
	incq	(%rax)
	movq	%rax, (%rdx)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r8
	testq	%rax, %rax
	movq	%rax, %r10
	je	.L1839
	movq	(%r14), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%r14)
	je	.L2475
.L1138:
	movq	__pyx_d(%rip), %rax
	movq	__pyx_dict_version.13318(%rip), %rsi
	cmpq	%rsi, 24(%rax)
	jne	.L1139
	movq	__pyx_dict_cached_value.13319(%rip), %r11
	testq	%r11, %r11
	je	.L1140
	incq	(%r11)
.L1141:
	movq	__pyx_n_s_prod(%rip), %rsi
	movq	%r11, %rdi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%r11, 24(%rsp)
	call	__Pyx_PyObject_GetAttrStr
	movq	24(%rsp), %r11
	movq	32(%rsp), %r8
	testq	%rax, %rax
	movq	40(%rsp), %r10
	movq	%rax, %r13
	je	.L1841
	decq	(%r11)
	je	.L2476
.L1143:
	movq	%r10, 32(%rsp)
	movl	$2, %edi
	movq	%r8, 24(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	24(%rsp), %r8
	movq	32(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, %r11
	je	.L1842
	movq	__pyx_int_0(%rip), %rax
	movq	24(%r11), %rdx
	incq	(%rax)
	movq	%rax, (%rdx)
	movq	__pyx_int_580431(%rip), %rax
	incq	(%rax)
	movq	%rax, 8(%rdx)
	movq	PyMethod_Type@GOTPCREL(%rip), %rax
	cmpq	%rax, 8(%r13)
	je	.L2477
.L1144:
	movq	%r11, %rsi
	movq	%r13, %rdi
	movq	%r10, 48(%rsp)
	movq	%r13, %r15
	movq	%r8, 40(%rsp)
	movq	%r11, 32(%rsp)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r11
	movq	40(%rsp), %r8
	movq	%rax, 24(%rsp)
	movq	48(%rsp), %r10
.L1146:
	decq	(%r11)
	je	.L2478
.L1147:
	cmpq	$0, 24(%rsp)
	je	.L1843
	decq	(%r15)
	je	.L2479
.L1148:
	movq	__pyx_d(%rip), %rax
	movq	__pyx_dict_version.13322(%rip), %rdi
	cmpq	%rdi, 24(%rax)
	jne	.L1149
	movq	__pyx_dict_cached_value.13323(%rip), %r11
	testq	%r11, %r11
	je	.L1150
	incq	(%r11)
.L1151:
	movq	__pyx_n_s_prod(%rip), %rsi
	movq	%r11, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%r11, 32(%rsp)
	call	__Pyx_PyObject_GetAttrStr
	movq	32(%rsp), %r11
	movq	40(%rsp), %r8
	testq	%rax, %rax
	movq	48(%rsp), %r10
	movq	%rax, %r15
	je	.L1845
	decq	(%r11)
	je	.L2480
.L1153:
	movq	%r10, 40(%rsp)
	movl	$4, %edi
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, %r11
	je	.L1846
	movq	24(%rax), %rax
	movq	__pyx_int_13(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, (%rax)
	movq	__pyx_int_200(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 8(%rax)
	movq	__pyx_int_84(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 16(%rax)
	movq	__pyx_int_116(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 24(%rax)
	movq	PyMethod_Type@GOTPCREL(%rip), %rax
	cmpq	%rax, 8(%r15)
	je	.L2481
.L1154:
	movq	%r11, %rsi
	movq	%r15, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%r11, 32(%rsp)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r11
	movq	40(%rsp), %r8
	movq	%r15, %r9
	movq	48(%rsp), %r10
	movq	%rax, %r13
.L1156:
	decq	(%r11)
	je	.L2482
.L1157:
	testq	%r13, %r13
	je	.L1847
	decq	(%r9)
	je	.L2483
.L1158:
	movq	__pyx_d(%rip), %rax
	movq	__pyx_dict_version.13326(%rip), %rdx
	cmpq	%rdx, 24(%rax)
	jne	.L1159
	movq	__pyx_dict_cached_value.13327(%rip), %r11
	testq	%r11, %r11
	je	.L1160
	incq	(%r11)
.L1161:
	movq	__pyx_n_s_prod(%rip), %rsi
	movq	%r11, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%r11, 32(%rsp)
	call	__Pyx_PyObject_GetAttrStr
	movq	32(%rsp), %r11
	movq	40(%rsp), %r8
	testq	%rax, %rax
	movq	48(%rsp), %r10
	movq	%rax, %r12
	je	.L1849
	decq	(%r11)
	je	.L2484
.L1163:
	movq	%r10, 40(%rsp)
	movl	$1, %edi
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, %r11
	je	.L1850
	movq	__pyx_int_80(%rip), %rax
	movq	24(%r11), %rdx
	incq	(%rax)
	movq	%rax, (%rdx)
	movq	PyMethod_Type@GOTPCREL(%rip), %rax
	cmpq	%rax, 8(%r12)
	je	.L2485
.L1164:
	movq	%r11, %rsi
	movq	%r12, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%r11, 32(%rsp)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r11
	movq	40(%rsp), %r8
	movq	%r12, %r9
	movq	48(%rsp), %r10
	movq	%rax, %r15
.L1166:
	decq	(%r11)
	je	.L2486
.L1167:
	testq	%r15, %r15
	je	.L1851
	decq	(%r9)
	je	.L2487
.L1168:
	movq	__pyx_d(%rip), %rax
	movq	__pyx_dict_version.13330(%rip), %rsi
	cmpq	%rsi, 24(%rax)
	jne	.L1169
	movq	__pyx_dict_cached_value.13331(%rip), %r11
	testq	%r11, %r11
	je	.L1170
	incq	(%r11)
.L1171:
	movq	__pyx_n_s_prod(%rip), %rsi
	movq	%r11, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%r11, 32(%rsp)
	call	__Pyx_PyObject_GetAttrStr
	movq	32(%rsp), %r11
	movq	40(%rsp), %r8
	testq	%rax, %rax
	movq	48(%rsp), %r10
	movq	%rax, %r14
	je	.L1853
	decq	(%r11)
	je	.L2488
.L1173:
	movq	%r10, 40(%rsp)
	movl	$2, %edi
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, %r11
	je	.L1854
	movq	__pyx_int_95(%rip), %rax
	movq	24(%r11), %rdx
	incq	(%rax)
	movq	%rax, (%rdx)
	movq	__pyx_int_1(%rip), %rax
	incq	(%rax)
	movq	%rax, 8(%rdx)
	movq	PyMethod_Type@GOTPCREL(%rip), %rax
	cmpq	%rax, 8(%r14)
	je	.L2489
.L1174:
	movq	%r11, %rsi
	movq	%r14, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%r11, 32(%rsp)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r11
	movq	40(%rsp), %r8
	movq	%r14, %rcx
	movq	48(%rsp), %r10
	movq	%rax, %r12
.L1176:
	decq	(%r11)
	je	.L2490
.L1177:
	testq	%r12, %r12
	je	.L1855
	decq	(%rcx)
	je	.L2491
.L1178:
	movq	__pyx_d(%rip), %rax
	movq	__pyx_dict_version.13334(%rip), %rdi
	cmpq	%rdi, 24(%rax)
	jne	.L1179
	movq	__pyx_dict_cached_value.13335(%rip), %r11
	testq	%r11, %r11
	je	.L1180
	incq	(%r11)
.L1181:
	movq	__pyx_n_s_prod(%rip), %rsi
	movq	%r11, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%r11, 32(%rsp)
	call	__Pyx_PyObject_GetAttrStr
	movq	32(%rsp), %r11
	movq	40(%rsp), %r8
	testq	%rax, %rax
	movq	%rax, 280(%rsp)
	movq	48(%rsp), %r10
	je	.L1857
	decq	(%r11)
	je	.L2492
.L1183:
	movq	%r10, 40(%rsp)
	movl	$3, %edi
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 264(%rsp)
	movq	%rax, %r14
	je	.L1858
	movq	24(%rax), %rax
	movq	__pyx_int_10(%rip), %rdx
	movq	%r14, %rsi
	movq	__pyx_builtin_sum(%rip), %rdi
	incq	(%rdx)
	movq	%rdx, (%rax)
	movq	__pyx_int_14(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 8(%rax)
	movq	__pyx_int_2(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 16(%rax)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 272(%rsp)
	je	.L1859
	movq	(%r14), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%r14)
	je	.L2493
.L1184:
	movq	%r10, 40(%rsp)
	movl	$3, %edi
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 264(%rsp)
	movq	%rax, %r14
	movq	%rax, %rsi
	je	.L1860
	movq	24(%rax), %rax
	movq	__pyx_int_8(%rip), %rdx
	movq	__pyx_builtin_sum(%rip), %rdi
	incq	(%rdx)
	movq	%rdx, (%rax)
	movq	__pyx_int_9(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 8(%rax)
	movq	__pyx_int_11(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 16(%rax)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 256(%rsp)
	je	.L1861
	movq	(%r14), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%r14)
	je	.L2494
.L1185:
	movq	272(%rsp), %r14
	movq	%r10, 40(%rsp)
	xorl	%edx, %edx
	movq	%r8, 32(%rsp)
	movq	256(%rsp), %rsi
	movq	%r14, %rdi
	call	*PyObject_RichCompare@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 264(%rsp)
	je	.L1862
	movq	(%r14), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%r14)
	je	.L2495
.L1186:
	movq	256(%rsp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	je	.L2496
.L1187:
	movq	264(%rsp), %rsi
	cmpq	_Py_TrueStruct@GOTPCREL(%rip), %rsi
	sete	%dl
	cmpq	_Py_FalseStruct@GOTPCREL(%rip), %rsi
	sete	%al
	orb	%dl, %al
	jne	.L2027
	cmpq	_Py_NoneStruct@GOTPCREL(%rip), %rsi
	je	.L2027
	movq	%r10, 40(%rsp)
	movq	264(%rsp), %rdi
	movq	%r8, 32(%rsp)
	call	*PyObject_IsTrue@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testl	%eax, %eax
	movl	%eax, %r14d
	js	.L1863
.L1190:
	movq	264(%rsp), %rsi
	movq	(%rsi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	je	.L2497
.L1191:
	testl	%r14d, %r14d
	je	.L1192
	movq	__pyx_int_1(%rip), %r11
	incq	(%r11)
.L1193:
	movq	%r11, 48(%rsp)
	movl	$2, %edi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 264(%rsp)
	movq	48(%rsp), %r11
	movq	%rax, %rdx
	je	.L1864
	movq	__pyx_int_8599772(%rip), %rax
	movq	24(%rdx), %rdx
	incq	(%rax)
	movq	%rax, (%rdx)
	movq	280(%rsp), %rax
	movq	%r11, 8(%rdx)
	movq	PyMethod_Type@GOTPCREL(%rip), %rdx
	cmpq	%rdx, 8(%rax)
	je	.L2498
.L1194:
	movq	264(%rsp), %rsi
	movq	280(%rsp), %rdi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	movq	280(%rsp), %r9
	movq	%rax, %r14
.L1196:
	movq	264(%rsp), %rdi
	movq	(%rdi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdi)
	je	.L2499
.L1197:
	testq	%r14, %r14
	je	.L1865
	decq	(%r9)
	je	.L2500
.L1198:
	movq	%r10, 40(%rsp)
	movl	$6, %edi
	movq	%r8, 32(%rsp)
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 280(%rsp)
	je	.L1866
	movq	__pyx_d(%rip), %rax
	movq	__pyx_dict_version.13338(%rip), %rsi
	cmpq	%rsi, 24(%rax)
	jne	.L1199
	movq	__pyx_dict_cached_value.13339(%rip), %r11
	testq	%r11, %r11
	je	.L1200
	incq	(%r11)
.L1201:
	movq	__pyx_n_s_prod(%rip), %rsi
	movq	%r11, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%r11, 32(%rsp)
	call	__Pyx_PyObject_GetAttrStr
	movq	32(%rsp), %r11
	movq	40(%rsp), %r8
	testq	%rax, %rax
	movq	%rax, 256(%rsp)
	movq	48(%rsp), %r10
	je	.L1868
	decq	(%r11)
	je	.L2501
.L1203:
	movq	%r10, 40(%rsp)
	movl	$2, %edi
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, %r11
	je	.L1869
	movq	__pyx_int_1(%rip), %rax
	movq	24(%r11), %rdx
	movq	PyMethod_Type@GOTPCREL(%rip), %rdi
	incq	(%rax)
	movq	%rax, (%rdx)
	movq	__pyx_int_30979330271(%rip), %rax
	incq	(%rax)
	movq	%rax, 8(%rdx)
	movq	256(%rsp), %rax
	cmpq	%rdi, 8(%rax)
	je	.L2502
.L1204:
	movq	256(%rsp), %rdi
	movq	%r11, %rsi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%r11, 32(%rsp)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r11
	movq	40(%rsp), %r8
	movq	%rax, 264(%rsp)
	movq	256(%rsp), %rcx
	movq	48(%rsp), %r10
.L1206:
	decq	(%r11)
	je	.L2503
.L1207:
	cmpq	$0, 264(%rsp)
	je	.L1870
	decq	(%rcx)
	je	.L2504
.L1208:
	movq	__pyx_d(%rip), %rax
	movq	__pyx_dict_version.13342(%rip), %rdx
	cmpq	%rdx, 24(%rax)
	jne	.L1209
	movq	__pyx_dict_cached_value.13343(%rip), %r11
	testq	%r11, %r11
	je	.L1210
	incq	(%r11)
.L1211:
	movq	__pyx_n_s_prod(%rip), %rsi
	movq	%r11, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%r11, 32(%rsp)
	call	__Pyx_PyObject_GetAttrStr
	movq	32(%rsp), %r11
	movq	40(%rsp), %r8
	testq	%rax, %rax
	movq	%rax, 272(%rsp)
	movq	48(%rsp), %r10
	je	.L1872
	decq	(%r11)
	je	.L2505
.L1213:
	movq	%r10, 40(%rsp)
	movl	$3, %edi
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 240(%rsp)
	movq	%rax, %rdi
	je	.L1873
	movq	24(%rax), %rax
	movq	__pyx_int_5(%rip), %rdx
	movq	%rdi, %rsi
	movq	__pyx_builtin_sum(%rip), %rdi
	incq	(%rdx)
	movq	%rdx, (%rax)
	movq	__pyx_int_2(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 8(%rax)
	movq	__pyx_int_6(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 16(%rax)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 224(%rsp)
	je	.L1874
	movq	240(%rsp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	je	.L2506
.L1214:
	movq	%r10, 40(%rsp)
	movl	$3, %edi
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 240(%rsp)
	movq	%rax, %rdi
	je	.L1875
	movq	24(%rax), %rax
	movq	__pyx_int_9(%rip), %rdx
	movq	%rdi, %rsi
	movq	__pyx_builtin_sum(%rip), %rdi
	incq	(%rdx)
	movq	%rdx, (%rax)
	movq	__pyx_int_12(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 8(%rax)
	movq	__pyx_int_2(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 16(%rax)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 248(%rsp)
	je	.L1876
	movq	240(%rsp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	je	.L2507
.L1215:
	movq	%r10, 40(%rsp)
	movq	248(%rsp), %rsi
	movl	$4, %edx
	movq	%r8, 32(%rsp)
	movq	224(%rsp), %rdi
	call	*PyObject_RichCompare@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 240(%rsp)
	je	.L1877
	movq	224(%rsp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	je	.L2508
.L1216:
	movq	248(%rsp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	je	.L2509
.L1217:
	movq	240(%rsp), %rdi
	cmpq	_Py_TrueStruct@GOTPCREL(%rip), %rdi
	sete	%dl
	cmpq	_Py_FalseStruct@GOTPCREL(%rip), %rdi
	sete	%al
	orb	%dl, %al
	jne	.L2028
	cmpq	_Py_NoneStruct@GOTPCREL(%rip), %rdi
	je	.L2028
	movq	%r10, 40(%rsp)
	movq	240(%rsp), %rdi
	movq	%r8, 32(%rsp)
	call	*PyObject_IsTrue@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testl	%eax, %eax
	movl	%eax, %edx
	js	.L1878
.L1220:
	movq	240(%rsp), %rsi
	movq	(%rsi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	je	.L2510
.L1221:
	testl	%edx, %edx
	je	.L1222
	movq	__pyx_int_1(%rip), %r11
	incq	(%r11)
.L1223:
	movq	%r11, 48(%rsp)
	movl	$2, %edi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 240(%rsp)
	movq	48(%rsp), %r11
	je	.L1879
	movq	24(%rax), %rdx
	movq	__pyx_int_35056(%rip), %rax
	movq	PyMethod_Type@GOTPCREL(%rip), %rsi
	movq	%r11, (%rdx)
	incq	(%rax)
	movq	%rax, 8(%rdx)
	movq	272(%rsp), %rax
	cmpq	%rsi, 8(%rax)
	je	.L2511
.L1224:
	movq	240(%rsp), %rsi
	movq	272(%rsp), %rdi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	movq	%rax, 256(%rsp)
	movq	272(%rsp), %r9
.L1226:
	movq	240(%rsp), %rdi
	movq	(%rdi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdi)
	je	.L2512
.L1227:
	cmpq	$0, 256(%rsp)
	je	.L1880
	decq	(%r9)
	je	.L2513
.L1228:
	movq	%r10, 40(%rsp)
	movl	$10464633, %edi
	movq	%r8, 32(%rsp)
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 272(%rsp)
	je	.L1881
	movq	__pyx_d(%rip), %rax
	movq	__pyx_dict_version.13346(%rip), %rdi
	cmpq	%rdi, 24(%rax)
	jne	.L1229
	movq	__pyx_dict_cached_value.13347(%rip), %r11
	testq	%r11, %r11
	je	.L1230
	incq	(%r11)
.L1231:
	movq	__pyx_n_s_prod(%rip), %rsi
	movq	%r11, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%r11, 32(%rsp)
	call	__Pyx_PyObject_GetAttrStr
	movq	32(%rsp), %r11
	movq	40(%rsp), %r8
	testq	%rax, %rax
	movq	%rax, 248(%rsp)
	movq	48(%rsp), %r10
	je	.L1883
	decq	(%r11)
	je	.L2514
.L1233:
	movq	%r10, 40(%rsp)
	movl	$2, %edi
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, %r11
	je	.L1884
	movq	24(%r11), %rdx
	movq	__pyx_int_95(%rip), %rax
	incq	(%rax)
	movq	%rax, (%rdx)
	movq	__pyx_int_161(%rip), %rax
	incq	(%rax)
	movq	%rax, 8(%rdx)
	movq	248(%rsp), %rax
	movq	PyMethod_Type@GOTPCREL(%rip), %rdx
	cmpq	%rdx, 8(%rax)
	je	.L2515
.L1234:
	movq	248(%rsp), %rdi
	movq	%r11, %rsi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%r11, 32(%rsp)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r11
	movq	40(%rsp), %r8
	movq	%rax, 240(%rsp)
	movq	248(%rsp), %rcx
	movq	48(%rsp), %r10
.L1236:
	decq	(%r11)
	je	.L2516
.L1237:
	cmpq	$0, 240(%rsp)
	je	.L1885
	decq	(%rcx)
	je	.L2517
.L1238:
	movq	__pyx_d(%rip), %rax
	movq	__pyx_dict_version.13350(%rip), %rsi
	cmpq	%rsi, 24(%rax)
	jne	.L1239
	movq	__pyx_dict_cached_value.13351(%rip), %r11
	testq	%r11, %r11
	je	.L1240
	incq	(%r11)
.L1241:
	movq	__pyx_n_s_prod(%rip), %rsi
	movq	%r11, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%r11, 32(%rsp)
	call	__Pyx_PyObject_GetAttrStr
	movq	32(%rsp), %r11
	movq	40(%rsp), %r8
	testq	%rax, %rax
	movq	%rax, 224(%rsp)
	movq	48(%rsp), %r10
	je	.L1887
	decq	(%r11)
	je	.L2518
.L1243:
	movq	%r10, 40(%rsp)
	movl	$2, %edi
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, %r11
	je	.L1888
	movq	__pyx_int_0(%rip), %rax
	movq	24(%r11), %rdx
	movq	PyMethod_Type@GOTPCREL(%rip), %rdi
	incq	(%rax)
	movq	%rax, (%rdx)
	movq	__pyx_int_1176227742(%rip), %rax
	incq	(%rax)
	movq	%rax, 8(%rdx)
	movq	224(%rsp), %rax
	cmpq	%rdi, 8(%rax)
	je	.L2519
.L1244:
	movq	224(%rsp), %rdi
	movq	%r11, %rsi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%r11, 32(%rsp)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r11
	movq	40(%rsp), %r8
	movq	%rax, 248(%rsp)
	movq	224(%rsp), %rcx
	movq	48(%rsp), %r10
.L1246:
	decq	(%r11)
	je	.L2520
.L1247:
	cmpq	$0, 248(%rsp)
	je	.L1889
	decq	(%rcx)
	je	.L2521
.L1248:
	movq	__pyx_d(%rip), %rax
	movq	__pyx_dict_version.13354(%rip), %rdx
	cmpq	%rdx, 24(%rax)
	jne	.L1249
	movq	__pyx_dict_cached_value.13355(%rip), %r11
	testq	%r11, %r11
	je	.L1250
	incq	(%r11)
.L1251:
	movq	__pyx_n_s_prod(%rip), %rsi
	movq	%r11, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%r11, 32(%rsp)
	call	__Pyx_PyObject_GetAttrStr
	movq	32(%rsp), %r11
	movq	40(%rsp), %r8
	testq	%rax, %rax
	movq	%rax, 232(%rsp)
	movq	48(%rsp), %r10
	je	.L1891
	decq	(%r11)
	je	.L2522
.L1253:
	movq	%r10, 40(%rsp)
	movl	$3, %edi
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 216(%rsp)
	movq	%rax, %rdi
	je	.L1892
	movq	24(%rax), %rax
	movq	__pyx_int_2(%rip), %rdx
	movq	%rdi, %rsi
	movq	__pyx_builtin_sum(%rip), %rdi
	incq	(%rdx)
	movq	%rdx, (%rax)
	movq	__pyx_int_4(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 8(%rax)
	movq	__pyx_int_11(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 16(%rax)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 192(%rsp)
	je	.L1893
	movq	216(%rsp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	je	.L2523
.L1254:
	movq	%r10, 40(%rsp)
	movl	$3, %edi
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 216(%rsp)
	movq	%rax, %rdi
	je	.L1894
	movq	24(%rdi), %rdx
	movq	__pyx_int_10(%rip), %rax
	movq	__pyx_int_15(%rip), %rsi
	incq	(%rax)
	movq	%rax, (%rdx)
	incq	(%rsi)
	movq	%rsi, 8(%rdx)
	movq	%rdi, %rsi
	movq	__pyx_builtin_sum(%rip), %rdi
	incq	(%rax)
	movq	%rax, 16(%rdx)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 208(%rsp)
	je	.L1895
	movq	216(%rsp), %rsi
	movq	(%rsi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	je	.L2524
.L1255:
	movq	%r10, 40(%rsp)
	movq	208(%rsp), %rsi
	movl	$4, %edx
	movq	%r8, 32(%rsp)
	movq	192(%rsp), %rdi
	call	*PyObject_RichCompare@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 216(%rsp)
	je	.L1896
	movq	192(%rsp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	je	.L2525
.L1256:
	movq	208(%rsp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	je	.L2526
.L1257:
	movq	216(%rsp), %rsi
	cmpq	_Py_TrueStruct@GOTPCREL(%rip), %rsi
	sete	%dl
	cmpq	_Py_FalseStruct@GOTPCREL(%rip), %rsi
	sete	%al
	orb	%dl, %al
	jne	.L2029
	cmpq	_Py_NoneStruct@GOTPCREL(%rip), %rsi
	je	.L2029
	movq	%r10, 40(%rsp)
	movq	216(%rsp), %rdi
	movq	%r8, 32(%rsp)
	call	*PyObject_IsTrue@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testl	%eax, %eax
	movl	%eax, %edx
	js	.L1897
.L1260:
	movq	216(%rsp), %rsi
	movq	(%rsi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	je	.L2527
.L1261:
	testl	%edx, %edx
	je	.L1262
	movq	__pyx_int_1(%rip), %r11
	incq	(%r11)
.L1263:
	movq	%r11, 48(%rsp)
	movl	$2, %edi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 216(%rsp)
	movq	48(%rsp), %r11
	movq	%rax, %rdi
	je	.L1898
	movq	__pyx_int_102(%rip), %rax
	movq	24(%rdi), %rdx
	movq	PyMethod_Type@GOTPCREL(%rip), %rsi
	incq	(%rax)
	movq	%rax, (%rdx)
	movq	232(%rsp), %rax
	movq	%r11, 8(%rdx)
	cmpq	%rsi, 8(%rax)
	je	.L2528
.L1264:
	movq	216(%rsp), %rsi
	movq	232(%rsp), %rdi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	movq	%rax, 224(%rsp)
	movq	232(%rsp), %r9
.L1266:
	movq	216(%rsp), %rdi
	movq	(%rdi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdi)
	je	.L2529
.L1267:
	cmpq	$0, 224(%rsp)
	je	.L1899
	decq	(%r9)
	je	.L2530
.L1268:
	movq	%r10, 40(%rsp)
	movl	$246, %edi
	movq	%r8, 32(%rsp)
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 232(%rsp)
	je	.L1900
	movq	__pyx_d(%rip), %rax
	movq	__pyx_dict_version.13358(%rip), %rdi
	cmpq	%rdi, 24(%rax)
	jne	.L1269
	movq	__pyx_dict_cached_value.13359(%rip), %r11
	testq	%r11, %r11
	je	.L1270
	incq	(%r11)
.L1271:
	movq	__pyx_n_s_prod(%rip), %rsi
	movq	%r11, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%r11, 32(%rsp)
	call	__Pyx_PyObject_GetAttrStr
	movq	32(%rsp), %r11
	movq	40(%rsp), %r8
	testq	%rax, %rax
	movq	%rax, 208(%rsp)
	movq	48(%rsp), %r10
	je	.L1902
	decq	(%r11)
	je	.L2531
.L1273:
	movq	%r10, 40(%rsp)
	movl	$2, %edi
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, %r11
	je	.L1903
	movq	24(%r11), %rdx
	movq	__pyx_int_0(%rip), %rax
	incq	(%rax)
	movq	%rax, (%rdx)
	movq	__pyx_int_208(%rip), %rax
	incq	(%rax)
	movq	%rax, 8(%rdx)
	movq	208(%rsp), %rax
	movq	PyMethod_Type@GOTPCREL(%rip), %rdx
	cmpq	%rdx, 8(%rax)
	je	.L2532
.L1274:
	movq	208(%rsp), %rdi
	movq	%r11, %rsi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%r11, 32(%rsp)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r11
	movq	40(%rsp), %r8
	movq	%rax, 216(%rsp)
	movq	208(%rsp), %rcx
	movq	48(%rsp), %r10
.L1276:
	decq	(%r11)
	je	.L2533
.L1277:
	cmpq	$0, 216(%rsp)
	je	.L1904
	decq	(%rcx)
	je	.L2534
.L1278:
	movq	__pyx_int_55700720745(%rip), %rax
	movq	%r10, 40(%rsp)
	movl	$728, %edi
	movq	%r8, 32(%rsp)
	incq	(%rax)
	movq	%rax, 208(%rsp)
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 192(%rsp)
	je	.L1905
	xorl	%edx, %edx
	movq	208(%rsp), %rdi
	movq	%rax, %rsi
	call	*PyObject_RichCompare@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 136(%rsp)
	je	.L1906
	movq	192(%rsp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	je	.L2535
.L1279:
	movq	136(%rsp), %rdi
	cmpq	_Py_TrueStruct@GOTPCREL(%rip), %rdi
	sete	%dl
	cmpq	_Py_FalseStruct@GOTPCREL(%rip), %rdi
	sete	%al
	orb	%dl, %al
	jne	.L2030
	cmpq	_Py_NoneStruct@GOTPCREL(%rip), %rdi
	je	.L2030
	movq	%r10, 40(%rsp)
	movq	136(%rsp), %rdi
	movq	%r8, 32(%rsp)
	call	*PyObject_IsTrue@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testl	%eax, %eax
	movl	%eax, %edx
	js	.L1907
.L1282:
	movq	136(%rsp), %rsi
	movq	(%rsi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	je	.L2536
.L1283:
	testl	%edx, %edx
	je	.L1284
	movq	208(%rsp), %rax
	incq	(%rax)
	movq	%rax, %r11
.L1285:
	movq	208(%rsp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	je	.L2537
.L1286:
	movq	__pyx_d(%rip), %rax
	movq	__pyx_dict_version.13362(%rip), %rsi
	cmpq	%rsi, 24(%rax)
	jne	.L1287
	movq	__pyx_dict_cached_value.13363(%rip), %rax
	movq	%rax, 208(%rsp)
	testq	%rax, %rax
	je	.L1288
	incq	(%rax)
.L1289:
	movq	__pyx_n_s_prod(%rip), %rsi
	movq	208(%rsp), %rdi
	movq	%r11, 48(%rsp)
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_PyObject_GetAttrStr
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 192(%rsp)
	movq	48(%rsp), %r11
	je	.L1910
	movq	208(%rsp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	je	.L2538
.L1291:
	movq	%r11, 48(%rsp)
	movl	$2, %edi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 136(%rsp)
	movq	48(%rsp), %r11
	movq	%rax, %rdx
	je	.L1911
	movq	__pyx_int_1(%rip), %rax
	movq	24(%rdx), %rdx
	movq	PyMethod_Type@GOTPCREL(%rip), %rdi
	incq	(%rax)
	movq	%rax, (%rdx)
	movq	__pyx_int_289600(%rip), %rax
	incq	(%rax)
	movq	%rax, 8(%rdx)
	movq	192(%rsp), %rax
	cmpq	%rdi, 8(%rax)
	je	.L2539
.L1292:
	movq	136(%rsp), %rsi
	movq	192(%rsp), %rdi
	movq	%r11, 48(%rsp)
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	movq	%rax, 208(%rsp)
	movq	192(%rsp), %rcx
	movq	48(%rsp), %r11
.L1294:
	movq	136(%rsp), %rdi
	movq	(%rdi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdi)
	je	.L2540
.L1295:
	cmpq	$0, 208(%rsp)
	je	.L1912
	decq	(%rcx)
	je	.L2541
.L1296:
	movq	__pyx_d(%rip), %rax
	movq	__pyx_dict_version.13366(%rip), %rdx
	cmpq	%rdx, 24(%rax)
	jne	.L1297
	movq	__pyx_dict_cached_value.13367(%rip), %rax
	movq	%rax, 192(%rsp)
	testq	%rax, %rax
	je	.L1298
	incq	(%rax)
.L1299:
	movq	__pyx_n_s_prod(%rip), %rsi
	movq	192(%rsp), %rdi
	movq	%r11, 48(%rsp)
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_PyObject_GetAttrStr
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 184(%rsp)
	movq	48(%rsp), %r11
	je	.L1914
	movq	192(%rsp), %rsi
	movq	(%rsi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	je	.L2542
.L1301:
	movq	%r11, 48(%rsp)
	movl	$5, %edi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 136(%rsp)
	movq	48(%rsp), %r11
	je	.L1915
	movq	24(%rax), %rax
	movq	__pyx_int_230(%rip), %rdx
	movq	PyMethod_Type@GOTPCREL(%rip), %rsi
	incq	(%rdx)
	movq	%rdx, (%rax)
	movq	__pyx_int_92(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 8(%rax)
	movq	__pyx_int_120(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 16(%rax)
	movq	__pyx_int_220(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 24(%rax)
	movq	__pyx_int_159(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 32(%rax)
	movq	184(%rsp), %rax
	cmpq	%rsi, 8(%rax)
	je	.L2543
.L1302:
	movq	136(%rsp), %rsi
	movq	184(%rsp), %rdi
	movq	%r11, 48(%rsp)
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	movq	%rax, 192(%rsp)
	movq	184(%rsp), %rcx
	movq	48(%rsp), %r11
.L1304:
	movq	136(%rsp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	je	.L2544
.L1305:
	cmpq	$0, 192(%rsp)
	je	.L1916
	decq	(%rcx)
	je	.L2545
.L1306:
	movq	__pyx_d(%rip), %rax
	movq	__pyx_dict_version.13370(%rip), %rdi
	cmpq	%rdi, 24(%rax)
	jne	.L1307
	movq	__pyx_dict_cached_value.13371(%rip), %rax
	movq	%rax, 136(%rsp)
	testq	%rax, %rax
	je	.L1308
	incq	(%rax)
.L1309:
	movq	__pyx_n_s_prod(%rip), %rsi
	movq	136(%rsp), %rdi
	movq	%r11, 48(%rsp)
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_PyObject_GetAttrStr
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 200(%rsp)
	movq	48(%rsp), %r11
	je	.L1918
	movq	136(%rsp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	jne	.L1311
	movq	%r8, 32(%rsp)
	movq	%rdx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
.L1311:
	movq	%r11, 48(%rsp)
	movl	$3, %edi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 176(%rsp)
	movq	48(%rsp), %r11
	movq	%rax, %rdi
	je	.L1919
	movq	24(%rdi), %rdx
	movq	__pyx_int_11(%rip), %rax
	movq	__pyx_int_5(%rip), %rsi
	incq	(%rax)
	movq	%rax, (%rdx)
	incq	(%rsi)
	movq	%rsi, 8(%rdx)
	movq	%rdi, %rsi
	movq	__pyx_builtin_sum(%rip), %rdi
	incq	(%rax)
	movq	%rax, 16(%rdx)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 160(%rsp)
	movq	48(%rsp), %r11
	je	.L1920
	movq	176(%rsp), %rdi
	movq	(%rdi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdi)
	je	.L2546
.L1312:
	movq	%r11, 48(%rsp)
	movl	$3, %edi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 176(%rsp)
	movq	48(%rsp), %r11
	movq	%rax, %rsi
	je	.L1921
	movq	24(%rax), %rax
	movq	__pyx_int_15(%rip), %rdx
	movq	__pyx_builtin_sum(%rip), %rdi
	incq	(%rdx)
	movq	%rdx, (%rax)
	movq	__pyx_int_14(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 8(%rax)
	movq	__pyx_int_10(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 16(%rax)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 168(%rsp)
	movq	48(%rsp), %r11
	je	.L1922
	movq	176(%rsp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	je	.L2547
.L1313:
	movq	%r11, 48(%rsp)
	movq	168(%rsp), %rsi
	movl	$2, %edx
	movq	%r10, 40(%rsp)
	movq	160(%rsp), %rdi
	movq	%r8, 32(%rsp)
	call	*PyObject_RichCompare@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 176(%rsp)
	movq	48(%rsp), %r11
	je	.L1923
	movq	160(%rsp), %rsi
	movq	(%rsi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	je	.L2548
.L1314:
	movq	168(%rsp), %rsi
	movq	(%rsi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	je	.L2549
.L1315:
	movq	176(%rsp), %rdi
	cmpq	_Py_TrueStruct@GOTPCREL(%rip), %rdi
	sete	%dl
	cmpq	_Py_FalseStruct@GOTPCREL(%rip), %rdi
	sete	%al
	orb	%dl, %al
	jne	.L2031
	cmpq	_Py_NoneStruct@GOTPCREL(%rip), %rdi
	je	.L2031
	movq	%r11, 48(%rsp)
	movq	176(%rsp), %rdi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*PyObject_IsTrue@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testl	%eax, %eax
	movq	48(%rsp), %r11
	movl	%eax, %edx
	js	.L1924
.L1318:
	movq	176(%rsp), %rdi
	movq	(%rdi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdi)
	je	.L2550
.L1319:
	testl	%edx, %edx
	je	.L1320
	movq	__pyx_int_1(%rip), %rax
	movq	%rax, 136(%rsp)
	incq	(%rax)
.L1321:
	movq	%r11, 48(%rsp)
	movl	$2, %edi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 176(%rsp)
	movq	48(%rsp), %r11
	je	.L1925
	movq	24(%rax), %rdx
	movq	136(%rsp), %rax
	movq	%rax, (%rdx)
	movq	__pyx_int_49769(%rip), %rax
	incq	(%rax)
	movq	%rax, 8(%rdx)
	movq	200(%rsp), %rax
	movq	PyMethod_Type@GOTPCREL(%rip), %rdx
	cmpq	%rdx, 8(%rax)
	je	.L2551
.L1322:
	movq	176(%rsp), %rsi
	movq	200(%rsp), %rdi
	movq	%r11, 48(%rsp)
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	movq	%rax, 184(%rsp)
	movq	200(%rsp), %rcx
	movq	48(%rsp), %r11
.L1324:
	movq	176(%rsp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	jne	.L1325
	movq	%r11, 56(%rsp)
	movq	%rdx, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %rcx
.L1325:
	cmpq	$0, 184(%rsp)
	je	.L1926
	decq	(%rcx)
	je	.L2552
.L1326:
	movq	%r11, 48(%rsp)
	movl	$1, %edi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 200(%rsp)
	movq	48(%rsp), %r11
	movq	%rax, %rsi
	je	.L1927
	movq	__pyx_int_1466502782(%rip), %rax
	movq	24(%rsi), %rdx
	movq	__pyx_builtin_min(%rip), %rdi
	incq	(%rax)
	movq	%rax, (%rdx)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 176(%rsp)
	movq	48(%rsp), %r11
	je	.L1928
	movq	200(%rsp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	jne	.L1327
	movq	%r8, 32(%rsp)
	movq	%rdx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
.L1327:
	movq	%r11, 48(%rsp)
	movl	$1589, %edi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 200(%rsp)
	movq	48(%rsp), %r11
	je	.L1929
	movq	__pyx_d(%rip), %rax
	movq	__pyx_dict_version.13374(%rip), %rsi
	cmpq	%rsi, 24(%rax)
	jne	.L1328
	movq	__pyx_dict_cached_value.13375(%rip), %rax
	movq	%rax, 136(%rsp)
	testq	%rax, %rax
	je	.L1329
	incq	(%rax)
.L1330:
	movq	__pyx_n_s_prod(%rip), %rsi
	movq	136(%rsp), %rdi
	movq	%r11, 48(%rsp)
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_PyObject_GetAttrStr
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 160(%rsp)
	movq	48(%rsp), %r11
	je	.L1931
	movq	136(%rsp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	jne	.L1332
	movq	%r8, 32(%rsp)
	movq	%rdx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
.L1332:
	movq	%r11, 48(%rsp)
	movl	$2, %edi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 168(%rsp)
	movq	48(%rsp), %r11
	movq	%rax, %rsi
	je	.L1932
	movq	__pyx_int_0(%rip), %rax
	movq	24(%rsi), %rdx
	movq	PyMethod_Type@GOTPCREL(%rip), %rdi
	incq	(%rax)
	movq	%rax, (%rdx)
	movq	__pyx_int_198398(%rip), %rax
	incq	(%rax)
	movq	%rax, 8(%rdx)
	movq	160(%rsp), %rax
	cmpq	%rdi, 8(%rax)
	je	.L2553
.L1333:
	movq	168(%rsp), %rsi
	movq	160(%rsp), %rdi
	movq	%r11, 48(%rsp)
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	movq	%rax, 136(%rsp)
	movq	160(%rsp), %rcx
	movq	48(%rsp), %r11
.L1335:
	movq	168(%rsp), %rsi
	movq	(%rsi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	jne	.L1336
	movq	%r11, 56(%rsp)
	movq	%rsi, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %rcx
.L1336:
	cmpq	$0, 136(%rsp)
	je	.L1933
	decq	(%rcx)
	je	.L2554
.L1337:
	movq	__pyx_d(%rip), %rax
	movq	__pyx_dict_version.13378(%rip), %rdx
	cmpq	%rdx, 24(%rax)
	jne	.L1338
	movq	__pyx_dict_cached_value.13379(%rip), %rax
	movq	%rax, 160(%rsp)
	testq	%rax, %rax
	je	.L1339
	incq	(%rax)
.L1340:
	movq	__pyx_n_s_prod(%rip), %rsi
	movq	160(%rsp), %rdi
	movq	%r11, 48(%rsp)
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_PyObject_GetAttrStr
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 120(%rsp)
	movq	48(%rsp), %r11
	je	.L1935
	movq	160(%rsp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	je	.L2555
.L1342:
	movq	%r11, 48(%rsp)
	movl	$2, %edi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 168(%rsp)
	movq	48(%rsp), %r11
	movq	%rax, %rsi
	je	.L1936
	movq	24(%rsi), %rdx
	movq	__pyx_int_196905722(%rip), %rax
	movq	PyMethod_Type@GOTPCREL(%rip), %rsi
	incq	(%rax)
	movq	%rax, (%rdx)
	movq	__pyx_int_1(%rip), %rax
	incq	(%rax)
	movq	%rax, 8(%rdx)
	movq	120(%rsp), %rax
	cmpq	%rsi, 8(%rax)
	je	.L2556
.L1343:
	movq	168(%rsp), %rsi
	movq	120(%rsp), %rdi
	movq	%r11, 48(%rsp)
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_PyObject_CallOneArg
	movq	120(%rsp), %rcx
	movq	32(%rsp), %r8
	movq	%rax, 160(%rsp)
	movq	40(%rsp), %r10
	movq	48(%rsp), %r11
.L1345:
	movq	168(%rsp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	jne	.L1346
	movq	%r11, 56(%rsp)
	movq	%rdx, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %rcx
.L1346:
	cmpq	$0, 160(%rsp)
	je	.L1937
	decq	(%rcx)
	je	.L2557
.L1347:
	movq	%r11, 48(%rsp)
	movl	$4, %edi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 120(%rsp)
	movq	48(%rsp), %r11
	movq	%rax, %rdi
	je	.L1938
	movq	24(%rax), %rax
	movq	__pyx_int_4217206544(%rip), %rdx
	movq	%rdi, %rsi
	movq	__pyx_builtin_sum(%rip), %rdi
	incq	(%rdx)
	movq	%rdx, (%rax)
	movq	__pyx_int_48993801750(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 8(%rax)
	movq	__pyx_int_25736(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 16(%rax)
	movq	__pyx_int_3879782983(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 24(%rax)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 168(%rsp)
	movq	48(%rsp), %r11
	je	.L1939
	movq	120(%rsp), %rdi
	movq	(%rdi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdi)
	je	.L2558
.L1348:
	movq	__pyx_d(%rip), %rax
	movq	__pyx_dict_version.13382(%rip), %rdi
	cmpq	%rdi, 24(%rax)
	jne	.L1349
	movq	__pyx_dict_cached_value.13383(%rip), %rax
	movq	%rax, 120(%rsp)
	testq	%rax, %rax
	je	.L1350
	incq	(%rax)
.L1351:
	movq	__pyx_n_s_prod(%rip), %rsi
	movq	120(%rsp), %rdi
	movq	%r11, 48(%rsp)
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_PyObject_GetAttrStr
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 152(%rsp)
	movq	48(%rsp), %r11
	je	.L1941
	movq	120(%rsp), %rdi
	movq	(%rdi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdi)
	jne	.L1353
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
.L1353:
	movq	%r11, 48(%rsp)
	movl	$3, %edi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 104(%rsp)
	movq	48(%rsp), %r11
	movq	%rax, %rsi
	je	.L1942
	movq	24(%rax), %rax
	movq	__pyx_int_2(%rip), %rdx
	movq	__pyx_builtin_sum(%rip), %rdi
	incq	(%rdx)
	movq	%rdx, (%rax)
	movq	__pyx_int_15(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 8(%rax)
	movq	__pyx_int_4(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 16(%rax)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 112(%rsp)
	movq	48(%rsp), %r11
	je	.L1943
	movq	104(%rsp), %rsi
	movq	(%rsi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	je	.L2559
.L1354:
	movq	%r11, 48(%rsp)
	movl	$3, %edi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 104(%rsp)
	movq	48(%rsp), %r11
	movq	%rax, %rdi
	je	.L1944
	movq	24(%rax), %rax
	movq	__pyx_int_4(%rip), %rdx
	movq	%rdi, %rsi
	movq	__pyx_builtin_sum(%rip), %rdi
	incq	(%rdx)
	movq	%rdx, (%rax)
	movq	__pyx_int_15(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 8(%rax)
	movq	__pyx_int_11(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 16(%rax)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 144(%rsp)
	movq	48(%rsp), %r11
	je	.L1945
	movq	104(%rsp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	jne	.L1355
	movq	%r8, 32(%rsp)
	movq	%rdx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
.L1355:
	movq	%r11, 48(%rsp)
	movl	$3, %edi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 104(%rsp)
	movq	48(%rsp), %r11
	movq	%rax, %rsi
	je	.L1946
	movq	24(%rax), %rax
	movq	__pyx_int_7(%rip), %rdx
	movq	__pyx_builtin_sum(%rip), %rdi
	incq	(%rdx)
	movq	%rdx, (%rax)
	movq	__pyx_int_15(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 8(%rax)
	movq	__pyx_int_9(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 16(%rax)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 128(%rsp)
	movq	48(%rsp), %r11
	je	.L1947
	movq	104(%rsp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	je	.L2560
.L1356:
	movq	%r11, 48(%rsp)
	movl	$3, %edi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 104(%rsp)
	movq	48(%rsp), %r11
	je	.L1948
	movq	112(%rsp), %xmm0
	movq	24(%rax), %rax
	movq	128(%rsp), %rdx
	movq	PyMethod_Type@GOTPCREL(%rip), %rsi
	movhps	144(%rsp), %xmm0
	movq	%rdx, 16(%rax)
	movups	%xmm0, (%rax)
	movq	152(%rsp), %rax
	cmpq	%rsi, 8(%rax)
	je	.L2561
.L1357:
	movq	104(%rsp), %rsi
	movq	152(%rsp), %rdi
	movq	%r11, 48(%rsp)
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	movq	%rax, 120(%rsp)
	movq	152(%rsp), %rcx
	movq	48(%rsp), %r11
.L1359:
	movq	104(%rsp), %rsi
	movq	(%rsi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	je	.L2562
.L1360:
	cmpq	$0, 120(%rsp)
	je	.L1949
	decq	(%rcx)
	je	.L2563
.L1361:
	movq	__pyx_d(%rip), %rax
	movq	__pyx_dict_version.13386(%rip), %rdi
	cmpq	%rdi, 24(%rax)
	jne	.L1362
	movq	__pyx_dict_cached_value.13387(%rip), %rax
	movq	%rax, 104(%rsp)
	testq	%rax, %rax
	je	.L1363
	incq	(%rax)
.L1364:
	movq	__pyx_n_s_prod(%rip), %rsi
	movq	104(%rsp), %rdi
	movq	%r11, 48(%rsp)
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_PyObject_GetAttrStr
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 128(%rsp)
	movq	48(%rsp), %r11
	je	.L1951
	movq	104(%rsp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	jne	.L1366
	movq	%r8, 32(%rsp)
	movq	%rdx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
.L1366:
	movq	%r11, 48(%rsp)
	movl	$2, %edi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 104(%rsp)
	movq	48(%rsp), %r11
	movq	%rax, %rsi
	je	.L1952
	movq	24(%rsi), %rdx
	movq	__pyx_int_0(%rip), %rax
	incq	(%rax)
	movq	%rax, (%rdx)
	movq	__pyx_int_44586(%rip), %rax
	incq	(%rax)
	movq	%rax, 8(%rdx)
	movq	128(%rsp), %rax
	movq	PyMethod_Type@GOTPCREL(%rip), %rdx
	cmpq	%rdx, 8(%rax)
	je	.L2564
.L1367:
	movq	104(%rsp), %rsi
	movq	128(%rsp), %rdi
	movq	%r11, 48(%rsp)
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	movq	%rax, 152(%rsp)
	movq	128(%rsp), %rcx
	movq	48(%rsp), %r11
.L1369:
	movq	104(%rsp), %rsi
	movq	(%rsi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	jne	.L1370
	movq	%r11, 56(%rsp)
	movq	%rsi, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %rcx
.L1370:
	cmpq	$0, 152(%rsp)
	je	.L1953
	decq	(%rcx)
	jne	.L1371
	movq	%r11, 48(%rsp)
	movq	%rcx, %rdi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
.L1371:
	movq	%r11, 48(%rsp)
	movl	$2, %edi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 128(%rsp)
	movq	48(%rsp), %r11
	movq	%rax, %rdi
	je	.L1954
	movq	24(%rdi), %rdx
	movq	__pyx_int_14(%rip), %rax
	movq	%rdi, %rsi
	movq	__pyx_builtin_sum(%rip), %rdi
	incq	(%rax)
	movq	%rax, (%rdx)
	movq	__pyx_int_1(%rip), %rax
	incq	(%rax)
	movq	%rax, 8(%rdx)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 104(%rsp)
	movq	48(%rsp), %r11
	je	.L1955
	movq	128(%rsp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	jne	.L1372
	movq	%r8, 32(%rsp)
	movq	%rdx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
.L1372:
	movq	%r11, 48(%rsp)
	movl	$3511, %edi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 128(%rsp)
	movq	48(%rsp), %r11
	je	.L1956
	movl	$264022477, %edi
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 144(%rsp)
	movq	48(%rsp), %r11
	je	.L1957
	movq	__pyx_d(%rip), %rax
	movq	__pyx_dict_version.13390(%rip), %rsi
	cmpq	%rsi, 24(%rax)
	jne	.L1373
	movq	__pyx_dict_cached_value.13391(%rip), %rax
	movq	%rax, 112(%rsp)
	testq	%rax, %rax
	je	.L1374
	incq	(%rax)
.L1375:
	movq	__pyx_n_s_prod(%rip), %rsi
	movq	112(%rsp), %rdi
	movq	%r11, 48(%rsp)
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_PyObject_GetAttrStr
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 96(%rsp)
	movq	48(%rsp), %r11
	je	.L1959
	movq	112(%rsp), %rdi
	movq	(%rdi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdi)
	je	.L2565
.L1377:
	movq	%r11, 48(%rsp)
	movl	$3, %edi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 88(%rsp)
	movq	48(%rsp), %r11
	movq	%rax, %rsi
	je	.L1960
	movq	24(%rax), %rax
	movq	__pyx_int_12(%rip), %rdx
	movq	__pyx_builtin_sum(%rip), %rdi
	incq	(%rdx)
	movq	%rdx, (%rax)
	movq	__pyx_int_10(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 8(%rax)
	movq	__pyx_int_11(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 16(%rax)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 72(%rsp)
	movq	48(%rsp), %r11
	je	.L1961
	movq	88(%rsp), %rsi
	movq	(%rsi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	je	.L2566
.L1378:
	movq	%r11, 48(%rsp)
	movl	$3, %edi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 88(%rsp)
	movq	48(%rsp), %r11
	movq	%rax, %rdi
	je	.L1962
	movq	24(%rax), %rax
	movq	__pyx_int_11(%rip), %rdx
	movq	%rdi, %rsi
	movq	__pyx_builtin_sum(%rip), %rdi
	incq	(%rdx)
	movq	%rdx, (%rax)
	movq	__pyx_int_2(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 8(%rax)
	movq	__pyx_int_9(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 16(%rax)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 80(%rsp)
	movq	48(%rsp), %r11
	je	.L1963
	movq	88(%rsp), %rdi
	movq	(%rdi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdi)
	je	.L2567
.L1379:
	movq	%r11, 48(%rsp)
	xorl	%edx, %edx
	movq	80(%rsp), %rsi
	movq	%r10, 40(%rsp)
	movq	72(%rsp), %rdi
	movq	%r8, 32(%rsp)
	call	*PyObject_RichCompare@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 88(%rsp)
	movq	48(%rsp), %r11
	je	.L1964
	movq	72(%rsp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	je	.L2568
.L1380:
	movq	80(%rsp), %rsi
	movq	(%rsi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	je	.L2569
.L1381:
	movq	88(%rsp), %rdi
	cmpq	_Py_TrueStruct@GOTPCREL(%rip), %rdi
	sete	%al
	sete	%cl
	cmpq	_Py_FalseStruct@GOTPCREL(%rip), %rdi
	sete	%dl
	movzbl	%cl, %ecx
	orb	%al, %dl
	jne	.L1382
	cmpq	_Py_NoneStruct@GOTPCREL(%rip), %rdi
	je	.L1382
	movq	%r11, 48(%rsp)
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*PyObject_IsTrue@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testl	%eax, %eax
	movq	48(%rsp), %r11
	movl	%eax, %ecx
	js	.L1965
.L1382:
	movq	88(%rsp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	je	.L2570
.L1383:
	testl	%ecx, %ecx
	je	.L1384
	movq	__pyx_int_1(%rip), %rax
	movq	%rax, 40(%rsp)
	incq	(%rax)
.L1385:
	movq	%r11, 56(%rsp)
	movl	$2, %edi
	movq	%r10, 48(%rsp)
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	48(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 88(%rsp)
	movq	56(%rsp), %r11
	movq	%rax, %rsi
	je	.L1966
	movq	__pyx_int_535767221581(%rip), %rax
	movq	24(%rsi), %rdx
	movq	PyMethod_Type@GOTPCREL(%rip), %rdi
	incq	(%rax)
	movq	%rax, (%rdx)
	movq	40(%rsp), %rax
	movq	%rax, 8(%rdx)
	movq	96(%rsp), %rax
	cmpq	%rdi, 8(%rax)
	je	.L2571
.L1386:
	movq	88(%rsp), %rsi
	movq	96(%rsp), %rdi
	movq	%r11, 48(%rsp)
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_PyObject_CallOneArg
	movq	96(%rsp), %rcx
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	movq	48(%rsp), %r11
	movq	%rax, 112(%rsp)
.L1388:
	movq	88(%rsp), %rdi
	movq	(%rdi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdi)
	je	.L2572
.L1389:
	cmpq	$0, 112(%rsp)
	je	.L1967
	decq	(%rcx)
	je	.L2573
.L1390:
	movq	__pyx_int_2388317100(%rip), %rax
	movq	%r11, 56(%rsp)
	movl	$611, %edi
	movq	%r10, 48(%rsp)
	incq	(%rax)
	movq	%r8, 32(%rsp)
	movq	%rax, 96(%rsp)
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	48(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 40(%rsp)
	movq	56(%rsp), %r11
	je	.L1968
	xorl	%edx, %edx
	movq	96(%rsp), %rdi
	movq	%rax, %rsi
	call	*PyObject_RichCompare@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	48(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 80(%rsp)
	movq	56(%rsp), %r11
	je	.L1969
	movq	40(%rsp), %rsi
	movq	(%rsi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	jne	.L1391
	movq	%r8, 32(%rsp)
	movq	%rsi, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	32(%rsp), %r8
.L1391:
	movq	80(%rsp), %rdi
	cmpq	_Py_TrueStruct@GOTPCREL(%rip), %rdi
	sete	%al
	sete	%cl
	cmpq	_Py_FalseStruct@GOTPCREL(%rip), %rdi
	sete	%dl
	movzbl	%cl, %ecx
	orb	%al, %dl
	jne	.L1392
	cmpq	_Py_NoneStruct@GOTPCREL(%rip), %rdi
	je	.L1392
	movq	%r11, 48(%rsp)
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*PyObject_IsTrue@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testl	%eax, %eax
	movq	48(%rsp), %r11
	movl	%eax, %ecx
	js	.L1970
.L1392:
	movq	80(%rsp), %rsi
	movq	(%rsi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	jne	.L1393
	movq	%r11, 56(%rsp)
	movq	%rsi, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movl	%ecx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movl	32(%rsp), %ecx
.L1393:
	testl	%ecx, %ecx
	je	.L1394
	movq	96(%rsp), %rax
	incq	(%rax)
	movq	%rax, 80(%rsp)
.L1395:
	movq	80(%rsp), %rax
	cmpq	$0, (%rax)
	jne	.L1396
	movq	%r11, 48(%rsp)
	movq	%rax, %rdi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
.L1396:
	movq	%r11, 56(%rsp)
	movl	$141, %edi
	movq	%r10, 48(%rsp)
	movq	%r8, 32(%rsp)
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	48(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 40(%rsp)
	movq	56(%rsp), %r11
	je	.L1972
	xorl	%edx, %edx
	movq	80(%rsp), %rsi
	movq	%rax, %rdi
	call	*PyObject_RichCompare@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	48(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 72(%rsp)
	movq	56(%rsp), %r11
	je	.L1973
	movq	40(%rsp), %rdi
	movq	(%rdi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdi)
	jne	.L1397
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	32(%rsp), %r8
.L1397:
	movq	72(%rsp), %rdi
	cmpq	_Py_TrueStruct@GOTPCREL(%rip), %rdi
	sete	%al
	sete	%cl
	cmpq	_Py_FalseStruct@GOTPCREL(%rip), %rdi
	sete	%dl
	movzbl	%cl, %ecx
	orb	%al, %dl
	jne	.L1398
	cmpq	_Py_NoneStruct@GOTPCREL(%rip), %rdi
	je	.L1398
	movq	%r11, 48(%rsp)
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*PyObject_IsTrue@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testl	%eax, %eax
	movq	48(%rsp), %r11
	movl	%eax, %ecx
	js	.L1974
.L1398:
	movq	72(%rsp), %rdi
	movq	(%rdi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdi)
	jne	.L1399
	movq	%r11, 56(%rsp)
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movl	%ecx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movl	32(%rsp), %ecx
.L1399:
	testl	%ecx, %ecx
	jne	.L2574
	movq	80(%rsp), %rax
	incq	(%rax)
.L2326:
	movq	80(%rsp), %rsi
	movq	%rax, 88(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	jne	.L1402
	movq	%r11, 48(%rsp)
	movq	%rsi, %rdi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
.L1402:
	movq	96(%rsp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	jne	.L1403
	movq	%r11, 48(%rsp)
	movq	%rdx, %rdi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
.L1403:
	movq	__pyx_d(%rip), %rax
	movq	__pyx_dict_version.13394(%rip), %rsi
	cmpq	%rsi, 24(%rax)
	jne	.L1404
	movq	__pyx_dict_cached_value.13395(%rip), %rax
	movq	%rax, 40(%rsp)
	testq	%rax, %rax
	je	.L1405
	incq	(%rax)
.L1406:
	movq	__pyx_n_s_prod(%rip), %rsi
	movq	40(%rsp), %rdi
	movq	%r11, 56(%rsp)
	movq	%r10, 48(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_PyObject_GetAttrStr
	movq	32(%rsp), %r8
	movq	48(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 72(%rsp)
	movq	56(%rsp), %r11
	je	.L1977
	movq	40(%rsp), %rdi
	movq	(%rdi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdi)
	jne	.L1408
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	32(%rsp), %r8
.L1408:
	movq	%r11, 56(%rsp)
	movl	$2, %edi
	movq	%r10, 48(%rsp)
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	48(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 40(%rsp)
	movq	56(%rsp), %r11
	movq	%rax, %rdx
	je	.L1978
	movq	__pyx_int_0(%rip), %rax
	movq	24(%rdx), %rdx
	movq	PyMethod_Type@GOTPCREL(%rip), %rdi
	incq	(%rax)
	movq	%rax, (%rdx)
	movq	__pyx_int_3462(%rip), %rax
	incq	(%rax)
	movq	%rax, 8(%rdx)
	movq	72(%rsp), %rax
	cmpq	%rdi, 8(%rax)
	je	.L2575
.L1409:
	movq	40(%rsp), %rsi
	movq	72(%rsp), %rdi
	movq	%r11, 56(%rsp)
	movq	%r10, 48(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_PyObject_CallOneArg
	movq	72(%rsp), %rcx
	movq	32(%rsp), %r8
	movq	48(%rsp), %r10
	movq	56(%rsp), %r11
	movq	%rax, 96(%rsp)
.L1411:
	movq	40(%rsp), %rdi
	movq	(%rdi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdi)
	jne	.L1412
	movq	%r11, 64(%rsp)
	movq	%r10, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%rcx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	64(%rsp), %r11
	movq	56(%rsp), %r10
	movq	48(%rsp), %r8
	movq	32(%rsp), %rcx
.L1412:
	cmpq	$0, 96(%rsp)
	je	.L1979
	decq	(%rcx)
	jne	.L1413
	movq	%r11, 48(%rsp)
	movq	%rcx, %rdi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
.L1413:
	movq	__pyx_d(%rip), %rax
	movq	__pyx_dict_version.13398(%rip), %rsi
	cmpq	%rsi, 24(%rax)
	jne	.L1414
	movq	__pyx_dict_cached_value.13399(%rip), %rax
	movq	%rax, 72(%rsp)
	testq	%rax, %rax
	je	.L1415
	incq	(%rax)
.L1416:
	movq	__pyx_n_s_prod(%rip), %rsi
	movq	72(%rsp), %rdi
	movq	%r11, 56(%rsp)
	movq	%r10, 48(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_PyObject_GetAttrStr
	movq	32(%rsp), %r8
	movq	48(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 40(%rsp)
	movq	56(%rsp), %r11
	je	.L1981
	movq	72(%rsp), %rsi
	movq	(%rsi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	jne	.L1418
	movq	%r8, 32(%rsp)
	movq	%rsi, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	32(%rsp), %r8
.L1418:
	movq	%r11, 56(%rsp)
	movl	$3, %edi
	movq	%r10, 48(%rsp)
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	48(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 80(%rsp)
	movq	56(%rsp), %r11
	je	.L1982
	movq	24(%rax), %rax
	movq	__pyx_int_139(%rip), %rdx
	movq	PyMethod_Type@GOTPCREL(%rip), %rdi
	incq	(%rdx)
	movq	%rdx, (%rax)
	movq	__pyx_int_53(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 8(%rax)
	movq	__pyx_int_151(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 16(%rax)
	movq	40(%rsp), %rax
	cmpq	%rdi, 8(%rax)
	je	.L2576
.L1419:
	movq	80(%rsp), %rsi
	movq	40(%rsp), %rdi
	movq	%r11, 56(%rsp)
	movq	%r10, 48(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_PyObject_CallOneArg
	movq	40(%rsp), %rcx
	movq	32(%rsp), %r8
	movq	48(%rsp), %r10
	movq	56(%rsp), %r11
	movq	%rax, 72(%rsp)
.L1421:
	movq	80(%rsp), %rsi
	movq	(%rsi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	jne	.L1422
	movq	%r11, 56(%rsp)
	movq	%rsi, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %rcx
.L1422:
	cmpq	$0, 72(%rsp)
	je	.L1983
	decq	(%rcx)
	jne	.L1423
	movq	%r11, 48(%rsp)
	movq	%rcx, %rdi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
.L1423:
	movq	%r11, 56(%rsp)
	movl	$5, %edi
	movq	%r10, 48(%rsp)
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	48(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 40(%rsp)
	movq	56(%rsp), %r11
	movq	%rax, %rsi
	je	.L1984
	movq	24(%rax), %rax
	movq	__pyx_int_12998225(%rip), %rdx
	movq	__pyx_builtin_sum(%rip), %rdi
	incq	(%rdx)
	movq	%rdx, (%rax)
	movq	__pyx_int_689(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 8(%rax)
	movq	__pyx_int_2007(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 16(%rax)
	movq	__pyx_int_5(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 24(%rax)
	movq	__pyx_int_826(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 32(%rax)
	call	__Pyx_PyObject_CallOneArg
	movq	32(%rsp), %r8
	movq	48(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 80(%rsp)
	movq	56(%rsp), %r11
	je	.L1985
	movq	40(%rsp), %rsi
	movq	(%rsi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	jne	.L1424
	movq	%r8, 32(%rsp)
	movq	%rsi, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	32(%rsp), %r8
.L1424:
	movq	__pyx_d(%rip), %rax
	movq	__pyx_dict_version.13402(%rip), %rsi
	cmpq	%rsi, 24(%rax)
	jne	.L1425
	movq	__pyx_dict_cached_value.13403(%rip), %rax
	movq	%rax, 40(%rsp)
	testq	%rax, %rax
	je	.L1426
	incq	(%rax)
.L1427:
	movq	__pyx_n_s_prod(%rip), %rsi
	movq	40(%rsp), %rdi
	movq	%r11, 56(%rsp)
	movq	%r10, 48(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_PyObject_GetAttrStr
	movq	32(%rsp), %r8
	movq	48(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 64(%rsp)
	movq	56(%rsp), %r11
	je	.L1987
	movq	40(%rsp), %rdi
	movq	(%rdi), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdi)
	jne	.L1429
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	32(%rsp), %r8
.L1429:
	movq	%r11, 56(%rsp)
	movl	$2, %edi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	40(%rsp), %r8
	movq	48(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 32(%rsp)
	movq	56(%rsp), %r11
	movq	%rax, %rdx
	je	.L1988
	movq	__pyx_int_193(%rip), %rax
	movq	24(%rdx), %rdx
	movq	PyMethod_Type@GOTPCREL(%rip), %rdi
	incq	(%rax)
	movq	%rax, (%rdx)
	movq	__pyx_int_0(%rip), %rax
	incq	(%rax)
	movq	%rax, 8(%rdx)
	movq	64(%rsp), %rax
	cmpq	%rdi, 8(%rax)
	je	.L2577
.L1430:
	movq	32(%rsp), %rsi
	movq	64(%rsp), %rdi
	movq	%r10, 56(%rsp)
	movq	%r11, 288(%rsp)
	movq	%r8, 48(%rsp)
	call	__Pyx_PyObject_CallOneArg
	movq	64(%rsp), %rcx
	movq	48(%rsp), %r8
	movq	%rax, 40(%rsp)
	movq	56(%rsp), %r10
	movq	288(%rsp), %r11
.L1432:
	movq	32(%rsp), %rdi
	movq	(%rdi), %rax
	movq	%rax, 48(%rsp)
	decq	%rax
	movq	%rax, (%rdi)
	jne	.L1433
	movq	%r11, 288(%rsp)
	movq	%r10, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	%rcx, 48(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	64(%rsp), %r10
	movq	56(%rsp), %r8
	movq	288(%rsp), %r11
	movq	48(%rsp), %rcx
.L1433:
	cmpq	$0, 40(%rsp)
	je	.L1989
	decq	(%rcx)
	jne	.L1434
	movq	%r11, 56(%rsp)
	movq	%rcx, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	32(%rsp), %r8
.L1434:
	movq	__pyx_d(%rip), %rax
	movq	__pyx_dict_version.13406(%rip), %rdx
	cmpq	%rdx, 24(%rax)
	jne	.L1435
	movq	__pyx_dict_cached_value.13407(%rip), %rax
	movq	%rax, 32(%rsp)
	testq	%rax, %rax
	je	.L1436
	incq	(%rax)
.L1437:
	movq	__pyx_n_s_prod(%rip), %rsi
	movq	32(%rsp), %rdi
	movq	%r10, 64(%rsp)
	movq	%r11, 288(%rsp)
	movq	%r8, 48(%rsp)
	call	__Pyx_PyObject_GetAttrStr
	movq	48(%rsp), %r8
	movq	64(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 56(%rsp)
	movq	288(%rsp), %r11
	je	.L1991
	movq	32(%rsp), %rsi
	movq	(%rsi), %rax
	movq	%rax, 48(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	jne	.L1439
	movq	%r8, 48(%rsp)
	movq	%rsi, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	64(%rsp), %r10
	movq	48(%rsp), %r8
	movq	288(%rsp), %r11
.L1439:
	movq	%r11, 288(%rsp)
	movl	$2, %edi
	movq	%r10, 64(%rsp)
	movq	%r8, 48(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	48(%rsp), %r8
	movq	64(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 32(%rsp)
	movq	288(%rsp), %r11
	movq	%rax, %rdi
	je	.L1992
	movq	__pyx_int_0(%rip), %rax
	movq	24(%rdi), %rdx
	movq	PyMethod_Type@GOTPCREL(%rip), %rsi
	incq	(%rax)
	movq	%rax, (%rdx)
	movq	__pyx_int_37675211133(%rip), %rax
	incq	(%rax)
	movq	%rax, 8(%rdx)
	movq	56(%rsp), %rax
	cmpq	%rsi, 8(%rax)
	je	.L2578
.L1440:
	movq	32(%rsp), %rsi
	movq	56(%rsp), %rdi
	movq	%r11, 296(%rsp)
	movq	%r10, 288(%rsp)
	movq	%r8, 48(%rsp)
	call	__Pyx_PyObject_CallOneArg
	movq	56(%rsp), %rcx
	movq	48(%rsp), %r8
	movq	%rax, 64(%rsp)
	movq	288(%rsp), %r10
	movq	296(%rsp), %r11
.L1442:
	movq	32(%rsp), %rsi
	movq	(%rsi), %rax
	movq	%rax, 48(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	jne	.L1443
	movq	%r11, 296(%rsp)
	movq	%rsi, %rdi
	movq	%r10, 288(%rsp)
	movq	%r8, 56(%rsp)
	movq	%rcx, 48(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r8
	movq	48(%rsp), %rcx
	movq	296(%rsp), %r11
	movq	288(%rsp), %r10
.L1443:
	cmpq	$0, 64(%rsp)
	je	.L1993
	decq	(%rcx)
	jne	.L1444
	movq	%r11, 56(%rsp)
	movq	%rcx, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	32(%rsp), %r8
.L1444:
	movq	__pyx_d(%rip), %rax
	movq	__pyx_dict_version.13410(%rip), %rdi
	cmpq	%rdi, 24(%rax)
	jne	.L1445
	movq	__pyx_dict_cached_value.13411(%rip), %rax
	movq	%rax, 32(%rsp)
	testq	%rax, %rax
	je	.L1446
	incq	(%rax)
.L1447:
	movq	__pyx_n_s_prod(%rip), %rsi
	movq	32(%rsp), %rdi
	movq	%r11, 296(%rsp)
	movq	%r10, 288(%rsp)
	movq	%r8, 56(%rsp)
	call	__Pyx_PyObject_GetAttrStr
	movq	56(%rsp), %r8
	movq	288(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 48(%rsp)
	movq	296(%rsp), %r11
	je	.L1995
	movq	32(%rsp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 56(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	jne	.L1449
	movq	%r8, 56(%rsp)
	movq	%rdx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	296(%rsp), %r11
	movq	56(%rsp), %r8
	movq	288(%rsp), %r10
.L1449:
	movq	%r11, 296(%rsp)
	movl	$2, %edi
	movq	%r10, 288(%rsp)
	movq	%r8, 56(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	56(%rsp), %r8
	movq	288(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 32(%rsp)
	movq	296(%rsp), %r11
	movq	%rax, %rsi
	je	.L1996
	movq	24(%rsi), %rdx
	movq	__pyx_int_0(%rip), %rax
	incq	(%rax)
	movq	%rax, (%rdx)
	movq	__pyx_int_67374456587(%rip), %rax
	incq	(%rax)
	movq	%rax, 8(%rdx)
	movq	48(%rsp), %rax
	movq	PyMethod_Type@GOTPCREL(%rip), %rdx
	cmpq	%rdx, 8(%rax)
	je	.L2579
.L1450:
	movq	32(%rsp), %rsi
	movq	48(%rsp), %rdi
	movq	%r11, 304(%rsp)
	movq	%r10, 296(%rsp)
	movq	%r8, 288(%rsp)
	call	__Pyx_PyObject_CallOneArg
	movq	48(%rsp), %rcx
	movq	288(%rsp), %r8
	movq	%rax, 56(%rsp)
	movq	296(%rsp), %r10
	movq	304(%rsp), %r11
.L1452:
	movq	32(%rsp), %rdx
	movq	(%rdx), %rax
	movq	%rax, 48(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	jne	.L1453
	movq	%r11, 304(%rsp)
	movq	%rdx, %rdi
	movq	%r10, 296(%rsp)
	movq	%r8, 288(%rsp)
	movq	%rcx, 48(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	304(%rsp), %r11
	movq	48(%rsp), %rcx
	movq	296(%rsp), %r10
	movq	288(%rsp), %r8
.L1453:
	cmpq	$0, 56(%rsp)
	je	.L1997
	decq	(%rcx)
	jne	.L1454
	movq	%r11, 288(%rsp)
	movq	%rcx, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r10
	movq	32(%rsp), %r8
	movq	288(%rsp), %r11
.L1454:
	movq	%r11, 296(%rsp)
	movl	$3, %edi
	movq	%r10, 288(%rsp)
	movq	%r8, 32(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	288(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 48(%rsp)
	movq	296(%rsp), %r11
	movq	%rax, %rdi
	je	.L1998
	movq	24(%rax), %rax
	movq	__pyx_int_886515(%rip), %rdx
	movq	%rdi, %rsi
	movq	%r11, 304(%rsp)
	movq	__pyx_builtin_sum(%rip), %rdi
	movq	%r10, 296(%rsp)
	incq	(%rdx)
	movq	%rdx, (%rax)
	movq	__pyx_int_86(%rip), %rdx
	movq	%r8, 288(%rsp)
	incq	(%rdx)
	movq	%rdx, 8(%rax)
	movq	__pyx_int_254(%rip), %rdx
	incq	(%rdx)
	movq	%rdx, 16(%rax)
	call	__Pyx_PyObject_CallOneArg
	movq	288(%rsp), %r8
	movq	296(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 32(%rsp)
	movq	304(%rsp), %r11
	je	.L1999
	movq	48(%rsp), %rdi
	movq	(%rdi), %rax
	movq	%rax, 288(%rsp)
	decq	%rax
	movq	%rax, (%rdi)
	jne	.L1455
	movq	%r8, 288(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	304(%rsp), %r11
	movq	296(%rsp), %r10
	movq	288(%rsp), %r8
.L1455:
	movq	%r11, 304(%rsp)
	movl	$53, %edi
	movq	%r10, 296(%rsp)
	movq	%r8, 288(%rsp)
	call	*PyList_New@GOTPCREL(%rip)
	movq	288(%rsp), %r8
	movq	296(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 48(%rsp)
	movq	304(%rsp), %r11
	je	.L2000
	movq	24(%rax), %rax
	movq	__pyx_int_4(%rip), %rdx
	movq	%rbx, (%rax)
	movq	8(%rsp), %rbx
	incq	(%rdx)
	movq	%rdx, 8(%rax)
	movq	__pyx_int_131(%rip), %rdx
	movq	%rbx, 16(%rax)
	movq	16(%rsp), %rbx
	movq	%rbp, 32(%rax)
	movq	%rbx, 24(%rax)
	movq	24(%rsp), %rbx
	incq	(%rdx)
	movq	%rdx, 40(%rax)
	movq	__pyx_int_15(%rip), %rdx
	movq	%rbx, 64(%rax)
	movq	280(%rsp), %rbx
	movq	%r8, 48(%rax)
	movq	%r10, 56(%rax)
	movq	%r13, 72(%rax)
	incq	(%rdx)
	movq	%rdx, 80(%rax)
	movq	__pyx_int_14698(%rip), %rdx
	movq	%r15, 88(%rax)
	movq	%r12, 96(%rax)
	movq	%r14, 104(%rax)
	incq	(%rdx)
	movq	%rdx, 112(%rax)
	movq	%rbx, 120(%rax)
	movq	264(%rsp), %rbx
	movq	__pyx_int_18956(%rip), %rdx
	movq	%rbx, 128(%rax)
	movq	256(%rsp), %rbx
	movq	%rbx, 136(%rax)
	movq	272(%rsp), %rbx
	movq	%rbx, 144(%rax)
	movq	240(%rsp), %rbx
	movq	%rbx, 152(%rax)
	movq	248(%rsp), %rbx
	movq	%rbx, 160(%rax)
	movq	224(%rsp), %rbx
	movq	%rbx, 168(%rax)
	movq	232(%rsp), %rbx
	movq	%rbx, 176(%rax)
	movq	216(%rsp), %rbx
	movq	%rbx, 184(%rax)
	movq	208(%rsp), %rbx
	incq	(%r11)
	movq	%rbx, 200(%rax)
	movq	192(%rsp), %rbx
	movq	%r11, 192(%rax)
	movq	%rbx, 208(%rax)
	movq	184(%rsp), %rbx
	movq	%rbx, 216(%rax)
	movq	176(%rsp), %rbx
	movq	%rbx, 224(%rax)
	movq	200(%rsp), %rbx
	movq	%rbx, 232(%rax)
	movq	136(%rsp), %rbx
	movq	%rbx, 240(%rax)
	incq	(%rdx)
	movq	160(%rsp), %rbx
	movq	%rdx, 248(%rax)
	movq	__pyx_int_211(%rip), %rdx
	movq	%rbx, 256(%rax)
	movq	168(%rsp), %rbx
	movq	%rbx, 264(%rax)
	movq	120(%rsp), %rbx
	movq	%rbx, 272(%rax)
	movq	152(%rsp), %rbx
	incq	(%rdx)
	movq	%rbx, 288(%rax)
	movq	104(%rsp), %rbx
	movq	%rdx, 280(%rax)
	movq	__pyx_int_7(%rip), %rdx
	movq	%rbx, 296(%rax)
	movq	128(%rsp), %rbx
	movq	%rbx, 304(%rax)
	movq	144(%rsp), %rbx
	movq	%rbx, 312(%rax)
	movq	112(%rsp), %rbx
	movq	%rbx, 320(%rax)
	movq	88(%rsp), %rbx
	incq	(%rbx)
	movq	%rbx, 328(%rax)
	movq	96(%rsp), %rbx
	movq	%rbx, 336(%rax)
	movq	72(%rsp), %rbx
	movq	%rbx, 344(%rax)
	incq	(%rdx)
	movq	80(%rsp), %rbx
	movq	%rdx, 352(%rax)
	movq	__pyx_int_547(%rip), %rdx
	movq	%rbx, 360(%rax)
	movq	40(%rsp), %rbx
	incq	(%rdx)
	movq	%rbx, 376(%rax)
	movq	64(%rsp), %rbx
	movq	%rdx, 368(%rax)
	movq	__pyx_int_11(%rip), %rdx
	movq	%rbx, 384(%rax)
	movq	56(%rsp), %rbx
	incq	(%rdx)
	movq	%rdx, 392(%rax)
	movq	__pyx_int_3(%rip), %rdx
	movq	%rbx, 400(%rax)
	movq	32(%rsp), %rbx
	movq	%rbx, 408(%rax)
	incq	(%rdx)
	movq	%rdx, 416(%rax)
	decq	(%r11)
	jne	.L1456
	movq	%r11, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
.L1456:
	movq	88(%rsp), %rbx
	movq	(%rbx), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rbx)
	jne	.L1457
	movq	%rbx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
.L1457:
	movq	48(%rsp), %r14
	movq	__pyx_builtin_sum(%rip), %rdi
	movq	%r14, %rsi
	call	__Pyx_PyObject_CallOneArg
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.L2001
	movq	(%r14), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%r14)
	jne	.L1458
	movq	48(%rsp), %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
.L1458:
	cmpq	$0, (%rbx)
	jne	.L547
	movq	%rbx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L547
	.p2align 4,,10
	.p2align 3
.L2328:
	movq	%rbx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L562
	.p2align 4,,10
	.p2align 3
.L2327:
	movq	%rbx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L555
	.p2align 4,,10
	.p2align 3
.L2329:
	movq	%rbx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L569
	.p2align 4,,10
	.p2align 3
.L2334:
	movq	24(%r15), %r14
	jmp	.L589
	.p2align 4,,10
	.p2align 3
.L2337:
	movq	%r12, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L603
	.p2align 4,,10
	.p2align 3
.L570:
	movq	__pyx_n_s_math(%rip), %rdi
	leaq	__pyx_dict_cached_value.13285(%rip), %rdx
	leaq	__pyx_dict_version.13284(%rip), %rsi
	call	__Pyx__GetModuleGlobalName
	movq	%rax, %rbx
.L573:
	testq	%rbx, %rbx
	jne	.L572
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1328, 288(%rsp)
	.p2align 4,,10
	.p2align 3
.L1465:
	movq	16(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L1468
	movq	(%rcx), %rax
	movq	%rax, 296(%rsp)
	decq	%rax
	movq	%rax, (%rcx)
	je	.L2580
.L1468:
	testq	%r10, %r10
	je	.L1471
	decq	(%r10)
	je	.L2581
.L1471:
	movq	8(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L1474
	movq	(%rdx), %rax
	movq	%rax, 16(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	je	.L2582
.L1474:
	testq	%r8, %r8
	je	.L1477
	decq	(%r8)
	je	.L2583
.L1477:
	movq	24(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L1480
	movq	(%rcx), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rcx)
	je	.L2584
.L1480:
	testq	%r15, %r15
	je	.L1483
	decq	(%r15)
	je	.L2585
.L1483:
	testq	%rbp, %rbp
	je	.L1486
	decq	0(%rbp)
	je	.L2586
.L1486:
	testq	%r12, %r12
	je	.L1489
	decq	(%r12)
	je	.L2587
.L1489:
	testq	%r13, %r13
	je	.L1492
	decq	0(%r13)
	je	.L2588
.L1492:
	testq	%r14, %r14
	je	.L1495
	decq	(%r14)
	je	.L2589
.L1495:
	movq	280(%rsp), %rsi
	testq	%rsi, %rsi
	je	.L1498
	movq	(%rsi), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	je	.L2590
.L1498:
	movq	264(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L1501
	movq	(%rdx), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	je	.L2591
.L1501:
	movq	272(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L1504
	movq	(%rcx), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rcx)
	je	.L2592
.L1504:
	movq	256(%rsp), %rsi
	testq	%rsi, %rsi
	je	.L1507
	movq	(%rsi), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	je	.L2593
.L1507:
	movq	240(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L1510
	movq	(%rdx), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	je	.L2594
.L1510:
	movq	224(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L1513
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rdi)
	je	.L2595
.L1513:
	movq	248(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L1516
	movq	(%rcx), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rcx)
	je	.L2596
.L1516:
	movq	232(%rsp), %rsi
	testq	%rsi, %rsi
	je	.L1519
	movq	(%rsi), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	je	.L2597
.L1519:
	movq	216(%rsp), %rbx
	testq	%rbx, %rbx
	je	.L1522
	movq	(%rbx), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rbx)
	je	.L2598
.L1522:
	movq	192(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L1525
	movq	(%rdx), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	je	.L2599
.L1525:
	movq	208(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L1528
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rdi)
	je	.L2600
.L1528:
	movq	136(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L1531
	movq	(%rcx), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rcx)
	je	.L2601
.L1531:
	movq	184(%rsp), %rsi
	testq	%rsi, %rsi
	je	.L1534
	movq	(%rsi), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	je	.L2602
.L1534:
	movq	200(%rsp), %rbx
	testq	%rbx, %rbx
	je	.L1537
	movq	(%rbx), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rbx)
	je	.L2603
.L1537:
	movq	176(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L1540
	movq	(%rdx), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	je	.L2604
.L1540:
	movq	160(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L1543
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rdi)
	je	.L2605
.L1543:
	movq	168(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L1546
	movq	(%rcx), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rcx)
	je	.L2606
.L1546:
	movq	120(%rsp), %rsi
	testq	%rsi, %rsi
	je	.L1549
	movq	(%rsi), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	je	.L2607
.L1549:
	movq	104(%rsp), %rbx
	testq	%rbx, %rbx
	je	.L1552
	movq	(%rbx), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rbx)
	je	.L2608
.L1552:
	movq	152(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L1555
	movq	(%rdx), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	je	.L2609
.L1555:
	movq	112(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L1558
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rdi)
	je	.L2610
.L1558:
	movq	144(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L1561
	movq	(%rcx), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rcx)
	je	.L2611
.L1561:
	movq	128(%rsp), %rsi
	testq	%rsi, %rsi
	je	.L1564
	movq	(%rsi), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	je	.L2612
.L1564:
	movq	40(%rsp), %rbx
	testq	%rbx, %rbx
	je	.L1567
	movq	(%rbx), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rbx)
	je	.L2613
.L1567:
	movq	96(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L1570
	movq	(%rdx), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	je	.L2614
.L1570:
	movq	88(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L1573
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rdi)
	je	.L2615
.L1573:
	movq	72(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L1576
	movq	(%rcx), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rcx)
	je	.L2616
.L1576:
	movq	80(%rsp), %rsi
	testq	%rsi, %rsi
	je	.L1579
	movq	(%rsi), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	je	.L2617
.L1579:
	movq	32(%rsp), %rbx
	testq	%rbx, %rbx
	je	.L1582
	movq	(%rbx), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rbx)
	je	.L2618
.L1582:
	movq	64(%rsp), %rdx
	testq	%rdx, %rdx
	je	.L1585
	movq	(%rdx), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	je	.L2619
.L1585:
	movq	56(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L1588
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rdi)
	je	.L2620
.L1588:
	movq	48(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L1591
	movq	(%rcx), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rcx)
	je	.L2621
.L1591:
	movl	288(%rsp), %esi
	leaq	.LC33(%rip), %rcx
	movl	$4, %edx
	xorl	%ebx, %ebx
	leaq	.LC35(%rip), %rdi
	call	__Pyx_AddTraceback
.L547:
	movq	328(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L2622
	addq	$344, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2608:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1552
	.p2align 4,,10
	.p2align 3
.L2609:
	movq	%rdx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1555
	.p2align 4,,10
	.p2align 3
.L2610:
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1558
	.p2align 4,,10
	.p2align 3
.L2611:
	movq	%rcx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1561
	.p2align 4,,10
	.p2align 3
.L2612:
	movq	%rsi, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1564
	.p2align 4,,10
	.p2align 3
.L2613:
	movq	%rbx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1567
	.p2align 4,,10
	.p2align 3
.L2614:
	movq	%rdx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1570
	.p2align 4,,10
	.p2align 3
.L2615:
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1573
	.p2align 4,,10
	.p2align 3
.L2616:
	movq	%rcx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1576
	.p2align 4,,10
	.p2align 3
.L2617:
	movq	%rsi, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1579
	.p2align 4,,10
	.p2align 3
.L2618:
	movq	%rbx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1582
	.p2align 4,,10
	.p2align 3
.L2619:
	movq	%rdx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1585
	.p2align 4,,10
	.p2align 3
.L2620:
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1588
	.p2align 4,,10
	.p2align 3
.L2621:
	movq	%rcx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1591
	.p2align 4,,10
	.p2align 3
.L2580:
	movq	%r10, 304(%rsp)
	movq	%rcx, %rdi
	movq	%r8, 296(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	304(%rsp), %r10
	movq	296(%rsp), %r8
	jmp	.L1468
	.p2align 4,,10
	.p2align 3
.L2581:
	movq	%r8, 16(%rsp)
	movq	%r10, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	16(%rsp), %r8
	jmp	.L1471
	.p2align 4,,10
	.p2align 3
.L2582:
	movq	%r8, 16(%rsp)
	movq	%rdx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	16(%rsp), %r8
	jmp	.L1474
	.p2align 4,,10
	.p2align 3
.L2583:
	movq	%r8, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1477
	.p2align 4,,10
	.p2align 3
.L2584:
	movq	%rcx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1480
	.p2align 4,,10
	.p2align 3
.L2585:
	movq	%r15, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1483
	.p2align 4,,10
	.p2align 3
.L2586:
	movq	%rbp, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1486
	.p2align 4,,10
	.p2align 3
.L2587:
	movq	%r12, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1489
	.p2align 4,,10
	.p2align 3
.L2588:
	movq	%r13, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1492
	.p2align 4,,10
	.p2align 3
.L2589:
	movq	%r14, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1495
	.p2align 4,,10
	.p2align 3
.L2590:
	movq	%rsi, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1498
	.p2align 4,,10
	.p2align 3
.L2591:
	movq	%rdx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1501
	.p2align 4,,10
	.p2align 3
.L2592:
	movq	%rcx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1504
	.p2align 4,,10
	.p2align 3
.L2593:
	movq	%rsi, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1507
	.p2align 4,,10
	.p2align 3
.L2594:
	movq	%rdx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1510
	.p2align 4,,10
	.p2align 3
.L2595:
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1513
	.p2align 4,,10
	.p2align 3
.L2596:
	movq	%rcx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1516
	.p2align 4,,10
	.p2align 3
.L2597:
	movq	%rsi, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1519
	.p2align 4,,10
	.p2align 3
.L2598:
	movq	%rbx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1522
	.p2align 4,,10
	.p2align 3
.L2599:
	movq	%rdx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1525
	.p2align 4,,10
	.p2align 3
.L2600:
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1528
	.p2align 4,,10
	.p2align 3
.L2601:
	movq	%rcx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1531
	.p2align 4,,10
	.p2align 3
.L2602:
	movq	%rsi, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1534
	.p2align 4,,10
	.p2align 3
.L2603:
	movq	%rbx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1537
	.p2align 4,,10
	.p2align 3
.L2604:
	movq	%rdx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1540
	.p2align 4,,10
	.p2align 3
.L2605:
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1543
	.p2align 4,,10
	.p2align 3
.L2606:
	movq	%rcx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1546
	.p2align 4,,10
	.p2align 3
.L2607:
	movq	%rsi, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1549
	.p2align 4,,10
	.p2align 3
.L2330:
	movq	%rbx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L576
	.p2align 4,,10
	.p2align 3
.L2331:
	movq	%rbx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L583
	.p2align 4,,10
	.p2align 3
.L548:
	movq	__pyx_n_s_math(%rip), %rdi
	leaq	__pyx_dict_cached_value.13278(%rip), %rdx
	leaq	__pyx_dict_version.13277(%rip), %rsi
	call	__Pyx__GetModuleGlobalName
	movq	%rax, %rbx
.L551:
	testq	%rbx, %rbx
	jne	.L550
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1313, 288(%rsp)
	jmp	.L1468
	.p2align 4,,10
	.p2align 3
.L553:
	call	*PyObject_GetAttr@GOTPCREL(%rip)
	movq	%rax, 16(%rsp)
	jmp	.L554
	.p2align 4,,10
	.p2align 3
.L1717:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	%rbx, %r11
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1315, 288(%rsp)
	.p2align 4,,10
	.p2align 3
.L1462:
	testq	%r11, %r11
	je	.L1465
	decq	(%r11)
	jne	.L1465
	movq	%r10, 304(%rsp)
	movq	%r11, %rdi
	movq	%r8, 296(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	304(%rsp), %r10
	movq	296(%rsp), %r8
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L549:
	movq	__pyx_n_s_math(%rip), %rdi
	call	__Pyx_GetBuiltinName
	movq	%rax, %rbx
	jmp	.L551
	.p2align 4,,10
	.p2align 3
.L556:
	movq	__pyx_n_s_math(%rip), %rdi
	leaq	__pyx_dict_cached_value.13281(%rip), %rdx
	leaq	__pyx_dict_version.13280(%rip), %rsi
	call	__Pyx__GetModuleGlobalName
	movq	%rax, %rbx
.L559:
	testq	%rbx, %rbx
	jne	.L558
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1318, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L2342:
	movq	%r12, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L623
	.p2align 4,,10
	.p2align 3
.L1719:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	movq	%rbx, %r10
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1320, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L557:
	movq	__pyx_n_s_math(%rip), %rdi
	call	__Pyx_GetBuiltinName
	movq	%rax, %rbx
	jmp	.L559
	.p2align 4,,10
	.p2align 3
.L560:
	call	*PyObject_GetAttr@GOTPCREL(%rip)
	movq	%rax, 8(%rsp)
	jmp	.L561
	.p2align 4,,10
	.p2align 3
.L2347:
	movq	%rbx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L644
	.p2align 4,,10
	.p2align 3
.L563:
	movq	__pyx_n_s_math(%rip), %rdi
	leaq	__pyx_dict_cached_value.13283(%rip), %rdx
	leaq	__pyx_dict_version.13282(%rip), %rsi
	call	__Pyx__GetModuleGlobalName
	movq	%rax, %rbx
.L566:
	testq	%rbx, %rbx
	jne	.L565
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1323, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L2348:
	movq	%r12, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L645
	.p2align 4,,10
	.p2align 3
.L567:
	call	*PyObject_GetAttr@GOTPCREL(%rip)
	movq	%rax, 24(%rsp)
	jmp	.L568
	.p2align 4,,10
	.p2align 3
.L1721:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	movq	%rbx, %r8
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1325, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L564:
	movq	__pyx_n_s_math(%rip), %rdi
	call	__Pyx_GetBuiltinName
	movq	%rax, %rbx
	jmp	.L566
	.p2align 4,,10
	.p2align 3
.L2362:
	movq	24(%r14), %r15
	jmp	.L693
	.p2align 4,,10
	.p2align 3
.L2368:
	movq	24(%r14), %r15
	jmp	.L713
	.p2align 4,,10
	.p2align 3
.L2340:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movl	$1351, 288(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L2339:
	movq	PyCFunction_Type@GOTPCREL(%rip), %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L607
	movq	16(%r15), %rdx
	movl	16(%rdx), %eax
	testb	$8, %al
	jne	.L2623
	movq	8(%r15), %rdi
	cmpq	PyCFunction_Type@GOTPCREL(%rip), %rdi
	je	.L613
	movq	PyCFunction_Type@GOTPCREL(%rip), %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L607
	movq	16(%r15), %rdx
	movl	16(%rdx), %eax
.L613:
	movl	%eax, %ecx
	andl	$-115, %ecx
	cmpl	$128, %ecx
	je	.L2624
.L607:
	movq	320(%rsp), %r14
	movl	$1, %edi
	call	*PyTuple_New@GOTPCREL(%rip)
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.L2625
	incq	(%r14)
	movq	%r14, 24(%rax)
	movq	8(%r15), %rax
	movq	128(%rax), %r14
	testq	%r14, %r14
	je	.L2626
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L2627
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%r15, %rdi
	call	*%r14
	movq	%rax, %r14
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	testq	%r14, %r14
	je	.L2628
	decq	(%rbx)
	jne	.L1683
.L618:
	movq	%rbx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	.p2align 4,,10
	.p2align 3
.L605:
	testq	%r14, %r14
	jne	.L1683
	movq	$0, 48(%rsp)
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1351, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L737:
	xorl	%r10d, %r10d
	jmp	.L2323
	.p2align 4,,10
	.p2align 3
.L2353:
	movq	%r13, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L665
	.p2align 4,,10
	.p2align 3
.L1723:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	movq	%rbx, %r15
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1330, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L571:
	movq	__pyx_n_s_math(%rip), %rdi
	call	__Pyx_GetBuiltinName
	movq	%rax, %rbx
	jmp	.L573
	.p2align 4,,10
	.p2align 3
.L574:
	call	*PyObject_GetAttr@GOTPCREL(%rip)
	movq	%rax, %rbp
	jmp	.L575
	.p2align 4,,10
	.p2align 3
.L2358:
	movq	%r8, 32(%rsp)
	movq	%rbx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	jmp	.L686
	.p2align 4,,10
	.p2align 3
.L577:
	movq	__pyx_n_s_math(%rip), %rdi
	leaq	__pyx_dict_cached_value.13287(%rip), %rdx
	leaq	__pyx_dict_version.13286(%rip), %rsi
	call	__Pyx__GetModuleGlobalName
	movq	%rax, %rbx
.L580:
	testq	%rbx, %rbx
	jne	.L579
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1333, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L2359:
	movq	%r8, 32(%rsp)
	movq	%r15, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	jmp	.L687
	.p2align 4,,10
	.p2align 3
.L581:
	call	*PyObject_GetAttr@GOTPCREL(%rip)
	movq	%rax, %r13
	jmp	.L582
	.p2align 4,,10
	.p2align 3
.L1725:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	movq	%rbx, %r12
	xorl	%r15d, %r15d
	movq	$0, 56(%rsp)
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1335, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L578:
	movq	__pyx_n_s_math(%rip), %rdi
	call	__Pyx_GetBuiltinName
	movq	%rax, %rbx
	jmp	.L580
	.p2align 4,,10
	.p2align 3
.L1726:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 56(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1338, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L2365:
	movq	%r8, 32(%rsp)
	movq	%rbp, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	jmp	.L707
	.p2align 4,,10
	.p2align 3
.L2332:
	leaq	320(%rsp), %rsi
	movl	$1, %edx
	movq	%r15, %rdi
	call	__Pyx_PyFunction_FastCallDict.constprop.0
	movq	%rax, %r14
.L585:
	testq	%r14, %r14
	jne	.L1687
	movq	$0, 48(%rsp)
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1343, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L633:
	xorl	%r15d, %r15d
	jmp	.L627
	.p2align 4,,10
	.p2align 3
.L2333:
	movq	PyCFunction_Type@GOTPCREL(%rip), %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L587
	movq	16(%r15), %rdx
	movl	16(%rdx), %eax
	testb	$8, %al
	jne	.L2629
	movq	8(%r15), %rdi
	cmpq	PyCFunction_Type@GOTPCREL(%rip), %rdi
	je	.L593
	movq	PyCFunction_Type@GOTPCREL(%rip), %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L587
	movq	16(%r15), %rdx
	movl	16(%rdx), %eax
.L593:
	movl	%eax, %ecx
	andl	$-115, %ecx
	cmpl	$128, %ecx
	je	.L2630
.L587:
	movq	320(%rsp), %r14
	movl	$1, %edi
	call	*PyTuple_New@GOTPCREL(%rip)
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.L2631
	incq	(%r14)
	movq	%r14, 24(%rax)
	movq	8(%r15), %rax
	movq	128(%rax), %r14
	testq	%r14, %r14
	je	.L2632
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L2633
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%r15, %rdi
	call	*%r14
	movq	%rax, %r14
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	testq	%r14, %r14
	je	.L2634
	decq	(%rbx)
	jne	.L1687
.L598:
	movq	%rbx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L585
	.p2align 4,,10
	.p2align 3
.L1730:
	movq	$0, 48(%rsp)
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1346, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L2371:
	movq	%r8, 32(%rsp)
	movq	%rbp, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	jmp	.L727
	.p2align 4,,10
	.p2align 3
.L2335:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movl	$1343, 288(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L2338:
	leaq	320(%rsp), %rsi
	movl	$1, %edx
	movq	%r15, %rdi
	call	__Pyx_PyFunction_FastCallDict.constprop.0
	movq	%rax, %r14
	jmp	.L605
	.p2align 4,,10
	.p2align 3
.L2376:
	movq	%r10, 32(%rsp)
	movq	%rbx, %rdi
	movq	%r11, 24(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r10
	movq	24(%rsp), %r11
	jmp	.L748
	.p2align 4,,10
	.p2align 3
.L1734:
	movq	$0, 48(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 56(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1354, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L2336:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.L2635
.L592:
	movq	$0, 48(%rsp)
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1343, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L2377:
	movq	%r10, 24(%rsp)
	movq	%r11, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	24(%rsp), %r10
	jmp	.L749
	.p2align 4,,10
	.p2align 3
.L2343:
	movq	24(%r13), %r14
	testq	%r14, %r14
	je	.L624
	movq	16(%r13), %r12
	incq	(%r14)
	incq	(%r12)
	decq	0(%r13)
	je	.L2636
.L625:
	movq	%rbx, %rdx
	movq	%r14, %rsi
	movq	%r12, %rdi
	call	__Pyx_PyObject_Call2Args
	decq	(%r14)
	movq	%rax, %r15
	jne	.L643
	movq	%r14, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L643
	.p2align 4,,10
	.p2align 3
.L1737:
	movq	$0, 48(%rsp)
	movq	%r12, %r13
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1372, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L675:
	xorl	%r8d, %r8d
	jmp	.L669
	.p2align 4,,10
	.p2align 3
.L2382:
	movq	%r11, 24(%rsp)
	movq	%rbx, %rdi
	movq	%r10, 8(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	24(%rsp), %r11
	movq	8(%rsp), %r10
	jmp	.L770
	.p2align 4,,10
	.p2align 3
.L2344:
	leaq	320(%rsp), %rsi
	movl	$1, %edx
	movq	%r13, %rdi
	call	__Pyx_PyFunction_FastCallDict.constprop.0
	movq	%rax, %r15
	jmp	.L627
	.p2align 4,,10
	.p2align 3
.L1738:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	xorl	%r8d, %r8d
	movq	$0, 56(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1375, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L2341:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.L2637
.L612:
	movq	$0, 48(%rsp)
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1351, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L2345:
	movq	PyCFunction_Type@GOTPCREL(%rip), %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L629
	movq	16(%r13), %rax
	movl	16(%rax), %edx
	testb	$8, %dl
	jne	.L2638
	movq	8(%r13), %rdi
	cmpq	PyCFunction_Type@GOTPCREL(%rip), %rdi
	je	.L636
	movq	PyCFunction_Type@GOTPCREL(%rip), %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L629
	movq	16(%r13), %rax
.L636:
	movl	16(%rax), %edx
	movl	%edx, %ecx
	andl	$-115, %ecx
	cmpl	$128, %ecx
	je	.L2639
.L629:
	movq	320(%rsp), %r15
	movl	$1, %edi
	call	*PyTuple_New@GOTPCREL(%rip)
	movq	%rax, %r14
	testq	%rax, %rax
	je	.L633
	incq	(%r15)
	movq	%r15, 24(%rax)
	movq	8(%r13), %rax
	movq	128(%rax), %r15
	testq	%r15, %r15
	je	.L2640
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L642
	xorl	%edx, %edx
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	*%r15
	movq	%rax, %r15
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	testq	%r15, %r15
	je	.L2641
.L640:
	decq	(%r14)
	jne	.L627
	movq	%r14, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L627
	.p2align 4,,10
	.p2align 3
.L2383:
	movq	%r11, 8(%rsp)
	movq	%r10, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	8(%rsp), %r11
	jmp	.L771
	.p2align 4,,10
	.p2align 3
.L2349:
	movq	%r15, %rdi
	leaq	320(%rsp), %rsi
	movl	$1, %edx
	call	__Pyx_PyFunction_FastCallDict.constprop.0
	movq	%rax, %r15
.L647:
	testq	%r15, %r15
	jne	.L1678
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	xorl	%r8d, %r8d
	movq	$0, 56(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1380, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L2350:
	movq	PyCFunction_Type@GOTPCREL(%rip), %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L649
	movq	16(%r15), %rdx
	movl	16(%rdx), %eax
	testb	$8, %al
	jne	.L2642
	movq	8(%r15), %rdi
	cmpq	PyCFunction_Type@GOTPCREL(%rip), %rdi
	je	.L655
	movq	PyCFunction_Type@GOTPCREL(%rip), %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L649
	movq	16(%r15), %rdx
	movl	16(%rdx), %eax
.L655:
	movl	%eax, %ecx
	andl	$-115, %ecx
	cmpl	$128, %ecx
	je	.L2643
.L649:
	movq	320(%rsp), %r14
	movl	$1, %edi
	call	*PyTuple_New@GOTPCREL(%rip)
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.L2644
	incq	(%r14)
	movq	%r14, 24(%rax)
	movq	8(%r15), %rax
	movq	128(%rax), %r14
	testq	%r14, %r14
	je	.L2645
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L2646
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	call	*%r14
	movq	%rax, %r15
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	testq	%r15, %r15
	je	.L2647
	decq	(%rbx)
	jne	.L1678
.L660:
	movq	%rbx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L647
	.p2align 4,,10
	.p2align 3
.L1742:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1383, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L2346:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	movq	%rax, %r15
	testq	%rax, %rax
	jne	.L633
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	jmp	.L627
	.p2align 4,,10
	.p2align 3
.L2388:
	movq	%r11, 24(%rsp)
	movq	%rdx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	24(%rsp), %r11
	jmp	.L791
	.p2align 4,,10
	.p2align 3
.L1745:
	movq	$0, 48(%rsp)
	movq	%r15, %rbp
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1401, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L2354:
	movq	24(%rbp), %r13
	testq	%r13, %r13
	je	.L666
	movq	16(%rbp), %r15
	incq	0(%r13)
	incq	(%r15)
	decq	0(%rbp)
	je	.L2648
.L667:
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%r15, %rdi
	call	__Pyx_PyObject_Call2Args
	decq	0(%r13)
	movq	%rax, %r8
	jne	.L685
	movq	%r8, 32(%rsp)
	movq	%r13, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	jmp	.L685
	.p2align 4,,10
	.p2align 3
.L2351:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	movq	$0, 56(%rsp)
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movl	$1380, 288(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L2355:
	leaq	320(%rsp), %rsi
	movl	$1, %edx
	movq	%rbp, %rdi
	call	__Pyx_PyFunction_FastCallDict.constprop.0
	movq	%rax, %r8
	jmp	.L669
	.p2align 4,,10
	.p2align 3
.L1746:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	xorl	%r15d, %r15d
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1404, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L2352:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.L2649
.L654:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	xorl	%r8d, %r8d
	movq	$0, 56(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1380, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L2356:
	movq	PyCFunction_Type@GOTPCREL(%rip), %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L671
	movq	16(%rbp), %rax
	movl	16(%rax), %edx
	testb	$8, %dl
	jne	.L2650
	movq	8(%rbp), %rdi
	cmpq	PyCFunction_Type@GOTPCREL(%rip), %rdi
	je	.L678
	movq	PyCFunction_Type@GOTPCREL(%rip), %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L671
	movq	16(%rbp), %rax
.L678:
	movl	16(%rax), %edx
	movl	%edx, %ecx
	andl	$-115, %ecx
	cmpl	$128, %ecx
	je	.L2651
.L671:
	movq	320(%rsp), %r14
	movl	$1, %edi
	call	*PyTuple_New@GOTPCREL(%rip)
	movq	%rax, %r13
	testq	%rax, %rax
	je	.L675
	incq	(%r14)
	movq	%r14, 24(%rax)
	movq	8(%rbp), %rax
	movq	128(%rax), %r14
	testq	%r14, %r14
	je	.L2652
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L684
	xorl	%edx, %edx
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	*%r14
	movq	%rax, 32(%rsp)
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	testq	%r8, %r8
	je	.L2653
.L682:
	decq	0(%r13)
	jne	.L669
	movq	%r8, 32(%rsp)
	movq	%r13, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	jmp	.L669
	.p2align 4,,10
	.p2align 3
.L2393:
	movq	%r11, 24(%rsp)
	movq	%rsi, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	24(%rsp), %r11
	jmp	.L811
	.p2align 4,,10
	.p2align 3
.L2360:
	leaq	320(%rsp), %rsi
	movl	$1, %edx
	movq	%r14, %rdi
	call	__Pyx_PyFunction_FastCallDict.constprop.0
	movq	%rax, %r8
.L689:
	testq	%r8, %r8
	jne	.L1673
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	xorl	%r15d, %r15d
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1409, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L2629:
	movq	320(%rsp), %rbx
	jmp	.L1714
.L2361:
	movq	PyCFunction_Type@GOTPCREL(%rip), %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L691
	movq	16(%r14), %rdx
	movl	16(%rdx), %eax
	testb	$8, %al
	jne	.L2654
	movq	8(%r14), %rdi
	cmpq	PyCFunction_Type@GOTPCREL(%rip), %rdi
	je	.L697
	movq	PyCFunction_Type@GOTPCREL(%rip), %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L691
	movq	16(%r14), %rdx
	movl	16(%rdx), %eax
.L697:
	movl	%eax, %ecx
	andl	$-115, %ecx
	cmpl	$128, %ecx
	je	.L2655
.L691:
	movq	320(%rsp), %r13
	movl	$1, %edi
	call	*PyTuple_New@GOTPCREL(%rip)
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.L2656
	incq	0(%r13)
	movq	%r13, 24(%rax)
	movq	8(%r14), %rax
	movq	128(%rax), %r13
	testq	%r13, %r13
	je	.L2657
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L2658
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%r14, %rdi
	call	*%r13
	movq	%rax, 32(%rsp)
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	testq	%r8, %r8
	je	.L2659
	decq	(%rbx)
	jne	.L1673
.L702:
	movq	%r8, 32(%rsp)
	movq	%rbx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	jmp	.L689
.L1750:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	xorl	%r15d, %r15d
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1412, 288(%rsp)
	jmp	.L1465
.L2357:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	testq	%rax, %rax
	jne	.L675
	movq	%rax, 32(%rsp)
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	jmp	.L669
.L2398:
	movq	%r11, 24(%rsp)
	movq	%rbx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	24(%rsp), %r11
	jmp	.L831
.L2363:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movl	$1409, 288(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	jmp	.L1465
.L2366:
	leaq	320(%rsp), %rsi
	movl	$1, %edx
	movq	%r14, %rdi
	call	__Pyx_PyFunction_FastCallDict.constprop.0
	movq	%rax, %r8
.L709:
	testq	%r8, %r8
	jne	.L1669
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	xorl	%r15d, %r15d
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1417, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L759:
	xorl	%r11d, %r11d
	jmp	.L2324
.L2623:
	movq	320(%rsp), %rbx
	jmp	.L1713
.L2367:
	movq	PyCFunction_Type@GOTPCREL(%rip), %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L711
	movq	16(%r14), %rdx
	movl	16(%rdx), %eax
	testb	$8, %al
	jne	.L2660
	movq	8(%r14), %rdi
	cmpq	PyCFunction_Type@GOTPCREL(%rip), %rdi
	je	.L717
	movq	PyCFunction_Type@GOTPCREL(%rip), %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L711
	movq	16(%r14), %rdx
	movl	16(%rdx), %eax
.L717:
	movl	%eax, %ecx
	andl	$-115, %ecx
	cmpl	$128, %ecx
	je	.L2661
.L711:
	movq	320(%rsp), %r13
	movl	$1, %edi
	call	*PyTuple_New@GOTPCREL(%rip)
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.L2662
	incq	0(%r13)
	movq	%r13, 24(%rax)
	movq	8(%r14), %rax
	movq	128(%rax), %r13
	testq	%r13, %r13
	je	.L2663
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L2664
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%r14, %rdi
	call	*%r13
	movq	%rax, 32(%rsp)
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	testq	%r8, %r8
	je	.L2665
	decq	(%rbx)
	jne	.L1669
.L722:
	movq	%r8, 32(%rsp)
	movq	%rbx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	jmp	.L709
.L1754:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1420, 288(%rsp)
	jmp	.L1465
.L2364:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	testq	%rax, %rax
	je	.L2666
.L696:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	xorl	%r15d, %r15d
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1409, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L2403:
	movq	%r11, 24(%rsp)
	movq	%rbx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	24(%rsp), %r11
	jmp	.L851
.L2372:
	movq	24(%rax), %rbp
	movq	%rax, %rsi
	testq	%rbp, %rbp
	je	.L728
	movq	16(%rax), %r11
	incq	0(%rbp)
	incq	(%r11)
	movq	(%rax), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	je	.L2667
.L729:
	movq	%r11, %rdi
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	movq	%r11, 24(%rsp)
	call	__Pyx_PyObject_Call2Args
	decq	0(%rbp)
	movq	24(%rsp), %r11
	movq	%rax, %r10
	jne	.L747
	movq	%r10, 32(%rsp)
	movq	%rbp, %rdi
	movq	%r11, 24(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r10
	jmp	.L2323
.L1757:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	%r11, 24(%rsp)
	movl	$1438, 288(%rsp)
	jmp	.L1465
.L2369:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movl	$1417, 288(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	jmp	.L1465
.L2373:
	movq	24(%rsp), %rdi
	leaq	320(%rsp), %rsi
	movl	$1, %edx
	call	__Pyx_PyFunction_FastCallDict.constprop.0
	movq	%rax, %r10
	jmp	.L2323
.L2408:
	movq	%r11, 8(%rsp)
	movq	%r10, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	8(%rsp), %r11
	jmp	.L872
.L1758:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1441, 288(%rsp)
	jmp	.L1465
.L2638:
	movq	320(%rsp), %r12
	jmp	.L1712
.L2370:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	testq	%rax, %rax
	je	.L2668
.L716:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	xorl	%r15d, %r15d
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1417, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L2636:
	movq	%r13, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L625
.L2374:
	movq	PyCFunction_Type@GOTPCREL(%rip), %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L733
	movq	24(%rsp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	testb	$8, %dl
	jne	.L2669
	movq	24(%rsp), %rdx
	movq	8(%rdx), %rdi
	cmpq	PyCFunction_Type@GOTPCREL(%rip), %rdi
	je	.L740
	movq	PyCFunction_Type@GOTPCREL(%rip), %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L733
	movq	24(%rsp), %rax
	movq	16(%rax), %rax
.L740:
	movl	16(%rax), %edx
	movl	%edx, %ecx
	andl	$-115, %ecx
	cmpl	$128, %ecx
	je	.L2670
.L733:
	movq	320(%rsp), %r13
	movl	$1, %edi
	call	*PyTuple_New@GOTPCREL(%rip)
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L737
	incq	0(%r13)
	movq	%r13, 24(%rax)
	movq	24(%rsp), %rax
	movq	8(%rax), %rax
	movq	128(%rax), %r13
	testq	%r13, %r13
	je	.L2671
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L746
	movq	24(%rsp), %rdi
	xorl	%edx, %edx
	movq	%rbp, %rsi
	call	*%r13
	movq	%rax, 32(%rsp)
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	movq	32(%rsp), %r10
	testq	%r10, %r10
	je	.L2672
.L744:
	decq	0(%rbp)
	jne	.L2323
	movq	%r10, 32(%rsp)
	movq	%rbp, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r10
	jmp	.L2323
.L2409:
	movq	%r11, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L873
.L2378:
	movq	24(%rax), %rbp
	movq	%rax, %rsi
	testq	%rbp, %rbp
	je	.L750
	movq	16(%rax), %r10
	incq	0(%rbp)
	incq	(%r10)
	movq	(%rax), %rax
	movq	%rax, 24(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	je	.L2673
.L751:
	movq	%r10, %rdi
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	movq	%r10, 8(%rsp)
	call	__Pyx_PyObject_Call2Args
	decq	0(%rbp)
	movq	8(%rsp), %r10
	movq	%rax, %r11
	jne	.L769
	movq	%r11, 24(%rsp)
	movq	%rbp, %rdi
	movq	%r10, 8(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	24(%rsp), %r11
	jmp	.L2324
.L1761:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	%r10, 8(%rsp)
	xorl	%r10d, %r10d
	movl	$1459, 288(%rsp)
	jmp	.L1465
.L2642:
	movq	320(%rsp), %r12
	jmp	.L1711
.L2379:
	movq	8(%rsp), %rdi
	leaq	320(%rsp), %rsi
	movl	$1, %edx
	call	__Pyx_PyFunction_FastCallDict.constprop.0
	movq	%rax, %r11
	jmp	.L2324
.L1762:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1462, 288(%rsp)
	jmp	.L1462
.L2380:
	movq	PyCFunction_Type@GOTPCREL(%rip), %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L755
	movq	8(%rsp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	testb	$8, %dl
	jne	.L2674
	movq	8(%rsp), %rsi
	movq	8(%rsi), %rdi
	cmpq	PyCFunction_Type@GOTPCREL(%rip), %rdi
	je	.L762
	movq	PyCFunction_Type@GOTPCREL(%rip), %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L755
	movq	8(%rsp), %rax
	movq	16(%rax), %rax
.L762:
	movl	16(%rax), %edx
	movl	%edx, %ecx
	andl	$-115, %ecx
	cmpl	$128, %ecx
	je	.L2675
.L755:
	movq	320(%rsp), %r13
	movl	$1, %edi
	call	*PyTuple_New@GOTPCREL(%rip)
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L759
	incq	0(%r13)
	movq	%r13, 24(%rax)
	movq	8(%rsp), %rax
	movq	8(%rax), %rax
	movq	128(%rax), %r13
	testq	%r13, %r13
	je	.L2676
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L768
	movq	8(%rsp), %rdi
	xorl	%edx, %edx
	movq	%rbp, %rsi
	call	*%r13
	movq	%rax, 24(%rsp)
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	movq	24(%rsp), %r11
	testq	%r11, %r11
	je	.L2677
.L766:
	decq	0(%rbp)
	jne	.L2324
	movq	%r11, 24(%rsp)
	movq	%rbp, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	24(%rsp), %r11
	jmp	.L2324
.L2375:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	testq	%rax, %rax
	jne	.L737
	movq	%rax, 32(%rsp)
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	movq	32(%rsp), %r10
	jmp	.L2323
.L2414:
	movq	%rsi, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L895
.L2384:
	leaq	320(%rsp), %rsi
	movl	$1, %edx
	movq	%rbp, %rdi
	call	__Pyx_PyFunction_FastCallDict.constprop.0
	movq	%rax, %r11
.L773:
	testq	%r11, %r11
	jne	.L1663
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1467, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L2650:
	movq	320(%rsp), %r15
	jmp	.L1710
.L1766:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1470, 288(%rsp)
	jmp	.L1462
.L2385:
	movq	PyCFunction_Type@GOTPCREL(%rip), %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L775
	movq	16(%rbp), %rdx
	movl	16(%rdx), %eax
	testb	$8, %al
	jne	.L2678
	movq	8(%rbp), %rdi
	cmpq	PyCFunction_Type@GOTPCREL(%rip), %rdi
	je	.L781
	movq	PyCFunction_Type@GOTPCREL(%rip), %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L775
	movq	16(%rbp), %rdx
	movl	16(%rdx), %eax
.L781:
	movl	%eax, %ecx
	andl	$-115, %ecx
	cmpl	$128, %ecx
	je	.L2679
.L775:
	movq	320(%rsp), %r13
	movl	$1, %edi
	call	*PyTuple_New@GOTPCREL(%rip)
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.L2680
	incq	0(%r13)
	movq	%r13, 24(%rax)
	movq	8(%rbp), %rax
	movq	128(%rax), %r13
	testq	%r13, %r13
	je	.L2681
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L2682
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	*%r13
	movq	%rax, 24(%rsp)
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	movq	24(%rsp), %r11
	testq	%r11, %r11
	je	.L2683
	decq	(%rbx)
	jne	.L1663
.L786:
	movq	%r11, 24(%rsp)
	movq	%rbx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	24(%rsp), %r11
	jmp	.L773
.L2648:
	movq	%rbp, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L667
.L2381:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	testq	%rax, %rax
	jne	.L759
	movq	%rax, 24(%rsp)
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	movq	24(%rsp), %r11
	jmp	.L2324
.L2419:
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L917
.L2386:
	movl	$1467, 288(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 48(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 56(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	jmp	.L1465
.L2654:
	movq	320(%rsp), %r12
	jmp	.L1709
.L2389:
	leaq	320(%rsp), %rsi
	movl	$1, %edx
	movq	%rbp, %rdi
	call	__Pyx_PyFunction_FastCallDict.constprop.0
	movq	%rax, %r11
.L793:
	testq	%r11, %r11
	jne	.L1659
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1475, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L2390:
	movq	PyCFunction_Type@GOTPCREL(%rip), %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L795
	movq	16(%rbp), %rdx
	movl	16(%rdx), %eax
	testb	$8, %al
	jne	.L2684
	movq	8(%rbp), %rdi
	cmpq	PyCFunction_Type@GOTPCREL(%rip), %rdi
	je	.L801
	movq	PyCFunction_Type@GOTPCREL(%rip), %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L795
	movq	16(%rbp), %rdx
	movl	16(%rdx), %eax
.L801:
	movl	%eax, %ecx
	andl	$-115, %ecx
	cmpl	$128, %ecx
	je	.L2685
.L795:
	movq	320(%rsp), %r13
	movl	$1, %edi
	call	*PyTuple_New@GOTPCREL(%rip)
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.L2686
	incq	0(%r13)
	movq	%r13, 24(%rax)
	movq	8(%rbp), %rax
	movq	128(%rax), %r13
	testq	%r13, %r13
	je	.L2687
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L2688
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	*%r13
	movq	%rax, 24(%rsp)
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	movq	24(%rsp), %r11
	testq	%r11, %r11
	je	.L2689
	decq	(%rbx)
	jne	.L1659
.L806:
	movq	%r11, 24(%rsp)
	movq	%rbx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	24(%rsp), %r11
	jmp	.L793
.L2387:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.L2690
.L780:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1467, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L1770:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1478, 288(%rsp)
	jmp	.L1462
.L2424:
	movq	%rdx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L939
.L2391:
	movl	$1475, 288(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 48(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 56(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	jmp	.L1465
.L2660:
	movq	320(%rsp), %r12
	jmp	.L1708
.L861:
	xorl	%ebx, %ebx
	jmp	.L855
.L2394:
	leaq	320(%rsp), %rsi
	movl	$1, %edx
	movq	%rbp, %rdi
	call	__Pyx_PyFunction_FastCallDict.constprop.0
	movq	%rax, %r11
.L813:
	testq	%r11, %r11
	jne	.L1655
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1483, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L2392:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.L2691
.L800:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1475, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L2631:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 56(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1343, 288(%rsp)
	jmp	.L1465
.L2395:
	movq	PyCFunction_Type@GOTPCREL(%rip), %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L815
	movq	16(%rbp), %rdx
	movl	16(%rdx), %eax
	testb	$8, %al
	jne	.L2692
	movq	8(%rbp), %rdi
	cmpq	PyCFunction_Type@GOTPCREL(%rip), %rdi
	je	.L821
	movq	PyCFunction_Type@GOTPCREL(%rip), %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L815
	movq	16(%rbp), %rdx
	movl	16(%rdx), %eax
.L821:
	movl	%eax, %ecx
	andl	$-115, %ecx
	cmpl	$128, %ecx
	je	.L2693
.L815:
	movq	320(%rsp), %r13
	movl	$1, %edi
	call	*PyTuple_New@GOTPCREL(%rip)
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.L2694
	incq	0(%r13)
	movq	%r13, 24(%rax)
	movq	8(%rbp), %rax
	movq	128(%rax), %r13
	testq	%r13, %r13
	je	.L2695
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L2696
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	*%r13
	movq	%rax, 24(%rsp)
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	movq	24(%rsp), %r11
	testq	%r11, %r11
	je	.L2697
	decq	(%rbx)
	jne	.L1655
.L826:
	movq	%r11, 24(%rsp)
	movq	%rbx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	24(%rsp), %r11
	jmp	.L813
.L1774:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1486, 288(%rsp)
	jmp	.L1462
.L642:
	xorl	%r15d, %r15d
	jmp	.L640
.L2632:
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%r15, %rdi
	call	*PyObject_Call@GOTPCREL(%rip)
	decq	(%rbx)
	movq	%rax, %r14
	je	.L598
	jmp	.L585
	.p2align 4,,10
	.p2align 3
.L2429:
	movq	%rdx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L961
.L2396:
	movl	$1483, 288(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 48(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 56(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	jmp	.L1465
.L2399:
	leaq	320(%rsp), %rsi
	movl	$1, %edx
	movq	%rbp, %rdi
	call	__Pyx_PyFunction_FastCallDict.constprop.0
	movq	%rax, %r11
.L833:
	testq	%r11, %r11
	jne	.L1651
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1491, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L2630:
	movq	8(%rdx), %r8
	xorl	%edi, %edi
	testb	$32, %al
	jne	.L594
	movq	24(%r15), %rdi
.L594:
	leaq	320(%rsp), %rsi
	testb	$2, %al
	jne	.L2698
	movl	$1, %edx
	call	*%r8
	movq	%rax, %r14
	jmp	.L585
.L2633:
	decq	(%rbx)
	je	.L600
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movl	$1343, 288(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	jmp	.L1465
.L2669:
	movq	320(%rsp), %r14
	jmp	.L1707
.L2625:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 56(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1351, 288(%rsp)
	jmp	.L1465
.L2635:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	jmp	.L592
.L2400:
	movq	PyCFunction_Type@GOTPCREL(%rip), %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L835
	movq	16(%rbp), %rdx
	movl	16(%rdx), %eax
	testb	$8, %al
	jne	.L2699
	movq	8(%rbp), %rdi
	cmpq	PyCFunction_Type@GOTPCREL(%rip), %rdi
	je	.L841
	movq	PyCFunction_Type@GOTPCREL(%rip), %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L835
	movq	16(%rbp), %rdx
	movl	16(%rdx), %eax
.L841:
	movl	%eax, %ecx
	andl	$-115, %ecx
	cmpl	$128, %ecx
	je	.L2700
.L835:
	movq	320(%rsp), %r13
	movl	$1, %edi
	call	*PyTuple_New@GOTPCREL(%rip)
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.L2701
	incq	0(%r13)
	movq	%r13, 24(%rax)
	movq	8(%rbp), %rax
	movq	128(%rax), %r13
	testq	%r13, %r13
	je	.L2702
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	testl	%eax, %eax
	jne	.L2703
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	*%r13
	movq	%rax, 24(%rsp)
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	movq	24(%rsp), %r11
	testq	%r11, %r11
	je	.L2704
	decq	(%rbx)
	jne	.L1651
.L846:
	movq	%r11, 24(%rsp)
	movq	%rbx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	24(%rsp), %r11
	jmp	.L833
.L1778:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1494, 288(%rsp)
	jmp	.L1462
.L2397:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.L2705
.L820:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1483, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L2667:
	movq	%r11, 32(%rsp)
	movq	%rsi, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r11
	jmp	.L729
.L2634:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.L2706
.L602:
	decq	(%rbx)
	jne	.L2707
	movq	%rbx, %rdi
	xorl	%r15d, %r15d
	call	*_Py_Dealloc@GOTPCREL(%rip)
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1343, 288(%rsp)
	jmp	.L1465
.L2626:
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%r15, %rdi
	call	*PyObject_Call@GOTPCREL(%rip)
	decq	(%rbx)
	movq	%rax, %r14
	je	.L618
	jmp	.L605
	.p2align 4,,10
	.p2align 3
.L2434:
	movq	%rsi, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L983
.L2404:
	movq	24(%rax), %rbp
	movq	%rax, %rbx
	testq	%rbp, %rbp
	je	.L852
	movq	16(%rax), %r11
	incq	0(%rbp)
	incq	(%r11)
	movq	(%rax), %rax
	movq	%rax, 8(%rsp)
	decq	%rax
	movq	%rax, (%rbx)
	je	.L2708
.L853:
	movq	%r10, %rdx
	movq	%r11, %rdi
	movq	%rbp, %rsi
	movq	%r10, 16(%rsp)
	movq	%r11, 8(%rsp)
	call	__Pyx_PyObject_Call2Args
	decq	0(%rbp)
	movq	8(%rsp), %r11
	movq	16(%rsp), %r10
	movq	%rax, %rbx
	jne	.L871
	movq	%r10, 16(%rsp)
	movq	%rbp, %rdi
	movq	%r11, 8(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	16(%rsp), %r10
	movq	8(%rsp), %r11
	jmp	.L871
.L2401:
	movl	$1491, 288(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 48(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 56(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	jmp	.L1465
.L1781:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$1512, 288(%rsp)
	jmp	.L1465
.L2624:
	movq	8(%rdx), %r8
	xorl	%edi, %edi
	testb	$32, %al
	jne	.L614
	movq	24(%r15), %rdi
.L614:
	leaq	320(%rsp), %rsi
	testb	$2, %al
	jne	.L2709
	movl	$1, %edx
	call	*%r8
	movq	%rax, %r14
	jmp	.L605
.L2405:
	movq	16(%rsp), %rdi
	movl	$1, %edx
	movq	%r10, 8(%rsp)
	leaq	320(%rsp), %rsi
	call	__Pyx_PyFunction_FastCallDict.constprop.0
	movq	8(%rsp), %r10
	movq	%rax, %rbx
	jmp	.L855
.L2627:
	decq	(%rbx)
	je	.L620
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movl	$1351, 288(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	jmp	.L1465
.L2402:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.L2710
.L840:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1491, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L2637:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	jmp	.L612
.L2674:
	movq	320(%rsp), %r14
	jmp	.L1706
.L1782:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1515, 288(%rsp)
	.p2align 4,,10
	.p2align 3
.L552:
	testq	%rbx, %rbx
	je	.L1462
	decq	(%rbx)
	jne	.L1462
	movq	%r11, 312(%rsp)
	movq	%rbx, %rdi
	movq	%r10, 304(%rsp)
	movq	%r8, 296(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	312(%rsp), %r11
	movq	304(%rsp), %r10
	movq	296(%rsp), %r8
	jmp	.L1462
.L2406:
	movq	%r10, 8(%rsp)
	movq	PyCFunction_Type@GOTPCREL(%rip), %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	movq	8(%rsp), %r10
	testl	%eax, %eax
	je	.L857
	movq	16(%rsp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	testb	$8, %dl
	jne	.L2711
	movq	16(%rsp), %rbx
	movq	8(%rbx), %rdi
	cmpq	PyCFunction_Type@GOTPCREL(%rip), %rdi
	je	.L864
	movq	%r10, 8(%rsp)
	movq	PyCFunction_Type@GOTPCREL(%rip), %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	movq	8(%rsp), %r10
	testl	%eax, %eax
	je	.L857
	movq	16(%rsp), %rax
	movq	16(%rax), %rax
.L864:
	movl	16(%rax), %edx
	movl	%edx, %ecx
	andl	$-115, %ecx
	cmpl	$128, %ecx
	je	.L2712
.L857:
	movq	%r10, 8(%rsp)
	movq	320(%rsp), %r12
	movl	$1, %edi
	call	*PyTuple_New@GOTPCREL(%rip)
	movq	8(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, %rbp
	je	.L861
	incq	(%r12)
	movq	%r12, 24(%rax)
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	movq	128(%rax), %r12
	testq	%r12, %r12
	je	.L2713
	movq	%r10, 8(%rsp)
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	movq	8(%rsp), %r10
	testl	%eax, %eax
	jne	.L870
	movq	%r10, 8(%rsp)
	xorl	%edx, %edx
	movq	16(%rsp), %rdi
	movq	%rbp, %rsi
	call	*%r12
	movq	%rax, %rbx
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	testq	%rbx, %rbx
	movq	8(%rsp), %r10
	je	.L2714
.L868:
	decq	0(%rbp)
	jne	.L855
	movq	%r10, 8(%rsp)
	movq	%rbp, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	8(%rsp), %r10
	jmp	.L855
.L684:
	xorl	%r8d, %r8d
	jmp	.L682
.L2628:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.L2715
.L622:
	decq	(%rbx)
	jne	.L2716
	movq	%rbx, %rdi
	xorl	%r15d, %r15d
	call	*_Py_Dealloc@GOTPCREL(%rip)
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1351, 288(%rsp)
	jmp	.L1465
.L2673:
	movq	%r10, 24(%rsp)
	movq	%rsi, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	24(%rsp), %r10
	jmp	.L751
.L2439:
	movq	%rdx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1005
.L2410:
	leaq	320(%rsp), %rsi
	movl	$1, %edx
	movq	%rbp, %rdi
	call	__Pyx_PyFunction_FastCallDict.constprop.0
	movq	%rax, %rbx
.L875:
	testq	%rbx, %rbx
	jne	.L1646
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1520, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L2678:
	movq	320(%rsp), %r15
	jmp	.L1705
.L2640:
	xorl	%edx, %edx
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	*PyObject_Call@GOTPCREL(%rip)
	movq	%rax, %r15
	jmp	.L640
.L1786:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1523, 288(%rsp)
	jmp	.L552
.L2411:
	movq	PyCFunction_Type@GOTPCREL(%rip), %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L877
	movq	16(%rbp), %rax
	movl	16(%rax), %edx
	testb	$8, %dl
	jne	.L2717
	movq	8(%rbp), %rdi
	cmpq	PyCFunction_Type@GOTPCREL(%rip), %rdi
	je	.L885
	movq	PyCFunction_Type@GOTPCREL(%rip), %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L877
	movq	16(%rbp), %rax
.L885:
	movl	16(%rax), %edx
	movl	%edx, %ecx
	andl	$-115, %ecx
	cmpl	$128, %ecx
	je	.L2718
.L877:
	movq	320(%rsp), %r12
	movl	$1, %edi
	call	*PyTuple_New@GOTPCREL(%rip)
	movq	%rax, %r11
	testq	%rax, %rax
	je	.L2719
	incq	(%r12)
	movq	%r12, 24(%rax)
	movq	8(%rbp), %rax
	movq	128(%rax), %r12
	testq	%r12, %r12
	je	.L2720
	movq	%r11, 8(%rsp)
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	movq	8(%rsp), %r11
	testl	%eax, %eax
	jne	.L2721
	movq	%r11, 8(%rsp)
	xorl	%edx, %edx
	movq	%r11, %rsi
	movq	%rbp, %rdi
	call	*%r12
	movq	%rax, %rbx
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	testq	%rbx, %rbx
	movq	8(%rsp), %r11
	je	.L2722
	decq	(%r11)
	jne	.L1646
.L890:
	movq	%r11, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L875
.L2639:
	movq	8(%rax), %rax
	xorl	%edi, %edi
	testb	$32, %dl
	jne	.L637
	movq	24(%r13), %rdi
.L637:
	andl	$2, %edx
	leaq	320(%rsp), %rsi
	jne	.L2723
	movl	$1, %edx
	call	*%rax
	movq	%rax, %r15
	jmp	.L627
.L2644:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	movq	$0, 56(%rsp)
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1380, 288(%rsp)
	jmp	.L1465
.L2407:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	movq	8(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, %rbx
	jne	.L861
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	movq	8(%rsp), %r10
	jmp	.L855
.L2645:
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	call	*PyObject_Call@GOTPCREL(%rip)
	decq	(%rbx)
	movq	%rax, %r15
	je	.L660
	jmp	.L647
	.p2align 4,,10
	.p2align 3
.L2444:
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1027
.L2643:
	movq	8(%rdx), %r8
	xorl	%edi, %edi
	testb	$32, %al
	jne	.L656
	movq	24(%r15), %rdi
.L656:
	leaq	320(%rsp), %rsi
	testb	$2, %al
	jne	.L2724
	movl	$1, %edx
	call	*%r8
	movq	%rax, %r15
	jmp	.L647
.L2684:
	movq	320(%rsp), %r15
	jmp	.L1704
.L2412:
	movl	$1520, 288(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 48(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 56(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	jmp	.L1465
.L2641:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	movq	%rax, %r15
	testq	%rax, %rax
	jne	.L642
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	jmp	.L640
	.p2align 4,,10
	.p2align 3
.L2415:
	leaq	320(%rsp), %rsi
	movl	$1, %edx
	movq	%rbp, %rdi
	call	__Pyx_PyFunction_FastCallDict.constprop.0
	movq	%rax, %rbx
.L897:
	testq	%rbx, %rbx
	jne	.L1642
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1528, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L2416:
	movq	PyCFunction_Type@GOTPCREL(%rip), %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L899
	movq	16(%rbp), %rax
	movl	16(%rax), %edx
	testb	$8, %dl
	jne	.L2725
	movq	8(%rbp), %rdi
	cmpq	PyCFunction_Type@GOTPCREL(%rip), %rdi
	je	.L907
	movq	PyCFunction_Type@GOTPCREL(%rip), %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L899
	movq	16(%rbp), %rax
.L907:
	movl	16(%rax), %edx
	movl	%edx, %ecx
	andl	$-115, %ecx
	cmpl	$128, %ecx
	je	.L2726
.L899:
	movq	320(%rsp), %r12
	movl	$1, %edi
	call	*PyTuple_New@GOTPCREL(%rip)
	movq	%rax, %r11
	testq	%rax, %rax
	je	.L2727
	incq	(%r12)
	movq	%r12, 24(%rax)
	movq	8(%rbp), %rax
	movq	128(%rax), %r12
	testq	%r12, %r12
	je	.L2728
	movq	%r11, 8(%rsp)
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	movq	8(%rsp), %r11
	testl	%eax, %eax
	jne	.L2729
	movq	%r11, 8(%rsp)
	xorl	%edx, %edx
	movq	%r11, %rsi
	movq	%rbp, %rdi
	call	*%r12
	movq	%rax, %rbx
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	testq	%rbx, %rbx
	movq	8(%rsp), %r11
	je	.L2730
	decq	(%r11)
	jne	.L1642
.L912:
	movq	%r11, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L897
.L2646:
	decq	(%rbx)
	je	.L662
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	movq	$0, 56(%rsp)
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movl	$1380, 288(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	jmp	.L1465
.L1790:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1531, 288(%rsp)
	jmp	.L552
.L2413:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.L2731
.L882:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1520, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L2649:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	jmp	.L654
.L2417:
	movl	$1528, 288(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 48(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 56(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	jmp	.L1465
.L2647:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.L2732
.L664:
	decq	(%rbx)
	jne	.L2733
	movq	%rbx, %rdi
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	call	*_Py_Dealloc@GOTPCREL(%rip)
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1380, 288(%rsp)
	jmp	.L1465
.L2445:
	movq	%r11, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1034
.L2420:
	leaq	320(%rsp), %rsi
	movl	$1, %edx
	movq	%rbp, %rdi
	call	__Pyx_PyFunction_FastCallDict.constprop.0
	movq	%rax, %rbx
.L919:
	testq	%rbx, %rbx
	jne	.L1638
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1536, 288(%rsp)
	jmp	.L1465
	.p2align 4,,10
	.p2align 3
.L2692:
	movq	320(%rsp), %r15
	jmp	.L1703
.L2652:
	xorl	%edx, %edx
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	*PyObject_Call@GOTPCREL(%rip)
	movq	%rax, %r8
	jmp	.L682
.L1794:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1539, 288(%rsp)
	jmp	.L552
.L2656:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1409, 288(%rsp)
	jmp	.L1465
.L2418:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.L2734
.L904:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1528, 288(%rsp)
	jmp	.L1465
.L2651:
	movq	8(%rax), %rax
	xorl	%edi, %edi
	testb	$32, %dl
	jne	.L679
	movq	24(%rbp), %rdi
.L679:
	andb	$2, %dl
	leaq	320(%rsp), %rsi
	jne	.L2735
	movl	$1, %edx
	call	*%rax
	movq	%rax, %r8
	jmp	.L669
.L2450:
	movq	%r10, 24(%rsp)
	movq	%r11, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	24(%rsp), %r10
	jmp	.L1055
.L2421:
	movq	%r12, %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L921
	movq	16(%rbp), %rax
	movl	16(%rax), %edx
	testb	$8, %dl
	jne	.L2736
	movq	8(%rbp), %rdi
	cmpq	%r12, %rdi
	je	.L929
	movq	%r12, %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L921
	movq	16(%rbp), %rax
.L929:
	movl	16(%rax), %edx
	movl	%edx, %ecx
	andl	$-115, %ecx
	cmpl	$128, %ecx
	je	.L2737
.L921:
	movq	320(%rsp), %r12
	movl	$1, %edi
	call	*PyTuple_New@GOTPCREL(%rip)
	movq	%rax, %r11
	testq	%rax, %rax
	je	.L2738
	incq	(%r12)
	movq	%r12, 24(%rax)
	movq	8(%rbp), %rax
	movq	128(%rax), %r12
	testq	%r12, %r12
	je	.L2739
	movq	%r11, 8(%rsp)
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	movq	8(%rsp), %r11
	testl	%eax, %eax
	jne	.L2740
	movq	%r11, 8(%rsp)
	xorl	%edx, %edx
	movq	%r11, %rsi
	movq	%rbp, %rdi
	call	*%r12
	movq	%rax, %rbx
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	testq	%rbx, %rbx
	movq	8(%rsp), %r11
	je	.L2741
	decq	(%r11)
	jne	.L1638
.L934:
	movq	%r11, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L919
.L2657:
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%r14, %rdi
	call	*PyObject_Call@GOTPCREL(%rip)
	decq	(%rbx)
	movq	%rax, %r8
	je	.L702
	jmp	.L689
.L2422:
	movl	$1536, 288(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 48(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 56(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	jmp	.L1465
.L2425:
	leaq	320(%rsp), %rsi
	movl	$1, %edx
	movq	%rbp, %rdi
	call	__Pyx_PyFunction_FastCallDict.constprop.0
	movq	%rax, %rbx
.L941:
	testq	%rbx, %rbx
	jne	.L1634
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1544, 288(%rsp)
	jmp	.L1465
.L746:
	xorl	%r10d, %r10d
	jmp	.L744
.L2451:
	movq	%r10, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1056
.L2423:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.L2742
.L926:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1536, 288(%rsp)
	jmp	.L1465
.L2658:
	decq	(%rbx)
	je	.L704
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movl	$1409, 288(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	jmp	.L1465
.L2699:
	movq	320(%rsp), %r15
	jmp	.L1702
.L2666:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	jmp	.L696
.L2653:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	testq	%rax, %rax
	jne	.L684
	movq	%rax, 32(%rsp)
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	jmp	.L682
.L2662:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1417, 288(%rsp)
	jmp	.L1465
.L600:
	movq	%rbx, %rdi
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	call	*_Py_Dealloc@GOTPCREL(%rip)
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movl	$1343, 288(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	jmp	.L1465
.L2426:
	movq	%r12, %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L943
	movq	16(%rbp), %rax
	movl	16(%rax), %edx
	testb	$8, %dl
	jne	.L2743
	movq	8(%rbp), %rdi
	cmpq	%r12, %rdi
	je	.L951
	movq	%r12, %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L943
	movq	16(%rbp), %rax
.L951:
	movl	16(%rax), %edx
	movl	%edx, %ecx
	andl	$-115, %ecx
	cmpl	$128, %ecx
	je	.L2744
.L943:
	movq	320(%rsp), %r12
	movl	$1, %edi
	call	*PyTuple_New@GOTPCREL(%rip)
	movq	%rax, %r11
	testq	%rax, %rax
	je	.L2745
	incq	(%r12)
	movq	%r12, 24(%rax)
	movq	8(%rbp), %rax
	movq	128(%rax), %r12
	testq	%r12, %r12
	je	.L2746
	movq	%r11, 8(%rsp)
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	movq	8(%rsp), %r11
	testl	%eax, %eax
	jne	.L2747
	movq	%r11, 8(%rsp)
	xorl	%edx, %edx
	movq	%r11, %rsi
	movq	%rbp, %rdi
	call	*%r12
	movq	%rax, %rbx
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	testq	%rbx, %rbx
	movq	8(%rsp), %r11
	je	.L2748
	decq	(%r11)
	jne	.L1634
.L956:
	movq	%r11, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L941
.L2655:
	movq	8(%rdx), %r8
	xorl	%edi, %edi
	testb	$32, %al
	jne	.L698
	movq	24(%r14), %rdi
.L698:
	leaq	320(%rsp), %rsi
	testb	$2, %al
	jne	.L2749
	movl	$1, %edx
	call	*%r8
	movq	%rax, %r8
	jmp	.L689
.L1798:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1547, 288(%rsp)
	jmp	.L552
.L2427:
	movl	$1544, 288(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 48(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 56(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	jmp	.L1465
.L768:
	xorl	%r11d, %r11d
	jmp	.L766
.L2663:
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%r14, %rdi
	call	*PyObject_Call@GOTPCREL(%rip)
	decq	(%rbx)
	movq	%rax, %r8
	je	.L722
	jmp	.L709
.L2664:
	decq	(%rbx)
	je	.L724
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movl	$1417, 288(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	jmp	.L1465
.L2659:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	testq	%rax, %rax
	je	.L2750
.L706:
	decq	(%rbx)
	jne	.L2751
	movq	%rbx, %rdi
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	%r8, 296(%rsp)
	xorl	%r15d, %r15d
	call	*_Py_Dealloc@GOTPCREL(%rip)
	xorl	%r10d, %r10d
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1409, 288(%rsp)
	movq	296(%rsp), %r8
	jmp	.L1465
.L2661:
	movq	8(%rdx), %r8
	xorl	%edi, %edi
	testb	$32, %al
	jne	.L718
	movq	24(%r14), %rdi
.L718:
	leaq	320(%rsp), %rsi
	testb	$2, %al
	jne	.L2752
	movl	$1, %edx
	call	*%r8
	movq	%rax, %r8
	jmp	.L709
.L2430:
	leaq	320(%rsp), %rsi
	movl	$1, %edx
	movq	%r12, %rdi
	call	__Pyx_PyFunction_FastCallDict.constprop.0
	movq	%rax, %rbx
.L963:
	testq	%rbx, %rbx
	jne	.L1630
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1552, 288(%rsp)
	jmp	.L1465
.L2457:
	movq	%r10, 32(%rsp)
	movq	%r11, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r10
	jmp	.L1084
.L2452:
	movq	%r10, 24(%rsp)
	movq	%r11, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	24(%rsp), %r10
	jmp	.L1063
.L620:
	movq	%rbx, %rdi
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	call	*_Py_Dealloc@GOTPCREL(%rip)
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movl	$1351, 288(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	jmp	.L1465
.L2668:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	jmp	.L716
.L1802:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1555, 288(%rsp)
	jmp	.L552
.L2708:
	movq	%r10, 24(%rsp)
	movq	%rbx, %rdi
	movq	%r11, 8(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	8(%rsp), %r11
	movq	24(%rsp), %r10
	jmp	.L853
.L2665:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	testq	%rax, %rax
	je	.L2753
.L726:
	decq	(%rbx)
	jne	.L2754
	movq	%rbx, %rdi
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	%r8, 296(%rsp)
	xorl	%r15d, %r15d
	call	*_Py_Dealloc@GOTPCREL(%rip)
	xorl	%r10d, %r10d
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1417, 288(%rsp)
	movq	296(%rsp), %r8
	jmp	.L1465
.L2428:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.L2755
.L948:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1544, 288(%rsp)
	jmp	.L1465
.L2711:
	movq	320(%rsp), %r13
	jmp	.L1701
.L2458:
	movq	%r10, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1085
.L2435:
	leaq	320(%rsp), %rsi
	movl	$1, %edx
	movq	%r12, %rdi
	call	__Pyx_PyFunction_FastCallDict.constprop.0
	movq	%rax, %rbx
.L985:
	testq	%rbx, %rbx
	jne	.L1626
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1560, 288(%rsp)
	jmp	.L1465
.L2432:
	movl	$1552, 288(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 48(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 56(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	jmp	.L1465
.L2431:
	movq	%rbp, %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L965
	movq	16(%r12), %rax
	movl	16(%rax), %edx
	testb	$8, %dl
	jne	.L2756
	movq	8(%r12), %rdi
	cmpq	%rbp, %rdi
	je	.L973
	movq	%rbp, %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L965
	movq	16(%r12), %rax
.L973:
	movl	16(%rax), %edx
	movl	%edx, %ecx
	andl	$-115, %ecx
	cmpl	$128, %ecx
	je	.L2757
.L965:
	movq	320(%rsp), %rbp
	movl	$1, %edi
	call	*PyTuple_New@GOTPCREL(%rip)
	movq	%rax, %r11
	testq	%rax, %rax
	je	.L2758
	incq	0(%rbp)
	movq	%rbp, 24(%rax)
	movq	8(%r12), %rax
	movq	128(%rax), %rbp
	testq	%rbp, %rbp
	je	.L2759
	movq	%r11, 8(%rsp)
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	movq	8(%rsp), %r11
	testl	%eax, %eax
	jne	.L2760
	movq	%r11, 8(%rsp)
	xorl	%edx, %edx
	movq	%r11, %rsi
	movq	%r12, %rdi
	call	*%rbp
	movq	%rax, %rbx
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	testq	%rbx, %rbx
	movq	8(%rsp), %r11
	je	.L2761
	decq	(%r11)
	jne	.L1630
.L978:
	movq	%r11, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L963
.L2671:
	movq	24(%rsp), %rdi
	xorl	%edx, %edx
	movq	%rbp, %rsi
	call	*PyObject_Call@GOTPCREL(%rip)
	movq	%rax, %r10
	jmp	.L744
.L2433:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.L2762
.L970:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1552, 288(%rsp)
	jmp	.L1465
.L2440:
	leaq	320(%rsp), %rsi
	movl	$1, %edx
	movq	%rbp, %rdi
	call	__Pyx_PyFunction_FastCallDict.constprop.0
	movq	%rax, %r11
.L1007:
	testq	%r11, %r11
	je	.L1809
	movq	%r11, 8(%rsp)
	jmp	.L1622
.L1806:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1563, 288(%rsp)
	jmp	.L552
.L2717:
	movq	320(%rsp), %r14
	jmp	.L1700
.L2459:
	movq	%r11, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1092
.L2670:
	movq	8(%rax), %rax
	xorl	%edi, %edi
	testb	$32, %dl
	jne	.L741
	movq	24(%rsp), %rsi
	movq	24(%rsi), %rdi
.L741:
	andb	$2, %dl
	leaq	320(%rsp), %rsi
	jne	.L2763
	movl	$1, %edx
	call	*%rax
	movq	%rax, %r10
	jmp	.L2323
.L2436:
	movq	%rbp, %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L987
	movq	16(%r12), %rax
	movl	16(%rax), %edx
	testb	$8, %dl
	jne	.L2764
	movq	8(%r12), %rdi
	cmpq	%rbp, %rdi
	je	.L995
	movq	%rbp, %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L987
	movq	16(%r12), %rax
.L995:
	movl	16(%rax), %edx
	movl	%edx, %ecx
	andl	$-115, %ecx
	cmpl	$128, %ecx
	je	.L2765
.L987:
	movq	320(%rsp), %rbp
	movl	$1, %edi
	call	*PyTuple_New@GOTPCREL(%rip)
	movq	%rax, %r11
	testq	%rax, %rax
	je	.L2766
	incq	0(%rbp)
	movq	%rbp, 24(%rax)
	movq	8(%r12), %rax
	movq	128(%rax), %rbp
	testq	%rbp, %rbp
	je	.L2767
	movq	%r11, 8(%rsp)
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	movq	8(%rsp), %r11
	testl	%eax, %eax
	jne	.L2768
	movq	%r11, 8(%rsp)
	xorl	%edx, %edx
	movq	%r11, %rsi
	movq	%r12, %rdi
	call	*%rbp
	movq	%rax, %rbx
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	testq	%rbx, %rbx
	movq	8(%rsp), %r11
	je	.L2769
	decq	(%r11)
	jne	.L1626
.L1000:
	movq	%r11, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L985
.L2437:
	movl	$1560, 288(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 48(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 56(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	jmp	.L1465
.L2676:
	movq	8(%rsp), %rdi
	xorl	%edx, %edx
	movq	%rbp, %rsi
	call	*PyObject_Call@GOTPCREL(%rip)
	movq	%rax, %r11
	jmp	.L766
.L2677:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	testq	%rax, %rax
	jne	.L768
	movq	%rax, 24(%rsp)
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	movq	24(%rsp), %r11
	jmp	.L766
.L2675:
	movq	8(%rax), %rax
	xorl	%edi, %edi
	testb	$32, %dl
	jne	.L763
	movq	8(%rsp), %rsi
	movq	24(%rsi), %rdi
.L763:
	andb	$2, %dl
	leaq	320(%rsp), %rsi
	jne	.L2770
	movl	$1, %edx
	call	*%rax
	movq	%rax, %r11
	jmp	.L2324
.L2672:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	testq	%rax, %rax
	jne	.L746
	movq	%rax, 32(%rsp)
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	movq	32(%rsp), %r10
	jmp	.L744
.L2679:
	movq	8(%rdx), %r8
	xorl	%edi, %edi
	testb	$32, %al
	jne	.L782
	movq	24(%rbp), %rdi
.L782:
	leaq	320(%rsp), %rsi
	testb	$2, %al
	jne	.L2771
	movl	$1, %edx
	call	*%r8
	movq	%rax, %r11
	jmp	.L773
.L1044:
	movq	$0, 16(%rsp)
	jmp	.L2325
.L2465:
	movq	%r10, 32(%rsp)
	movq	%rbp, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r10
	jmp	.L1114
.L2464:
	movq	%r10, 32(%rsp)
	movq	%r11, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r10
	jmp	.L1113
.L1811:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 16(%rsp)
	movl	$1573, 288(%rsp)
	jmp	.L552
.L662:
	movq	%rbx, %rdi
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	call	*_Py_Dealloc@GOTPCREL(%rip)
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movl	$1380, 288(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	jmp	.L1465
.L2681:
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	*PyObject_Call@GOTPCREL(%rip)
	decq	(%rbx)
	movq	%rax, %r11
	je	.L786
	jmp	.L773
.L2680:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1467, 288(%rsp)
	jmp	.L1465
.L2736:
	movq	320(%rsp), %r14
	jmp	.L1698
.L1032:
	call	*PyObject_GetAttr@GOTPCREL(%rip)
	movq	16(%rsp), %r11
	movq	%rax, 24(%rsp)
	jmp	.L1033
.L1029:
	movq	__pyx_n_s_math(%rip), %rdi
	call	__Pyx_GetBuiltinName
	movq	%rax, %r11
.L1031:
	testq	%r11, %r11
	jne	.L1030
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 16(%rsp)
	movl	$1571, 288(%rsp)
	jmp	.L552
.L2438:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.L2772
.L992:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1560, 288(%rsp)
	jmp	.L1465
.L2725:
	movq	320(%rsp), %r14
	jmp	.L1699
.L1028:
	movq	__pyx_n_s_math(%rip), %rdi
	leaq	__pyx_dict_cached_value.13299(%rip), %rdx
	leaq	__pyx_dict_version.13298(%rip), %rsi
	call	__Pyx__GetModuleGlobalName
	movq	%rax, %r11
	jmp	.L1031
.L2442:
	movl	$1568, 288(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 48(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 56(%rsp)
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	jmp	.L552
.L2441:
	movq	%r12, %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L1009
	movq	16(%rbp), %rax
	movl	16(%rax), %edx
	testb	$8, %dl
	jne	.L2773
	movq	8(%rbp), %rdi
	cmpq	%r12, %rdi
	je	.L1017
	movq	%r12, %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	testl	%eax, %eax
	je	.L1009
	movq	16(%rbp), %rax
.L1017:
	movl	16(%rax), %edx
	movl	%edx, %ecx
	andl	$-115, %ecx
	cmpl	$128, %ecx
	je	.L2774
.L1009:
	movq	320(%rsp), %r12
	movl	$1, %edi
	call	*PyTuple_New@GOTPCREL(%rip)
	movq	%rax, %r10
	testq	%rax, %rax
	je	.L2775
	incq	(%r12)
	movq	%r12, 24(%rax)
	movq	8(%rbp), %rax
	movq	128(%rax), %r12
	testq	%r12, %r12
	je	.L2776
	movq	%r10, 8(%rsp)
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	movq	8(%rsp), %r10
	testl	%eax, %eax
	jne	.L2777
	movq	%r10, 24(%rsp)
	xorl	%edx, %edx
	movq	%r10, %rsi
	movq	%rbp, %rdi
	call	*%r12
	movq	%rax, 8(%rsp)
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	movq	8(%rsp), %r11
	movq	24(%rsp), %r10
	testq	%r11, %r11
	je	.L2778
	decq	(%r10)
	movq	%r11, 8(%rsp)
	jne	.L1622
.L1022:
	movq	%r11, 8(%rsp)
	movq	%r10, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	8(%rsp), %r11
	jmp	.L1007
.L2622:
	call	*__stack_chk_fail@GOTPCREL(%rip)
.L2443:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.L2779
.L1014:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1568, 288(%rsp)
	jmp	.L552
.L2446:
	movq	24(%rax), %rbp
	movq	%rax, %rsi
	testq	%rbp, %rbp
	je	.L1035
	movq	16(%rax), %r10
	incq	0(%rbp)
	incq	(%r10)
	movq	(%rax), %rax
	movq	%rax, 16(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	je	.L2780
.L1036:
	movq	%r11, %rdx
	movq	%r10, %rdi
	movq	%rbp, %rsi
	movq	%r11, 32(%rsp)
	movq	%r10, 24(%rsp)
	call	__Pyx_PyObject_Call2Args
	decq	0(%rbp)
	movq	24(%rsp), %r10
	movq	%rax, 16(%rsp)
	movq	32(%rsp), %r11
	jne	.L1054
	movq	%r11, 32(%rsp)
	movq	%rbp, %rdi
	movq	%r10, 24(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r11
	jmp	.L2325
.L1812:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 16(%rsp)
	movl	$1576, 288(%rsp)
	jmp	.L552
.L2690:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	jmp	.L780
.L2689:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.L2781
.L810:
	decq	(%rbx)
	jne	.L2782
	movq	%rbx, %rdi
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	call	*_Py_Dealloc@GOTPCREL(%rip)
	xorl	%ebp, %ebp
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 48(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1475, 288(%rsp)
	jmp	.L1465
.L2688:
	decq	(%rbx)
	je	.L808
	movl	$1475, 288(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 48(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 56(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	jmp	.L1465
.L2687:
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	*PyObject_Call@GOTPCREL(%rip)
	decq	(%rbx)
	movq	%rax, %r11
	je	.L806
	jmp	.L793
.L2685:
	movq	8(%rdx), %r8
	xorl	%edi, %edi
	testb	$32, %al
	jne	.L802
	movq	24(%rbp), %rdi
.L802:
	leaq	320(%rsp), %rsi
	testb	$2, %al
	jne	.L2783
	movl	$1, %edx
	call	*%r8
	movq	%rax, %r11
	jmp	.L793
.L2686:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1475, 288(%rsp)
	jmp	.L1465
.L704:
	movq	%rbx, %rdi
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	call	*_Py_Dealloc@GOTPCREL(%rip)
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movl	$1409, 288(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	jmp	.L1465
.L2695:
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	*PyObject_Call@GOTPCREL(%rip)
	decq	(%rbx)
	movq	%rax, %r11
	je	.L826
	jmp	.L813
.L2694:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1483, 288(%rsp)
	jmp	.L1465
.L2469:
	movq	%r10, 32(%rsp)
	movq	%r9, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r10
	jmp	.L1126
.L2468:
	movq	%r10, 40(%rsp)
	movq	%r11, %rdi
	movq	%r9, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r9
	jmp	.L1125
.L2466:
	movq	%r10, 40(%rsp)
	movq	%r11, %rdi
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1121
.L2691:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	jmp	.L800
.L1073:
	movq	$0, 24(%rsp)
	jmp	.L1083
.L2683:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.L2784
.L790:
	decq	(%rbx)
	jne	.L2785
	movq	%rbx, %rdi
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	call	*_Py_Dealloc@GOTPCREL(%rip)
	xorl	%ebp, %ebp
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 48(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1467, 288(%rsp)
	jmp	.L1465
.L2682:
	decq	(%rbx)
	je	.L788
	movl	$1467, 288(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 48(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 56(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	jmp	.L1465
.L870:
	xorl	%ebx, %ebx
	jmp	.L868
.L2743:
	movq	320(%rsp), %r14
	jmp	.L1697
.L2448:
	movq	%r11, 16(%rsp)
	movq	%rbp, %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	movq	16(%rsp), %r11
	testl	%eax, %eax
	je	.L1040
	movq	24(%rsp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	testb	$8, %dl
	jne	.L2786
	movq	24(%rsp), %rdx
	movq	8(%rdx), %rdi
	cmpq	%rbp, %rdi
	je	.L1047
	movq	%r11, 16(%rsp)
	movq	%rbp, %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	movq	16(%rsp), %r11
	testl	%eax, %eax
	je	.L1040
	movq	24(%rsp), %rax
	movq	16(%rax), %rax
.L1047:
	movl	16(%rax), %edx
	movl	%edx, %ecx
	andl	$-115, %ecx
	cmpl	$128, %ecx
	je	.L2787
.L1040:
	movq	%r11, 16(%rsp)
	movq	320(%rsp), %r13
	movl	$1, %edi
	call	*PyTuple_New@GOTPCREL(%rip)
	movq	16(%rsp), %r11
	testq	%rax, %rax
	movq	%rax, %rbp
	je	.L1044
	incq	0(%r13)
	movq	%r13, 24(%rax)
	movq	24(%rsp), %rax
	movq	8(%rax), %rax
	movq	128(%rax), %r13
	testq	%r13, %r13
	je	.L2788
	movq	%r11, 16(%rsp)
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	movq	16(%rsp), %r11
	testl	%eax, %eax
	jne	.L1053
	movq	%r11, 32(%rsp)
	xorl	%edx, %edx
	movq	24(%rsp), %rdi
	movq	%rbp, %rsi
	call	*%r13
	movq	%rax, %r14
	movq	%rax, 16(%rsp)
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	testq	%r14, %r14
	movq	32(%rsp), %r11
	je	.L2789
.L1051:
	decq	0(%rbp)
	jne	.L2325
	movq	%r11, 32(%rsp)
	movq	%rbp, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r11
	jmp	.L2325
.L2447:
	movq	24(%rsp), %rdi
	movl	$1, %edx
	movq	%r11, 32(%rsp)
	leaq	320(%rsp), %rsi
	call	__Pyx_PyFunction_FastCallDict.constprop.0
	movq	32(%rsp), %r11
	movq	%rax, 16(%rsp)
	jmp	.L2325
.L1057:
	movq	__pyx_n_s_math(%rip), %rdi
	leaq	__pyx_dict_cached_value.13303(%rip), %rdx
	leaq	__pyx_dict_version.13302(%rip), %rsi
	call	__Pyx__GetModuleGlobalName
	movq	%rax, %r11
.L1060:
	testq	%r11, %r11
	jne	.L1059
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1600, 288(%rsp)
	jmp	.L552
.L1815:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r11d, %r11d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	%r10, 24(%rsp)
	xorl	%r10d, %r10d
	movl	$1597, 288(%rsp)
	jmp	.L552
.L2756:
	movq	320(%rsp), %r13
	jmp	.L1696
.L2693:
	movq	8(%rdx), %r8
	xorl	%edi, %edi
	testb	$32, %al
	jne	.L822
	movq	24(%rbp), %rdi
.L822:
	leaq	320(%rsp), %rsi
	testb	$2, %al
	jne	.L2790
	movl	$1, %edx
	call	*%r8
	movq	%rax, %r11
	jmp	.L813
.L1818:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1605, 288(%rsp)
	jmp	.L552
.L2704:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.L2791
.L850:
	decq	(%rbx)
	jne	.L2792
	movq	%rbx, %rdi
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	call	*_Py_Dealloc@GOTPCREL(%rip)
	xorl	%ebp, %ebp
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 48(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1491, 288(%rsp)
	jmp	.L1465
.L2703:
	decq	(%rbx)
	je	.L848
	movl	$1491, 288(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 48(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 56(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	jmp	.L1465
.L2702:
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	*PyObject_Call@GOTPCREL(%rip)
	decq	(%rbx)
	movq	%rax, %r11
	je	.L846
	jmp	.L833
.L2709:
	xorl	%ecx, %ecx
	movl	$1, %edx
	call	*%r8
	movq	%rax, %r14
	jmp	.L605
.L2715:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	jmp	.L622
.L2764:
	movq	320(%rsp), %r13
	jmp	.L1695
.L724:
	movq	%rbx, %rdi
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	call	*_Py_Dealloc@GOTPCREL(%rip)
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movl	$1417, 288(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	jmp	.L1465
.L2454:
	movq	%r10, %rdi
	movl	$1, %edx
	movq	%r11, 40(%rsp)
	leaq	320(%rsp), %rsi
	movq	%r10, 32(%rsp)
	call	__Pyx_PyFunction_FastCallDict.constprop.0
	movq	32(%rsp), %r10
	movq	40(%rsp), %r11
	movq	%rax, 24(%rsp)
	jmp	.L1083
.L2453:
	movq	24(%r10), %rbp
	testq	%rbp, %rbp
	je	.L1064
	movq	16(%r10), %r13
	incq	0(%rbp)
	incq	0(%r13)
	decq	(%r10)
	je	.L2793
.L1065:
	movq	%r11, %rdx
	movq	%rbp, %rsi
	movq	%r13, %rdi
	movq	%r11, 32(%rsp)
	call	__Pyx_PyObject_Call2Args
	decq	0(%rbp)
	movq	32(%rsp), %r11
	movq	%r13, %r10
	movq	%rax, 24(%rsp)
	jne	.L1083
	movq	%r11, 40(%rsp)
	movq	%rbp, %rdi
	movq	%r10, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r11
	movq	32(%rsp), %r10
	jmp	.L1083
.L2705:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	jmp	.L820
.L2701:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1491, 288(%rsp)
	jmp	.L1465
.L1058:
	movq	__pyx_n_s_math(%rip), %rdi
	call	__Pyx_GetBuiltinName
	movq	%rax, %r11
	jmp	.L1060
.L1086:
	movq	__pyx_n_s_math(%rip), %rdi
	leaq	__pyx_dict_cached_value.13307(%rip), %rdx
	leaq	__pyx_dict_version.13306(%rip), %rsi
	call	__Pyx__GetModuleGlobalName
	movq	%rax, %r11
.L1089:
	testq	%r11, %r11
	jne	.L1088
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1632, 288(%rsp)
	jmp	.L552
.L2698:
	xorl	%ecx, %ecx
	movl	$1, %edx
	call	*%r8
	movq	%rax, %r14
	jmp	.L585
.L2713:
	movq	16(%rsp), %rdi
	xorl	%edx, %edx
	movq	%rbp, %rsi
	call	*PyObject_Call@GOTPCREL(%rip)
	movq	8(%rsp), %r10
	movq	%rax, %rbx
	jmp	.L868
.L1817:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1602, 288(%rsp)
	jmp	.L552
.L1061:
	call	*PyObject_GetAttr@GOTPCREL(%rip)
	movq	24(%rsp), %r11
	movq	%rax, %r10
	jmp	.L1062
.L2697:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.L2794
.L830:
	decq	(%rbx)
	jne	.L2795
	movq	%rbx, %rdi
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	call	*_Py_Dealloc@GOTPCREL(%rip)
	xorl	%ebp, %ebp
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 48(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1483, 288(%rsp)
	jmp	.L1465
.L2696:
	decq	(%rbx)
	je	.L828
	movl	$1483, 288(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 48(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 56(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	jmp	.L1465
.L2455:
	movq	%r11, 32(%rsp)
	movq	%rbp, %rsi
	movq	%r10, 24(%rsp)
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	movq	24(%rsp), %r10
	movq	32(%rsp), %r11
	testl	%eax, %eax
	je	.L1069
	movq	16(%r10), %rax
	movl	16(%rax), %edx
	testb	$8, %dl
	jne	.L2796
	movq	8(%r10), %rdi
	cmpq	%rbp, %rdi
	je	.L1076
	movq	%r11, 32(%rsp)
	movq	%rbp, %rsi
	movq	%r10, 24(%rsp)
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	movq	24(%rsp), %r10
	movq	32(%rsp), %r11
	testl	%eax, %eax
	je	.L1069
	movq	16(%r10), %rax
.L1076:
	movl	16(%rax), %edx
	movl	%edx, %ecx
	andl	$-115, %ecx
	cmpl	$128, %ecx
	je	.L2797
.L1069:
	movq	%r11, 32(%rsp)
	movq	320(%rsp), %r13
	movl	$1, %edi
	movq	%r10, 24(%rsp)
	call	*PyTuple_New@GOTPCREL(%rip)
	movq	24(%rsp), %r10
	movq	32(%rsp), %r11
	testq	%rax, %rax
	movq	%rax, %rbp
	je	.L1073
	incq	0(%r13)
	movq	%r13, 24(%rax)
	movq	8(%r10), %rax
	movq	128(%rax), %r13
	testq	%r13, %r13
	je	.L2798
	movq	%r11, 32(%rsp)
	leaq	.LC10(%rip), %rdi
	movq	%r10, 24(%rsp)
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	movq	24(%rsp), %r10
	movq	32(%rsp), %r11
	testl	%eax, %eax
	jne	.L1082
	movq	%r11, 40(%rsp)
	xorl	%edx, %edx
	movq	%r10, %rdi
	movq	%rbp, %rsi
	movq	%r10, 32(%rsp)
	call	*%r13
	movq	%rax, %r14
	movq	%rax, 24(%rsp)
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	testq	%r14, %r14
	movq	32(%rsp), %r10
	movq	40(%rsp), %r11
	je	.L2799
.L1080:
	decq	0(%rbp)
	jne	.L1083
	movq	%r11, 40(%rsp)
	movq	%rbp, %rdi
	movq	%r10, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r10
	movq	40(%rsp), %r11
	jmp	.L1083
.L1821:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r11d, %r11d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1629, 288(%rsp)
	jmp	.L552
.L2473:
	movq	%r8, 32(%rsp)
	movq	%r11, %rdi
	movq	%r9, 24(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	24(%rsp), %r9
	jmp	.L1136
.L2471:
	movq	%r11, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1132
.L2470:
	movq	%r8, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	jmp	.L1127
.L2773:
	movq	320(%rsp), %r12
	jmp	.L1694
.L2700:
	movq	8(%rdx), %r8
	xorl	%edi, %edi
	testb	$32, %al
	jne	.L842
	movq	24(%rbp), %rdi
.L842:
	leaq	320(%rsp), %rsi
	testb	$2, %al
	jne	.L2800
	movl	$1, %edx
	call	*%r8
	movq	%rax, %r11
	jmp	.L833
.L2706:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	jmp	.L602
.L2449:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	movq	32(%rsp), %r11
	testq	%rax, %rax
	movq	%rax, 16(%rsp)
	jne	.L1044
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	movq	32(%rsp), %r11
	jmp	.L2325
.L1102:
	xorl	%r10d, %r10d
	jmp	.L1112
.L2710:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	jmp	.L840
.L1823:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1634, 288(%rsp)
	jmp	.L552
.L1090:
	call	*PyObject_GetAttr@GOTPCREL(%rip)
	movq	32(%rsp), %r11
	movq	%rax, %rbp
	jmp	.L1091
.L1087:
	movq	__pyx_n_s_math(%rip), %rdi
	call	__Pyx_GetBuiltinName
	movq	%rax, %r11
	jmp	.L1089
.L2462:
	movq	%r11, 32(%rsp)
	movq	%r13, %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	movq	32(%rsp), %r11
	testl	%eax, %eax
	je	.L1098
	movq	16(%rbp), %rax
	movl	16(%rax), %edx
	testb	$8, %dl
	jne	.L1691
	movq	8(%rbp), %rdi
	cmpq	%r13, %rdi
	je	.L1105
	movq	%r11, 32(%rsp)
	movq	%r13, %rsi
	call	*PyType_IsSubtype@GOTPCREL(%rip)
	movq	32(%rsp), %r11
	testl	%eax, %eax
	je	.L1098
	movq	16(%rbp), %rax
.L1105:
	movl	16(%rax), %edx
	movl	%edx, %ecx
	andl	$-115, %ecx
	cmpl	$128, %ecx
	je	.L2801
.L1098:
	movq	%r11, 32(%rsp)
	movq	320(%rsp), %r12
	movl	$1, %edi
	call	*PyTuple_New@GOTPCREL(%rip)
	movq	32(%rsp), %r11
	testq	%rax, %rax
	movq	%rax, %r13
	je	.L1102
	incq	(%r12)
	movq	%r12, 24(%rax)
	movq	8(%rbp), %rax
	movq	128(%rax), %r12
	testq	%r12, %r12
	je	.L2802
	movq	%r11, 32(%rsp)
	leaq	.LC10(%rip), %rdi
	call	*Py_EnterRecursiveCall@GOTPCREL(%rip)
	movq	32(%rsp), %r11
	testl	%eax, %eax
	jne	.L1111
	movq	%r11, 40(%rsp)
	xorl	%edx, %edx
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	*%r12
	movq	%rax, 32(%rsp)
	call	*Py_LeaveRecursiveCall@GOTPCREL(%rip)
	movq	32(%rsp), %r10
	movq	40(%rsp), %r11
	testq	%r10, %r10
	je	.L2803
.L1109:
	decq	0(%r13)
	jne	.L1112
	movq	%r11, 40(%rsp)
	movq	%r13, %rdi
	movq	%r10, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r10
	movq	40(%rsp), %r11
	jmp	.L1112
.L2461:
	leaq	320(%rsp), %rsi
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%r11, 32(%rsp)
	call	__Pyx_PyFunction_FastCallDict.constprop.0
	movq	32(%rsp), %r11
	movq	%rax, %r10
	jmp	.L1112
.L2460:
	movq	24(%rbp), %r13
	testq	%r13, %r13
	je	.L1093
	movq	16(%rbp), %r12
	incq	0(%r13)
	incq	(%r12)
	decq	0(%rbp)
	je	.L2804
.L1094:
	movq	%r11, %rdx
	movq	%r13, %rsi
	movq	%r12, %rdi
	movq	%r11, 32(%rsp)
	call	__Pyx_PyObject_Call2Args
	decq	0(%r13)
	movq	32(%rsp), %r11
	movq	%r12, %rbp
	movq	%rax, %r10
	jne	.L1112
	movq	%r11, 40(%rsp)
	movq	%r13, %rdi
	movq	%r10, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r11
	movq	32(%rsp), %r10
	jmp	.L1112
.L1824:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1637, 288(%rsp)
	jmp	.L552
.L1830:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1669, 288(%rsp)
	jmp	.L552
.L1829:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1666, 288(%rsp)
	jmp	.L552
.L1119:
	call	*PyObject_GetAttr@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r11
	movq	%rax, %r8
	jmp	.L1120
.L2753:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	jmp	.L726
.L2757:
	movq	8(%rax), %rax
	xorl	%edi, %edi
	testb	$32, %dl
	jne	.L974
	movq	24(%r12), %rdi
.L974:
	andb	$2, %dl
	leaq	320(%rsp), %rsi
	jne	.L2805
	movl	$1, %edx
	call	*%rax
	movq	%rax, %rbx
	jmp	.L963
.L2718:
	movq	8(%rax), %rax
	xorl	%edi, %edi
	testb	$32, %dl
	jne	.L886
	movq	24(%rbp), %rdi
.L886:
	andb	$2, %dl
	leaq	320(%rsp), %rsi
	jne	.L2806
	movl	$1, %edx
	call	*%rax
	movq	%rax, %rbx
	jmp	.L875
.L2724:
	xorl	%ecx, %ecx
	movl	$1, %edx
	call	*%r8
	movq	%rax, %r15
	jmp	.L647
.L1836:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1715, 288(%rsp)
	jmp	.L552
.L1835:
	movq	$0, 48(%rsp)
	movq	%r11, %r10
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r11d, %r11d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1712, 288(%rsp)
	jmp	.L552
.L1129:
	movq	__pyx_n_s_math(%rip), %rdi
	call	__Pyx_GetBuiltinName
	movq	%rax, %r11
.L1131:
	testq	%r11, %r11
	jne	.L1130
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1710, 288(%rsp)
	jmp	.L552
.L2726:
	movq	8(%rax), %rax
	xorl	%edi, %edi
	testb	$32, %dl
	jne	.L908
	movq	24(%rbp), %rdi
.L908:
	andb	$2, %dl
	leaq	320(%rsp), %rsi
	jne	.L2807
	movl	$1, %edx
	call	*%rax
	movq	%rax, %rbx
	jmp	.L897
.L2734:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	jmp	.L904
.L2463:
	movq	%r11, 32(%rsp)
	call	*PyErr_Occurred@GOTPCREL(%rip)
	movq	32(%rsp), %r11
	testq	%rax, %rax
	jne	.L1102
	movq	%rax, 32(%rsp)
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	%r11, 40(%rsp)
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	movq	32(%rsp), %r10
	movq	40(%rsp), %r11
	jmp	.L1112
.L2737:
	movq	8(%rax), %rax
	xorl	%edi, %edi
	testb	$32, %dl
	jne	.L930
	movq	24(%rbp), %rdi
.L930:
	andb	$2, %dl
	leaq	320(%rsp), %rsi
	jne	.L2808
	movl	$1, %edx
	call	*%rax
	movq	%rax, %rbx
	jmp	.L919
.L2755:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	jmp	.L948
.L1827:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	xorl	%r11d, %r11d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1661, 288(%rsp)
	jmp	.L552
.L1116:
	movq	__pyx_n_s_math(%rip), %rdi
	movq	%r10, 32(%rsp)
	call	__Pyx_GetBuiltinName
	movq	32(%rsp), %r10
	movq	%rax, %r11
.L1118:
	testq	%r11, %r11
	jne	.L1117
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1664, 288(%rsp)
	jmp	.L552
.L1115:
	movq	__pyx_n_s_math(%rip), %rdi
	leaq	__pyx_dict_cached_value.13311(%rip), %rdx
	movq	%r10, 32(%rsp)
	leaq	__pyx_dict_version.13310(%rip), %rsi
	call	__Pyx__GetModuleGlobalName
	movq	32(%rsp), %r10
	movq	%rax, %r11
	jmp	.L1118
.L2760:
	decq	(%r11)
	je	.L980
	movl	$1552, 288(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 48(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 56(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	jmp	.L1465
.L2759:
	movq	%r11, 8(%rsp)
	xorl	%edx, %edx
	movq	%r11, %rsi
	movq	%r12, %rdi
	call	*PyObject_Call@GOTPCREL(%rip)
	movq	8(%rsp), %r11
	movq	%rax, %rbx
	decq	(%r11)
	je	.L978
	jmp	.L963
.L2456:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	movq	32(%rsp), %r10
	movq	40(%rsp), %r11
	testq	%rax, %rax
	movq	%rax, 24(%rsp)
	jne	.L1073
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	movq	32(%rsp), %r10
	movq	40(%rsp), %r11
	jmp	.L1083
.L2744:
	movq	8(%rax), %rax
	xorl	%edi, %edi
	testb	$32, %dl
	jne	.L952
	movq	24(%rbp), %rdi
.L952:
	andb	$2, %dl
	leaq	320(%rsp), %rsi
	jne	.L2809
	movl	$1, %edx
	call	*%rax
	movq	%rax, %rbx
	jmp	.L941
.L2766:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1560, 288(%rsp)
	jmp	.L1465
.L2758:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1552, 288(%rsp)
	jmp	.L1465
.L2735:
	xorl	%ecx, %ecx
	movl	$1, %edx
	call	*%rax
	movq	%rax, %r8
	jmp	.L669
.L2750:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	jmp	.L706
.L1831:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	xorl	%r15d, %r15d
	movq	%r9, %r8
	xorl	%r11d, %r11d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1693, 288(%rsp)
	jmp	.L552
.L2467:
	movq	24(%r8), %r13
	testq	%r13, %r13
	je	.L1122
	movq	16(%r8), %r9
	incq	0(%r13)
	incq	(%r9)
	decq	(%r8)
	je	.L2810
.L1123:
	movq	%r11, %rdx
	movq	%r9, %rdi
	movq	%r13, %rsi
	movq	%r10, 48(%rsp)
	movq	%r11, 40(%rsp)
	movq	%r9, 32(%rsp)
	call	__Pyx_PyObject_Call2Args
	decq	0(%r13)
	movq	32(%rsp), %r9
	movq	40(%rsp), %r11
	movq	48(%rsp), %r10
	movq	%rax, %rbp
	jne	.L1124
	movq	%r11, 48(%rsp)
	movq	%r13, %rdi
	movq	%r10, 40(%rsp)
	movq	%r9, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r9
	jmp	.L1124
.L2762:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	jmp	.L970
.L2763:
	xorl	%ecx, %ecx
	movl	$1, %edx
	call	*%rax
	movq	%rax, %r10
	jmp	.L2323
.L2714:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	movq	8(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, %rbx
	jne	.L870
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	movq	8(%rsp), %r10
	jmp	.L868
.L788:
	movq	%rbx, %rdi
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	call	*_Py_Dealloc@GOTPCREL(%rip)
	xorl	%ebp, %ebp
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movl	$1467, 288(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	jmp	.L1465
.L828:
	movq	%rbx, %rdi
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	call	*_Py_Dealloc@GOTPCREL(%rip)
	xorl	%ebp, %ebp
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movl	$1483, 288(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	jmp	.L1465
.L2796:
	movq	320(%rsp), %rbp
	jmp	.L1692
.L2749:
	xorl	%ecx, %ecx
	movl	$1, %edx
	call	*%r8
	movq	%rax, %r8
	jmp	.L689
.L2752:
	xorl	%ecx, %ecx
	movl	$1, %edx
	call	*%r8
	movq	%rax, %r8
	jmp	.L709
.L2474:
	movq	%r8, 24(%rsp)
	movq	%r9, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	24(%rsp), %r8
	jmp	.L1137
.L2475:
	movq	%r10, 40(%rsp)
	movq	24(%rsp), %rdi
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1138
.L2482:
	movq	%r10, 48(%rsp)
	movq	%r11, %rdi
	movq	%r8, 40(%rsp)
	movq	%r9, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %r9
	jmp	.L1157
.L2480:
	movq	%r10, 40(%rsp)
	movq	%r11, %rdi
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1153
.L2479:
	movq	%r10, 40(%rsp)
	movq	%r15, %rdi
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1148
.L2478:
	movq	%r10, 40(%rsp)
	movq	%r11, %rdi
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1147
.L2476:
	movq	%r10, 32(%rsp)
	movq	%r11, %rdi
	movq	%r8, 24(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r10
	movq	24(%rsp), %r8
	jmp	.L1143
.L2748:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	movq	8(%rsp), %r11
	testq	%rax, %rax
	je	.L2811
.L960:
	decq	(%r11)
	jne	.L2812
	movq	%r11, %rdi
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	call	*_Py_Dealloc@GOTPCREL(%rip)
	xorl	%ebp, %ebp
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 48(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1544, 288(%rsp)
	jmp	.L1465
.L2747:
	decq	(%r11)
	je	.L958
	movl	$1544, 288(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 48(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 56(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	jmp	.L1465
.L2730:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	movq	8(%rsp), %r11
	testq	%rax, %rax
	je	.L2813
.L916:
	decq	(%r11)
	jne	.L2814
	movq	%r11, %rdi
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	call	*_Py_Dealloc@GOTPCREL(%rip)
	xorl	%ebp, %ebp
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 48(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1528, 288(%rsp)
	jmp	.L1465
.L2712:
	movq	8(%rax), %rax
	xorl	%edi, %edi
	testb	$32, %dl
	jne	.L865
	movq	16(%rsp), %rbx
	movq	24(%rbx), %rdi
.L865:
	andb	$2, %dl
	movq	%r10, 8(%rsp)
	leaq	320(%rsp), %rsi
	jne	.L2815
	movl	$1, %edx
	call	*%rax
	movq	8(%rsp), %r10
	movq	%rax, %rbx
	jmp	.L855
.L2786:
	movq	320(%rsp), %rbp
	jmp	.L1693
.L1128:
	movq	__pyx_n_s_math(%rip), %rdi
	leaq	__pyx_dict_cached_value.13315(%rip), %rdx
	leaq	__pyx_dict_version.13314(%rip), %rsi
	call	__Pyx__GetModuleGlobalName
	movq	%rax, %r11
	jmp	.L1131
.L2723:
	xorl	%ecx, %ecx
	movl	$1, %edx
	call	*%rax
	movq	%rax, %r15
	jmp	.L627
.L1833:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	xorl	%r15d, %r15d
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1707, 288(%rsp)
	jmp	.L552
.L1832:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	xorl	%r15d, %r15d
	xorl	%r11d, %r11d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1696, 288(%rsp)
	jmp	.L552
.L2732:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	jmp	.L664
.L2780:
	movq	%r11, 32(%rsp)
	movq	%rsi, %rdi
	movq	%r10, 16(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	16(%rsp), %r10
	movq	32(%rsp), %r11
	jmp	.L1036
.L2746:
	movq	%r11, 8(%rsp)
	xorl	%edx, %edx
	movq	%r11, %rsi
	movq	%rbp, %rdi
	call	*PyObject_Call@GOTPCREL(%rip)
	movq	8(%rsp), %r11
	movq	%rax, %rbx
	decq	(%r11)
	je	.L956
	jmp	.L941
.L2745:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1544, 288(%rsp)
	jmp	.L1465
.L2793:
	movq	%r11, 24(%rsp)
	movq	%r10, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	24(%rsp), %r11
	jmp	.L1065
.L2731:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	jmp	.L882
.L2742:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	jmp	.L926
.L808:
	movq	%rbx, %rdi
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	call	*_Py_Dealloc@GOTPCREL(%rip)
	xorl	%ebp, %ebp
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movl	$1475, 288(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	jmp	.L1465
.L848:
	movq	%rbx, %rdi
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	call	*_Py_Dealloc@GOTPCREL(%rip)
	xorl	%ebp, %ebp
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movl	$1491, 288(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	jmp	.L1465
.L2722:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	movq	8(%rsp), %r11
	testq	%rax, %rax
	je	.L2816
.L894:
	decq	(%r11)
	jne	.L2817
	movq	%r11, %rdi
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	call	*_Py_Dealloc@GOTPCREL(%rip)
	xorl	%ebp, %ebp
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 48(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1520, 288(%rsp)
	jmp	.L1465
.L2721:
	decq	(%r11)
	je	.L892
	movl	$1520, 288(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 48(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 56(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	jmp	.L1465
.L2741:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	movq	8(%rsp), %r11
	testq	%rax, %rax
	je	.L2818
.L938:
	decq	(%r11)
	jne	.L2819
	movq	%r11, %rdi
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	call	*_Py_Dealloc@GOTPCREL(%rip)
	xorl	%ebp, %ebp
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 48(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1536, 288(%rsp)
	jmp	.L1465
.L2720:
	movq	%r11, 8(%rsp)
	xorl	%edx, %edx
	movq	%r11, %rsi
	movq	%rbp, %rdi
	call	*PyObject_Call@GOTPCREL(%rip)
	movq	8(%rsp), %r11
	movq	%rax, %rbx
	decq	(%r11)
	je	.L890
	jmp	.L875
.L2719:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1520, 288(%rsp)
	jmp	.L1465
.L2728:
	movq	%r11, 8(%rsp)
	xorl	%edx, %edx
	movq	%r11, %rsi
	movq	%rbp, %rdi
	call	*PyObject_Call@GOTPCREL(%rip)
	movq	8(%rsp), %r11
	movq	%rax, %rbx
	decq	(%r11)
	je	.L912
	jmp	.L897
.L2727:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1528, 288(%rsp)
	jmp	.L1465
.L2729:
	decq	(%r11)
	je	.L914
	movl	$1528, 288(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 48(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 56(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	jmp	.L1465
.L2739:
	movq	%r11, 8(%rsp)
	xorl	%edx, %edx
	movq	%r11, %rsi
	movq	%rbp, %rdi
	call	*PyObject_Call@GOTPCREL(%rip)
	movq	8(%rsp), %r11
	movq	%rax, %rbx
	decq	(%r11)
	je	.L934
	jmp	.L919
.L2740:
	decq	(%r11)
	je	.L936
	movl	$1536, 288(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 48(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 56(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	jmp	.L1465
.L2738:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1536, 288(%rsp)
	jmp	.L1465
.L892:
	movq	%r11, %rdi
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	call	*_Py_Dealloc@GOTPCREL(%rip)
	xorl	%ebp, %ebp
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movl	$1520, 288(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	jmp	.L1465
.L2812:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1544, 288(%rsp)
	jmp	.L1465
.L2811:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	movq	8(%rsp), %r11
	jmp	.L960
.L2806:
	xorl	%ecx, %ecx
	movl	$1, %edx
	call	*%rax
	movq	%rax, %rbx
	jmp	.L875
.L2716:
	movq	$0, 48(%rsp)
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1351, 288(%rsp)
	jmp	.L1465
.L2792:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1491, 288(%rsp)
	jmp	.L1465
.L2791:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	jmp	.L850
.L2774:
	movq	8(%rax), %rax
	xorl	%edi, %edi
	testb	$32, %dl
	jne	.L1018
	movq	24(%rbp), %rdi
.L1018:
	andb	$2, %dl
	leaq	320(%rsp), %rsi
	jne	.L2820
	movl	$1, %edx
	call	*%rax
	movq	%rax, %r11
	jmp	.L1007
.L2772:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	jmp	.L992
.L2820:
	xorl	%ecx, %ecx
	movl	$1, %edx
	call	*%rax
	movq	%rax, %r11
	jmp	.L1007
.L1842:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1752, 288(%rsp)
	jmp	.L552
.L2790:
	xorl	%ecx, %ecx
	movl	$1, %edx
	call	*%r8
	movq	%rax, %r11
	jmp	.L813
.L2733:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	xorl	%r8d, %r8d
	movq	$0, 56(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1380, 288(%rsp)
	jmp	.L1465
.L2779:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	jmp	.L1014
.L2707:
	movq	$0, 48(%rsp)
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1343, 288(%rsp)
	jmp	.L1465
.L2800:
	xorl	%ecx, %ecx
	movl	$1, %edx
	call	*%r8
	movq	%rax, %r11
	jmp	.L833
.L2761:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	movq	8(%rsp), %r11
	testq	%rax, %rax
	je	.L2821
.L982:
	decq	(%r11)
	jne	.L2822
	movq	%r11, %rdi
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	call	*_Py_Dealloc@GOTPCREL(%rip)
	xorl	%ebp, %ebp
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 48(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1552, 288(%rsp)
	jmp	.L1465
.L980:
	movq	%r11, %rdi
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	call	*_Py_Dealloc@GOTPCREL(%rip)
	xorl	%ebp, %ebp
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movl	$1552, 288(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	jmp	.L1465
.L2822:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1552, 288(%rsp)
	jmp	.L1465
.L2821:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	movq	8(%rsp), %r11
	jmp	.L982
.L2795:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1483, 288(%rsp)
	jmp	.L1465
.L2794:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	jmp	.L830
.L1843:
	movq	$0, 48(%rsp)
	movq	%r15, %r13
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	xorl	%r15d, %r15d
	xorl	%r11d, %r11d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1773, 288(%rsp)
	jmp	.L552
.L2477:
	movq	24(%r13), %r14
	testq	%r14, %r14
	je	.L1144
	movq	16(%r13), %r15
	incq	(%r14)
	incq	(%r15)
	decq	0(%r13)
	je	.L2823
.L1145:
	movq	%r11, %rdx
	movq	%r14, %rsi
	movq	%r15, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%r11, 32(%rsp)
	call	__Pyx_PyObject_Call2Args
	decq	(%r14)
	movq	32(%rsp), %r11
	movq	40(%rsp), %r8
	movq	48(%rsp), %r10
	movq	%rax, 24(%rsp)
	jne	.L1146
	movq	%r11, 48(%rsp)
	movq	%r14, %rdi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1146
.L1841:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1749, 288(%rsp)
	jmp	.L552
.L1140:
	movq	__pyx_n_s_math(%rip), %rdi
	movq	%r10, 32(%rsp)
	movq	%r8, 24(%rsp)
	call	__Pyx_GetBuiltinName
	movq	24(%rsp), %r8
	movq	32(%rsp), %r10
	movq	%rax, %r11
.L1142:
	testq	%r11, %r11
	jne	.L1141
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	xorl	%r15d, %r15d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1747, 288(%rsp)
	jmp	.L552
.L2823:
	movq	%r11, 40(%rsp)
	movq	%r13, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	24(%rsp), %r8
	movq	32(%rsp), %r10
	movq	40(%rsp), %r11
	jmp	.L1145
.L1837:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	xorl	%r15d, %r15d
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	%r9, 24(%rsp)
	movl	$1736, 288(%rsp)
	jmp	.L552
.L1139:
	movq	__pyx_n_s_math(%rip), %rdi
	leaq	__pyx_dict_cached_value.13319(%rip), %rdx
	movq	%r10, 32(%rsp)
	leaq	__pyx_dict_version.13318(%rip), %rsi
	movq	%r8, 24(%rsp)
	call	__Pyx__GetModuleGlobalName
	movq	32(%rsp), %r10
	movq	24(%rsp), %r8
	movq	%rax, %r11
	jmp	.L1142
.L1839:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	xorl	%r15d, %r15d
	xorl	%r11d, %r11d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1744, 288(%rsp)
	jmp	.L552
.L1838:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	xorl	%r15d, %r15d
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1739, 288(%rsp)
	jmp	.L552
.L1847:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	movq	%r9, %r15
	movq	$0, 56(%rsp)
	xorl	%r11d, %r11d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1808, 288(%rsp)
	jmp	.L552
.L1845:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1778, 288(%rsp)
	jmp	.L552
.L1150:
	movq	__pyx_n_s_math(%rip), %rdi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_GetBuiltinName
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	movq	%rax, %r11
.L1152:
	testq	%r11, %r11
	jne	.L1151
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	xorl	%r15d, %r15d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1776, 288(%rsp)
	jmp	.L552
.L1149:
	movq	__pyx_n_s_math(%rip), %rdi
	leaq	__pyx_dict_cached_value.13323(%rip), %rdx
	movq	%r10, 40(%rsp)
	leaq	__pyx_dict_version.13322(%rip), %rsi
	movq	%r8, 32(%rsp)
	call	__Pyx__GetModuleGlobalName
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	movq	%rax, %r11
	jmp	.L1152
.L2751:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	xorl	%r15d, %r15d
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1409, 288(%rsp)
	jmp	.L1465
.L2797:
	movq	8(%rax), %rax
	xorl	%edi, %edi
	testb	$32, %dl
	jne	.L1077
	movq	24(%r10), %rdi
.L1077:
	andb	$2, %dl
	movq	%r11, 40(%rsp)
	leaq	320(%rsp), %rsi
	movq	%r10, 32(%rsp)
	jne	.L2824
	movl	$1, %edx
	call	*%rax
	movq	32(%rsp), %r10
	movq	40(%rsp), %r11
	movq	%rax, 24(%rsp)
	jmp	.L1083
.L2481:
	movq	24(%r15), %r14
	testq	%r14, %r14
	je	.L1154
	movq	16(%r15), %r9
	incq	(%r14)
	incq	(%r9)
	decq	(%r15)
	je	.L2825
.L1155:
	movq	%r11, %rdx
	movq	%r9, %rdi
	movq	%r14, %rsi
	movq	%r10, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r11, 40(%rsp)
	movq	%r9, 32(%rsp)
	call	__Pyx_PyObject_Call2Args
	decq	(%r14)
	movq	32(%rsp), %r9
	movq	40(%rsp), %r11
	movq	48(%rsp), %r8
	movq	%rax, %r13
	movq	56(%rsp), %r10
	jne	.L1156
	movq	%r11, 56(%rsp)
	movq	%r14, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%r9, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %r9
	jmp	.L1156
.L1846:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1781, 288(%rsp)
	jmp	.L552
.L2824:
	xorl	%ecx, %ecx
	movl	$1, %edx
	call	*%rax
	movq	32(%rsp), %r10
	movq	40(%rsp), %r11
	movq	%rax, 24(%rsp)
	jmp	.L1083
.L2825:
	movq	%r11, 56(%rsp)
	movq	%r15, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%r9, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r9
	movq	40(%rsp), %r8
	movq	48(%rsp), %r10
	movq	56(%rsp), %r11
	jmp	.L1155
.L2472:
	movq	24(%rax), %r13
	movq	%rax, %rdx
	testq	%r13, %r13
	je	.L1133
	movq	16(%rax), %r9
	incq	0(%r13)
	incq	(%r9)
	movq	(%rax), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	je	.L2826
.L1134:
	movq	%r11, %rdx
	movq	%r9, %rdi
	movq	%r13, %rsi
	movq	%r11, 32(%rsp)
	movq	%r9, 24(%rsp)
	call	__Pyx_PyObject_Call2Args
	decq	0(%r13)
	movq	24(%rsp), %r9
	movq	32(%rsp), %r11
	movq	%rax, %r8
	jne	.L1135
	movq	%r11, 40(%rsp)
	movq	%r13, %rdi
	movq	%r8, 32(%rsp)
	movq	%r9, 24(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r11
	movq	32(%rsp), %r8
	movq	24(%rsp), %r9
	jmp	.L1135
.L2826:
	movq	%r11, 40(%rsp)
	movq	%rdx, %rdi
	movq	%r9, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r9
	movq	40(%rsp), %r11
	jmp	.L1134
.L2807:
	xorl	%ecx, %ecx
	movl	$1, %edx
	call	*%rax
	movq	%rax, %rbx
	jmp	.L897
.L2769:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	movq	8(%rsp), %r11
	testq	%rax, %rax
	je	.L2827
.L1004:
	decq	(%r11)
	jne	.L2828
	movq	%r11, %rdi
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	call	*_Py_Dealloc@GOTPCREL(%rip)
	xorl	%ebp, %ebp
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 48(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1560, 288(%rsp)
	jmp	.L1465
.L2768:
	decq	(%r11)
	je	.L1002
	movl	$1560, 288(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 48(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 56(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	jmp	.L1465
.L2828:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1560, 288(%rsp)
	jmp	.L1465
.L2767:
	movq	%r11, 8(%rsp)
	xorl	%edx, %edx
	movq	%r11, %rsi
	movq	%r12, %rdi
	call	*PyObject_Call@GOTPCREL(%rip)
	movq	8(%rsp), %r11
	movq	%rax, %rbx
	decq	(%r11)
	je	.L1000
	jmp	.L985
.L2809:
	xorl	%ecx, %ecx
	movl	$1, %edx
	call	*%rax
	movq	%rax, %rbx
	jmp	.L941
.L2827:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	movq	8(%rsp), %r11
	jmp	.L1004
.L1002:
	movq	%r11, %rdi
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	call	*_Py_Dealloc@GOTPCREL(%rip)
	xorl	%ebp, %ebp
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movl	$1560, 288(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	jmp	.L1465
.L2808:
	xorl	%ecx, %ecx
	movl	$1, %edx
	call	*%rax
	movq	%rax, %rbx
	jmp	.L919
.L2785:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1467, 288(%rsp)
	jmp	.L1465
.L2784:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	jmp	.L790
.L2799:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	movq	32(%rsp), %r10
	movq	40(%rsp), %r11
	testq	%rax, %rax
	movq	%rax, 24(%rsp)
	je	.L2829
.L1082:
	movq	$0, 24(%rsp)
	jmp	.L1080
.L2798:
	movq	%r11, 40(%rsp)
	movq	%r10, %rdi
	xorl	%edx, %edx
	movq	%rbp, %rsi
	movq	%r10, 32(%rsp)
	call	*PyObject_Call@GOTPCREL(%rip)
	movq	32(%rsp), %r10
	movq	40(%rsp), %r11
	movq	%rax, 24(%rsp)
	jmp	.L1080
.L2829:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	movq	40(%rsp), %r11
	movq	32(%rsp), %r10
	jmp	.L1080
.L1993:
	movq	$0, 48(%rsp)
	movq	%rcx, 56(%rsp)
	movq	$0, 32(%rsp)
	movl	$2916, 288(%rsp)
	jmp	.L552
.L2578:
	movq	24(%rax), %r9
	movq	%rax, %rdx
	testq	%r9, %r9
	je	.L1440
	movq	16(%rax), %rcx
	incq	(%r9)
	incq	(%rcx)
	movq	(%rax), %rax
	movq	%rax, 48(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	jne	.L1441
	movq	%r11, 304(%rsp)
	movq	%rdx, %rdi
	movq	%r10, 296(%rsp)
	movq	%r8, 288(%rsp)
	movq	%rcx, 64(%rsp)
	movq	%r9, 48(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r9
	movq	64(%rsp), %rcx
	movq	288(%rsp), %r8
	movq	296(%rsp), %r10
	movq	304(%rsp), %r11
.L1441:
	movq	32(%rsp), %rdx
	movq	%r9, %rsi
	movq	%rcx, %rdi
	movq	%r9, 56(%rsp)
	movq	%r11, 304(%rsp)
	movq	%r10, 296(%rsp)
	movq	%r8, 288(%rsp)
	movq	%rcx, 48(%rsp)
	call	__Pyx_PyObject_Call2Args
	movq	56(%rsp), %r9
	movq	48(%rsp), %rcx
	movq	%rax, 64(%rsp)
	movq	288(%rsp), %r8
	decq	(%r9)
	movq	296(%rsp), %r10
	movq	304(%rsp), %r11
	jne	.L1442
	movq	%r11, 296(%rsp)
	movq	%r9, %rdi
	movq	%r10, 288(%rsp)
	movq	%r8, 56(%rsp)
	movq	%rcx, 48(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r8
	movq	48(%rsp), %rcx
	movq	296(%rsp), %r11
	movq	288(%rsp), %r10
	jmp	.L1442
.L1992:
	movq	$0, 48(%rsp)
	movq	$0, 64(%rsp)
	movl	$2895, 288(%rsp)
	jmp	.L552
.L1991:
	movq	$0, 48(%rsp)
	movq	$0, 64(%rsp)
	movl	$2892, 288(%rsp)
	jmp	.L552
.L1436:
	movq	__pyx_n_s_math(%rip), %rdi
	movq	%r11, 64(%rsp)
	movq	%r10, 56(%rsp)
	movq	%r8, 48(%rsp)
	call	__Pyx_GetBuiltinName
	movq	48(%rsp), %r8
	movq	56(%rsp), %r10
	movq	%rax, 32(%rsp)
	movq	64(%rsp), %r11
.L1438:
	cmpq	$0, 32(%rsp)
	jne	.L1437
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movl	$2890, 288(%rsp)
	jmp	.L552
.L1435:
	movq	__pyx_n_s_math(%rip), %rdi
	leaq	__pyx_dict_cached_value.13407(%rip), %rdx
	movq	%r11, 64(%rsp)
	leaq	__pyx_dict_version.13406(%rip), %rsi
	movq	%r10, 56(%rsp)
	movq	%r8, 48(%rsp)
	call	__Pyx__GetModuleGlobalName
	movq	64(%rsp), %r11
	movq	56(%rsp), %r10
	movq	%rax, 32(%rsp)
	movq	48(%rsp), %r8
	jmp	.L1438
.L1989:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	%rcx, 64(%rsp)
	movq	$0, 32(%rsp)
	movl	$2887, 288(%rsp)
	jmp	.L552
.L2577:
	movq	24(%rax), %r9
	movq	%rax, %rsi
	testq	%r9, %r9
	je	.L1430
	movq	16(%rax), %rcx
	incq	(%r9)
	incq	(%rcx)
	movq	(%rax), %rax
	movq	%rax, 40(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	jne	.L1431
	movq	%r11, 296(%rsp)
	movq	%rsi, %rdi
	movq	%r10, 288(%rsp)
	movq	%r8, 56(%rsp)
	movq	%rcx, 48(%rsp)
	movq	%r9, 40(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r9
	movq	48(%rsp), %rcx
	movq	56(%rsp), %r8
	movq	288(%rsp), %r10
	movq	296(%rsp), %r11
.L1431:
	movq	32(%rsp), %rdx
	movq	%r9, %rsi
	movq	%rcx, %rdi
	movq	%r8, 64(%rsp)
	movq	%r11, 296(%rsp)
	movq	%r10, 288(%rsp)
	movq	%r9, 56(%rsp)
	movq	%rcx, 48(%rsp)
	call	__Pyx_PyObject_Call2Args
	movq	56(%rsp), %r9
	movq	48(%rsp), %rcx
	movq	%rax, 40(%rsp)
	movq	64(%rsp), %r8
	decq	(%r9)
	movq	288(%rsp), %r10
	movq	296(%rsp), %r11
	jne	.L1432
	movq	%r11, 288(%rsp)
	movq	%r9, %rdi
	movq	%r10, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	%rcx, 48(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	64(%rsp), %r10
	movq	56(%rsp), %r8
	movq	288(%rsp), %r11
	movq	48(%rsp), %rcx
	jmp	.L1432
.L1988:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 40(%rsp)
	movl	$2866, 288(%rsp)
	jmp	.L552
.L1987:
	movq	$0, 48(%rsp)
	movq	40(%rsp), %rax
	movq	$0, 56(%rsp)
	movq	%rax, 32(%rsp)
	movq	$0, 40(%rsp)
	movl	$2863, 288(%rsp)
	jmp	.L552
.L1426:
	movq	__pyx_n_s_math(%rip), %rdi
	movq	%r11, 56(%rsp)
	movq	%r10, 48(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_GetBuiltinName
	movq	32(%rsp), %r8
	movq	48(%rsp), %r10
	movq	%rax, 40(%rsp)
	movq	56(%rsp), %r11
.L1428:
	cmpq	$0, 40(%rsp)
	jne	.L1427
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movl	$2861, 288(%rsp)
	jmp	.L552
.L1425:
	movq	__pyx_n_s_math(%rip), %rdi
	leaq	__pyx_dict_cached_value.13403(%rip), %rdx
	movq	%r11, 56(%rsp)
	leaq	__pyx_dict_version.13402(%rip), %rsi
	movq	%r10, 48(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx__GetModuleGlobalName
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	%rax, 40(%rsp)
	movq	32(%rsp), %r8
	jmp	.L1428
.L1985:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movl	$2858, 288(%rsp)
	jmp	.L552
.L1984:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movl	$2841, 288(%rsp)
	jmp	.L552
.L1983:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	%rcx, 40(%rsp)
	movl	$2838, 288(%rsp)
	jmp	.L552
.L2576:
	movq	24(%rax), %r9
	movq	%rax, %rdx
	testq	%r9, %r9
	je	.L1419
	movq	16(%rax), %rcx
	incq	(%r9)
	incq	(%rcx)
	movq	(%rax), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	jne	.L1420
	movq	%r11, 72(%rsp)
	movq	%rdx, %rdi
	movq	%r10, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	%rcx, 48(%rsp)
	movq	%r9, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r9
	movq	48(%rsp), %rcx
	movq	56(%rsp), %r8
	movq	64(%rsp), %r10
	movq	72(%rsp), %r11
.L1420:
	movq	80(%rsp), %rdx
	movq	%r9, %rsi
	movq	%rcx, %rdi
	movq	%r11, 64(%rsp)
	movq	%r10, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r9, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	__Pyx_PyObject_Call2Args
	movq	40(%rsp), %r9
	movq	32(%rsp), %rcx
	movq	48(%rsp), %r8
	movq	56(%rsp), %r10
	movq	%rax, 72(%rsp)
	decq	(%r9)
	movq	64(%rsp), %r11
	jne	.L1421
	movq	%r11, 56(%rsp)
	movq	%r9, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %rcx
	jmp	.L1421
.L1999:
	movl	$2959, 288(%rsp)
	jmp	.L552
.L1998:
	movq	$0, 32(%rsp)
	movl	$2948, 288(%rsp)
	jmp	.L552
.L1997:
	movq	%rcx, 48(%rsp)
	movq	$0, 32(%rsp)
	movl	$2945, 288(%rsp)
	jmp	.L552
.L2579:
	movq	24(%rax), %r9
	movq	%rax, %rdi
	testq	%r9, %r9
	je	.L1450
	movq	16(%rax), %rcx
	incq	(%r9)
	incq	(%rcx)
	movq	(%rax), %rax
	movq	%rax, 56(%rsp)
	decq	%rax
	movq	%rax, (%rdi)
	jne	.L1451
	movq	%r11, 312(%rsp)
	movq	%r10, 304(%rsp)
	movq	%r8, 296(%rsp)
	movq	%rcx, 288(%rsp)
	movq	%r9, 56(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r9
	movq	288(%rsp), %rcx
	movq	296(%rsp), %r8
	movq	304(%rsp), %r10
	movq	312(%rsp), %r11
.L1451:
	movq	32(%rsp), %rdx
	movq	%r9, %rsi
	movq	%rcx, %rdi
	movq	%rcx, 48(%rsp)
	movq	%r11, 312(%rsp)
	movq	%r10, 304(%rsp)
	movq	%r8, 296(%rsp)
	movq	%r9, 288(%rsp)
	call	__Pyx_PyObject_Call2Args
	movq	288(%rsp), %r9
	movq	48(%rsp), %rcx
	movq	%rax, 56(%rsp)
	movq	296(%rsp), %r8
	decq	(%r9)
	movq	304(%rsp), %r10
	movq	312(%rsp), %r11
	jne	.L1452
	movq	%r11, 304(%rsp)
	movq	%r9, %rdi
	movq	%r10, 296(%rsp)
	movq	%r8, 288(%rsp)
	movq	%rcx, 48(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	304(%rsp), %r11
	movq	48(%rsp), %rcx
	movq	296(%rsp), %r10
	movq	288(%rsp), %r8
	jmp	.L1452
.L1996:
	movq	$0, 56(%rsp)
	movl	$2924, 288(%rsp)
	jmp	.L552
.L1995:
	movq	$0, 56(%rsp)
	movl	$2921, 288(%rsp)
	jmp	.L552
.L1446:
	movq	__pyx_n_s_math(%rip), %rdi
	movq	%r11, 288(%rsp)
	movq	%r10, 56(%rsp)
	movq	%r8, 48(%rsp)
	call	__Pyx_GetBuiltinName
	movq	48(%rsp), %r8
	movq	56(%rsp), %r10
	movq	%rax, 32(%rsp)
	movq	288(%rsp), %r11
.L1448:
	cmpq	$0, 32(%rsp)
	jne	.L1447
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movl	$2919, 288(%rsp)
	jmp	.L552
.L1445:
	movq	__pyx_n_s_math(%rip), %rdi
	leaq	__pyx_dict_cached_value.13411(%rip), %rdx
	leaq	__pyx_dict_version.13410(%rip), %rsi
	movq	%r11, 288(%rsp)
	movq	%r10, 56(%rsp)
	movq	%r8, 48(%rsp)
	call	__Pyx__GetModuleGlobalName
	movq	56(%rsp), %r10
	movq	48(%rsp), %r8
	movq	%rax, 32(%rsp)
	movq	288(%rsp), %r11
	jmp	.L1448
.L2771:
	xorl	%ecx, %ecx
	movl	$1, %edx
	call	*%r8
	movq	%rax, %r11
	jmp	.L773
.L2789:
	call	*PyErr_Occurred@GOTPCREL(%rip)
	movq	32(%rsp), %r11
	testq	%rax, %rax
	movq	%rax, 16(%rsp)
	je	.L2830
.L1053:
	movq	$0, 16(%rsp)
	jmp	.L1051
.L2788:
	movq	%r11, 32(%rsp)
	movq	24(%rsp), %rdi
	xorl	%edx, %edx
	movq	%rbp, %rsi
	call	*PyObject_Call@GOTPCREL(%rip)
	movq	32(%rsp), %r11
	movq	%rax, 16(%rsp)
	jmp	.L1051
.L2830:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	movq	32(%rsp), %r11
	jmp	.L1051
.L2754:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	xorl	%r15d, %r15d
	xorl	%r10d, %r10d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1417, 288(%rsp)
	jmp	.L1465
.L2805:
	xorl	%ecx, %ecx
	movl	$1, %edx
	call	*%rax
	movq	%rax, %rbx
	jmp	.L963
.L2803:
	movq	%r11, 32(%rsp)
	call	*PyErr_Occurred@GOTPCREL(%rip)
	movq	32(%rsp), %r11
	testq	%rax, %rax
	je	.L2831
.L1111:
	xorl	%r10d, %r10d
	jmp	.L1109
.L2831:
	movq	%rax, 32(%rsp)
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	%r11, 40(%rsp)
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	movq	40(%rsp), %r11
	movq	32(%rsp), %r10
	jmp	.L1109
.L2802:
	xorl	%edx, %edx
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	*PyObject_Call@GOTPCREL(%rip)
	movq	32(%rsp), %r11
	movq	%rax, %r10
	jmp	.L1109
.L2801:
	movq	8(%rax), %rax
	xorl	%edi, %edi
	testb	$32, %dl
	jne	.L1106
	movq	24(%rbp), %rdi
.L1106:
	andb	$2, %dl
	movq	%r11, 32(%rsp)
	leaq	320(%rsp), %rsi
	jne	.L2832
	movl	$1, %edx
	call	*%rax
	movq	32(%rsp), %r11
	movq	%rax, %r10
	jmp	.L1112
.L2001:
	movq	$0, 56(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 64(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 32(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$3125, 288(%rsp)
	jmp	.L1468
.L2804:
	movq	%r11, 32(%rsp)
	movq	%rbp, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r11
	jmp	.L1094
.L2000:
	movl	$2962, 288(%rsp)
	jmp	.L552
.L2832:
	xorl	%ecx, %ecx
	movl	$1, %edx
	call	*%rax
	movq	32(%rsp), %r11
	movq	%rax, %r10
	jmp	.L1112
.L2778:
	movq	%r11, 24(%rsp)
	movq	%r10, 8(%rsp)
	call	*PyErr_Occurred@GOTPCREL(%rip)
	movq	8(%rsp), %r10
	movq	24(%rsp), %r11
	testq	%rax, %rax
	je	.L2833
.L1026:
	decq	(%r10)
	jne	.L2834
.L1624:
	xorl	%r11d, %r11d
	jmp	.L1022
.L2777:
	decq	(%r10)
	je	.L1624
	movl	$1568, 288(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 48(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 56(%rsp)
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	jmp	.L552
.L2834:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1568, 288(%rsp)
	jmp	.L552
.L2833:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	movq	8(%rsp), %r10
	movq	24(%rsp), %r11
	jmp	.L1026
.L2776:
	movq	%r10, 8(%rsp)
	xorl	%edx, %edx
	movq	%r10, %rsi
	movq	%rbp, %rdi
	call	*PyObject_Call@GOTPCREL(%rip)
	movq	8(%rsp), %r10
	movq	%rax, %r11
	decq	(%r10)
	je	.L1022
	jmp	.L1007
.L2775:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r11d, %r11d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1568, 288(%rsp)
	jmp	.L552
.L1809:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1568, 288(%rsp)
	jmp	.L552
.L2810:
	movq	%r11, 48(%rsp)
	movq	%r8, %rdi
	movq	%r9, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r9
	movq	40(%rsp), %r10
	movq	48(%rsp), %r11
	jmp	.L1123
.L2787:
	movq	8(%rax), %rax
	xorl	%edi, %edi
	testb	$32, %dl
	jne	.L1048
	movq	24(%rsp), %rdi
	movq	24(%rdi), %rdi
.L1048:
	andb	$2, %dl
	movq	%r11, 32(%rsp)
	leaq	320(%rsp), %rsi
	jne	.L2835
	movl	$1, %edx
	call	*%rax
	movq	32(%rsp), %r11
	movq	%rax, 16(%rsp)
	jmp	.L2325
.L2815:
	xorl	%ecx, %ecx
	movl	$1, %edx
	call	*%rax
	movq	8(%rsp), %r10
	movq	%rax, %rbx
	jmp	.L855
.L2835:
	xorl	%ecx, %ecx
	movl	$1, %edx
	call	*%rax
	movq	32(%rsp), %r11
	movq	%rax, 16(%rsp)
	jmp	.L2325
.L2782:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movl	$1475, 288(%rsp)
	jmp	.L1465
.L2781:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	jmp	.L810
.L2817:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1520, 288(%rsp)
	jmp	.L1465
.L2816:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	movq	8(%rsp), %r11
	jmp	.L894
.L2819:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1536, 288(%rsp)
	jmp	.L1465
.L2818:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	movq	8(%rsp), %r11
	jmp	.L938
.L2770:
	xorl	%ecx, %ecx
	movl	$1, %edx
	call	*%rax
	movq	%rax, %r11
	jmp	.L2324
.L2783:
	xorl	%ecx, %ecx
	movl	$1, %edx
	call	*%r8
	movq	%rax, %r11
	jmp	.L793
.L2814:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	movq	$0, 56(%rsp)
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	$0, 64(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$1528, 288(%rsp)
	jmp	.L1465
.L2813:
	movq	PyExc_SystemError@GOTPCREL(%rip), %rax
	leaq	.LC11(%rip), %rsi
	movq	(%rax), %rdi
	call	*PyErr_SetString@GOTPCREL(%rip)
	movq	8(%rsp), %r11
	jmp	.L916
.L2765:
	movq	8(%rax), %rax
	xorl	%edi, %edi
	testb	$32, %dl
	jne	.L996
	movq	24(%r12), %rdi
.L996:
	andb	$2, %dl
	leaq	320(%rsp), %rsi
	jne	.L2836
	movl	$1, %edx
	call	*%rax
	movq	%rax, %rbx
	jmp	.L985
.L958:
	movq	%r11, %rdi
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	call	*_Py_Dealloc@GOTPCREL(%rip)
	xorl	%ebp, %ebp
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movl	$1544, 288(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	jmp	.L1465
.L2836:
	xorl	%ecx, %ecx
	movl	$1, %edx
	call	*%rax
	movq	%rax, %rbx
	jmp	.L985
.L914:
	movq	%r11, %rdi
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	call	*_Py_Dealloc@GOTPCREL(%rip)
	xorl	%ebp, %ebp
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movl	$1528, 288(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	jmp	.L1465
.L936:
	movq	%r11, %rdi
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	call	*_Py_Dealloc@GOTPCREL(%rip)
	xorl	%ebp, %ebp
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movl	$1536, 288(%rsp)
	xorl	%r10d, %r10d
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	jmp	.L1465
.L1982:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 72(%rsp)
	movl	$2814, 288(%rsp)
	jmp	.L552
.L1981:
	movq	$0, 48(%rsp)
	movq	72(%rsp), %rax
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	%rax, 80(%rsp)
	movq	$0, 72(%rsp)
	movl	$2811, 288(%rsp)
	jmp	.L552
.L1415:
	movq	__pyx_n_s_math(%rip), %rdi
	movq	%r11, 48(%rsp)
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_GetBuiltinName
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	movq	%rax, 72(%rsp)
	movq	48(%rsp), %r11
.L1417:
	cmpq	$0, 72(%rsp)
	jne	.L1416
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 40(%rsp)
	movl	$2809, 288(%rsp)
	jmp	.L552
.L1414:
	movq	__pyx_n_s_math(%rip), %rdi
	leaq	__pyx_dict_cached_value.13399(%rip), %rdx
	movq	%r11, 48(%rsp)
	leaq	__pyx_dict_version.13398(%rip), %rsi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx__GetModuleGlobalName
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	%rax, 72(%rsp)
	movq	32(%rsp), %r8
	jmp	.L1417
.L1979:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	%rcx, 72(%rsp)
	movq	$0, 40(%rsp)
	movl	$2806, 288(%rsp)
	jmp	.L552
.L2575:
	movq	24(%rax), %r9
	movq	%rax, %rsi
	testq	%r9, %r9
	je	.L1409
	movq	16(%rax), %rcx
	incq	(%r9)
	incq	(%rcx)
	movq	(%rax), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	jne	.L1410
	movq	%r11, 80(%rsp)
	movq	%rsi, %rdi
	movq	%r10, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	%rcx, 48(%rsp)
	movq	%r9, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r9
	movq	48(%rsp), %rcx
	movq	56(%rsp), %r8
	movq	64(%rsp), %r10
	movq	80(%rsp), %r11
.L1410:
	movq	40(%rsp), %rdx
	movq	%r9, %rsi
	movq	%rcx, %rdi
	movq	%r11, 72(%rsp)
	movq	%r10, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	%r9, 48(%rsp)
	movq	%rcx, 32(%rsp)
	call	__Pyx_PyObject_Call2Args
	movq	48(%rsp), %r9
	movq	32(%rsp), %rcx
	movq	56(%rsp), %r8
	movq	64(%rsp), %r10
	movq	%rax, 96(%rsp)
	decq	(%r9)
	movq	72(%rsp), %r11
	jne	.L1411
	movq	%r11, 64(%rsp)
	movq	%r9, %rdi
	movq	%r10, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%rcx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	64(%rsp), %r11
	movq	56(%rsp), %r10
	movq	48(%rsp), %r8
	movq	32(%rsp), %rcx
	jmp	.L1411
.L1978:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 96(%rsp)
	movl	$2785, 288(%rsp)
	jmp	.L552
.L1977:
	movq	$0, 48(%rsp)
	movq	40(%rsp), %rax
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	%rax, 80(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movl	$2782, 288(%rsp)
	jmp	.L552
.L1405:
	movq	__pyx_n_s_math(%rip), %rdi
	movq	%r11, 56(%rsp)
	movq	%r10, 48(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_GetBuiltinName
	movq	32(%rsp), %r8
	movq	48(%rsp), %r10
	movq	%rax, 40(%rsp)
	movq	56(%rsp), %r11
.L1407:
	cmpq	$0, 40(%rsp)
	jne	.L1406
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 96(%rsp)
	movl	$2780, 288(%rsp)
	jmp	.L552
.L1404:
	movq	__pyx_n_s_math(%rip), %rdi
	leaq	__pyx_dict_cached_value.13395(%rip), %rdx
	movq	%r11, 56(%rsp)
	leaq	__pyx_dict_version.13394(%rip), %rsi
	movq	%r10, 48(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx__GetModuleGlobalName
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	%rax, 40(%rsp)
	movq	32(%rsp), %r8
	jmp	.L1407
.L2574:
	movq	%r11, 56(%rsp)
	movl	$141, %edi
	movq	%r10, 48(%rsp)
	movq	%r8, 32(%rsp)
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	48(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 40(%rsp)
	movq	56(%rsp), %r11
	jne	.L2326
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movl	$2770, 288(%rsp)
	jmp	.L552
.L1974:
	movl	$2767, 288(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 40(%rsp)
	jmp	.L552
.L1973:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 88(%rsp)
	movl	$2765, 288(%rsp)
	jmp	.L552
.L1972:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movl	$2763, 288(%rsp)
	jmp	.L552
.L1394:
	movq	%r11, 48(%rsp)
	movl	$611, %edi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, 80(%rsp)
	movq	48(%rsp), %r11
	jne	.L1395
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 40(%rsp)
	movl	$2755, 288(%rsp)
	jmp	.L552
.L1970:
	movl	$2749, 288(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 40(%rsp)
	jmp	.L552
.L1969:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movl	$2747, 288(%rsp)
	jmp	.L552
.L1968:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movl	$2745, 288(%rsp)
	jmp	.L552
.L2573:
	movq	%r11, 48(%rsp)
	movq	%rcx, %rdi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1390
.L1967:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	%rcx, 96(%rsp)
	movq	$0, 40(%rsp)
	movl	$2724, 288(%rsp)
	jmp	.L552
.L2572:
	movq	%r11, 56(%rsp)
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %rcx
	jmp	.L1389
.L2571:
	movq	24(%rax), %r9
	movq	%rax, %rdx
	testq	%r9, %r9
	je	.L1386
	movq	16(%rax), %rcx
	incq	(%r9)
	incq	(%rcx)
	movq	(%rax), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	jne	.L1387
	movq	%r11, 64(%rsp)
	movq	%rdx, %rdi
	movq	%r10, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%r9, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r9
	movq	40(%rsp), %rcx
	movq	48(%rsp), %r8
	movq	56(%rsp), %r10
	movq	64(%rsp), %r11
.L1387:
	movq	88(%rsp), %rdx
	movq	%r9, %rsi
	movq	%rcx, %rdi
	movq	%r11, 64(%rsp)
	movq	%r10, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r9, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	__Pyx_PyObject_Call2Args
	movq	40(%rsp), %r9
	movq	32(%rsp), %rcx
	movq	48(%rsp), %r8
	movq	56(%rsp), %r10
	movq	%rax, 112(%rsp)
	decq	(%r9)
	movq	64(%rsp), %r11
	jne	.L1388
	movq	%r11, 56(%rsp)
	movq	%r9, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %rcx
	jmp	.L1388
.L1966:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 112(%rsp)
	movl	$2703, 288(%rsp)
	jmp	.L552
.L1384:
	movq	__pyx_int_0(%rip), %rax
	movq	%rax, 40(%rsp)
	incq	(%rax)
	jmp	.L1385
.L2570:
	movq	%r11, 56(%rsp)
	movq	%rdx, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movl	%ecx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movl	32(%rsp), %ecx
	jmp	.L1383
.L2569:
	movq	%r11, 48(%rsp)
	movq	%rsi, %rdi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1381
.L2568:
	movq	%r8, 32(%rsp)
	movq	%rdx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1380
.L1964:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 112(%rsp)
	movl	$2691, 288(%rsp)
	jmp	.L552
.L2567:
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1379
.L1963:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 112(%rsp)
	movl	$2688, 288(%rsp)
	jmp	.L552
.L1962:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 112(%rsp)
	movl	$2677, 288(%rsp)
	jmp	.L552
.L2566:
	movq	%r8, 32(%rsp)
	movq	%rsi, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1378
.L1961:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 112(%rsp)
	movl	$2674, 288(%rsp)
	jmp	.L552
.L1960:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 112(%rsp)
	movl	$2663, 288(%rsp)
	jmp	.L552
.L2565:
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1377
.L1959:
	movq	$0, 48(%rsp)
	movq	112(%rsp), %rax
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	%rax, 40(%rsp)
	movq	$0, 112(%rsp)
	movl	$2660, 288(%rsp)
	jmp	.L552
.L1374:
	movq	__pyx_n_s_math(%rip), %rdi
	movq	%r11, 48(%rsp)
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_GetBuiltinName
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	movq	%rax, 112(%rsp)
	movq	48(%rsp), %r11
.L1376:
	cmpq	$0, 112(%rsp)
	jne	.L1375
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movl	$2658, 288(%rsp)
	jmp	.L552
.L1373:
	movq	__pyx_n_s_math(%rip), %rdi
	leaq	__pyx_dict_cached_value.13391(%rip), %rdx
	movq	%r11, 48(%rsp)
	leaq	__pyx_dict_version.13390(%rip), %rsi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx__GetModuleGlobalName
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	%rax, 112(%rsp)
	movq	32(%rsp), %r8
	jmp	.L1376
.L1957:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 112(%rsp)
	movl	$2656, 288(%rsp)
	jmp	.L552
.L1956:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movl	$2626, 288(%rsp)
	jmp	.L552
.L2564:
	movq	24(%rax), %r9
	movq	%rax, %rsi
	testq	%r9, %r9
	je	.L1367
	movq	16(%rax), %rcx
	incq	(%r9)
	incq	(%rcx)
	movq	(%rax), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	jne	.L1368
	movq	%r11, 64(%rsp)
	movq	%rsi, %rdi
	movq	%r10, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%r9, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r9
	movq	40(%rsp), %rcx
	movq	48(%rsp), %r8
	movq	56(%rsp), %r10
	movq	64(%rsp), %r11
.L1368:
	movq	104(%rsp), %rdx
	movq	%r9, %rsi
	movq	%rcx, %rdi
	movq	%r11, 64(%rsp)
	movq	%r10, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r9, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	__Pyx_PyObject_Call2Args
	movq	40(%rsp), %r9
	movq	32(%rsp), %rcx
	movq	%rax, 152(%rsp)
	movq	48(%rsp), %r8
	decq	(%r9)
	movq	56(%rsp), %r10
	movq	64(%rsp), %r11
	jne	.L1369
	movq	%r11, 56(%rsp)
	movq	%r9, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %rcx
	jmp	.L1369
.L1952:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movl	$2584, 288(%rsp)
	jmp	.L552
.L1951:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movl	$2581, 288(%rsp)
	jmp	.L552
.L1363:
	movq	__pyx_n_s_math(%rip), %rdi
	movq	%r11, 48(%rsp)
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_GetBuiltinName
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	movq	%rax, 104(%rsp)
	movq	48(%rsp), %r11
.L1365:
	cmpq	$0, 104(%rsp)
	jne	.L1364
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movl	$2579, 288(%rsp)
	jmp	.L552
.L1954:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 104(%rsp)
	movl	$2608, 288(%rsp)
	jmp	.L552
.L1955:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movl	$2616, 288(%rsp)
	jmp	.L552
.L1965:
	movl	$2694, 288(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 112(%rsp)
	jmp	.L552
.L1953:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	%rcx, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 104(%rsp)
	movl	$2605, 288(%rsp)
	jmp	.L552
.L1362:
	movq	__pyx_n_s_math(%rip), %rdi
	leaq	__pyx_dict_cached_value.13387(%rip), %rdx
	movq	%r11, 48(%rsp)
	leaq	__pyx_dict_version.13386(%rip), %rsi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx__GetModuleGlobalName
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	%rax, 104(%rsp)
	movq	32(%rsp), %r8
	jmp	.L1365
.L2563:
	movq	%r11, 48(%rsp)
	movq	%rcx, %rdi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1361
.L1949:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	%rcx, 152(%rsp)
	movq	$0, 104(%rsp)
	movl	$2576, 288(%rsp)
	jmp	.L552
.L2562:
	movq	%r11, 56(%rsp)
	movq	%rsi, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %rcx
	jmp	.L1360
.L2561:
	movq	24(%rax), %r9
	movq	%rax, %rdi
	testq	%r9, %r9
	je	.L1357
	movq	16(%rax), %rcx
	incq	(%r9)
	incq	(%rcx)
	movq	(%rax), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdi)
	jne	.L1358
	movq	%r11, 64(%rsp)
	movq	%r10, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%r9, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r9
	movq	40(%rsp), %rcx
	movq	48(%rsp), %r8
	movq	56(%rsp), %r10
	movq	64(%rsp), %r11
.L1358:
	movq	104(%rsp), %rdx
	movq	%r9, %rsi
	movq	%rcx, %rdi
	movq	%r11, 64(%rsp)
	movq	%r10, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r9, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	__Pyx_PyObject_Call2Args
	movq	40(%rsp), %r9
	movq	32(%rsp), %rcx
	movq	48(%rsp), %r8
	movq	56(%rsp), %r10
	movq	%rax, 120(%rsp)
	decq	(%r9)
	movq	64(%rsp), %r11
	jne	.L1359
	movq	%r11, 56(%rsp)
	movq	%r9, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %rcx
	jmp	.L1359
.L1948:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 120(%rsp)
	movl	$2552, 288(%rsp)
	jmp	.L552
.L2560:
	movq	%r8, 32(%rsp)
	movq	%rdx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1356
.L1947:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 120(%rsp)
	movl	$2549, 288(%rsp)
	jmp	.L552
.L1946:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 120(%rsp)
	movl	$2538, 288(%rsp)
	jmp	.L552
.L1945:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 120(%rsp)
	movl	$2535, 288(%rsp)
	jmp	.L552
.L1944:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 120(%rsp)
	movl	$2524, 288(%rsp)
	jmp	.L552
.L2559:
	movq	%r8, 32(%rsp)
	movq	%rsi, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1354
.L1943:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 120(%rsp)
	movl	$2521, 288(%rsp)
	jmp	.L552
.L1942:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 120(%rsp)
	movl	$2510, 288(%rsp)
	jmp	.L552
.L1941:
	movq	$0, 48(%rsp)
	movq	120(%rsp), %rax
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	%rax, 104(%rsp)
	movq	$0, 120(%rsp)
	movl	$2507, 288(%rsp)
	jmp	.L552
.L1350:
	movq	__pyx_n_s_math(%rip), %rdi
	movq	%r11, 48(%rsp)
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_GetBuiltinName
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	movq	%rax, 120(%rsp)
	movq	48(%rsp), %r11
.L1352:
	cmpq	$0, 120(%rsp)
	jne	.L1351
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movl	$2505, 288(%rsp)
	jmp	.L552
.L1349:
	movq	__pyx_n_s_math(%rip), %rdi
	leaq	__pyx_dict_cached_value.13383(%rip), %rdx
	movq	%r11, 48(%rsp)
	leaq	__pyx_dict_version.13382(%rip), %rsi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx__GetModuleGlobalName
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	%rax, 120(%rsp)
	movq	32(%rsp), %r8
	jmp	.L1352
.L2558:
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1348
.L1939:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movl	$2502, 288(%rsp)
	jmp	.L552
.L1938:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 168(%rsp)
	movl	$2488, 288(%rsp)
	jmp	.L552
.L2557:
	movq	%r11, 48(%rsp)
	movq	%rcx, %rdi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1347
.L1937:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	%rcx, 120(%rsp)
	movq	$0, 168(%rsp)
	movl	$2485, 288(%rsp)
	jmp	.L552
.L2556:
	movq	24(%rax), %r9
	movq	%rax, %rdx
	testq	%r9, %r9
	je	.L1343
	movq	16(%rax), %rcx
	incq	(%r9)
	incq	(%rcx)
	movq	(%rax), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	je	.L2837
.L1344:
	movq	168(%rsp), %rdx
	movq	%r9, %rsi
	movq	%rcx, %rdi
	movq	%r11, 64(%rsp)
	movq	%r10, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r9, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	__Pyx_PyObject_Call2Args
	movq	40(%rsp), %r9
	movq	32(%rsp), %rcx
	movq	%rax, 160(%rsp)
	movq	48(%rsp), %r8
	decq	(%r9)
	movq	56(%rsp), %r10
	movq	64(%rsp), %r11
	jne	.L1345
	movq	%r11, 56(%rsp)
	movq	%r9, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %rcx
	jmp	.L1345
.L1936:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 160(%rsp)
	movl	$2464, 288(%rsp)
	jmp	.L552
.L2837:
	movq	%r11, 64(%rsp)
	movq	%rdx, %rdi
	movq	%r10, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%r9, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r9
	movq	40(%rsp), %rcx
	movq	48(%rsp), %r8
	movq	56(%rsp), %r10
	movq	64(%rsp), %r11
	jmp	.L1344
.L2555:
	movq	%r8, 32(%rsp)
	movq	%rdx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1342
.L1935:
	movq	160(%rsp), %rax
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	%rax, 168(%rsp)
	movq	$0, 160(%rsp)
	movl	$2461, 288(%rsp)
	jmp	.L552
.L1339:
	movq	__pyx_n_s_math(%rip), %rdi
	movq	%r11, 48(%rsp)
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_GetBuiltinName
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	movq	%rax, 160(%rsp)
	movq	48(%rsp), %r11
.L1341:
	cmpq	$0, 160(%rsp)
	jne	.L1340
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movl	$2459, 288(%rsp)
	jmp	.L552
.L1338:
	movq	__pyx_n_s_math(%rip), %rdi
	leaq	__pyx_dict_cached_value.13379(%rip), %rdx
	movq	%r11, 48(%rsp)
	leaq	__pyx_dict_version.13378(%rip), %rsi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx__GetModuleGlobalName
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	%rax, 160(%rsp)
	movq	32(%rsp), %r8
	jmp	.L1341
.L2554:
	movq	%r11, 48(%rsp)
	movq	%rcx, %rdi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1337
.L1933:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	%rcx, 160(%rsp)
	movl	$2456, 288(%rsp)
	jmp	.L552
.L2553:
	movq	24(%rax), %r9
	movq	%rax, %rsi
	testq	%r9, %r9
	je	.L1333
	movq	16(%rax), %rcx
	incq	(%r9)
	incq	(%rcx)
	movq	(%rax), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	jne	.L1334
	movq	%r11, 64(%rsp)
	movq	%rsi, %rdi
	movq	%r10, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%r9, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r9
	movq	40(%rsp), %rcx
	movq	48(%rsp), %r8
	movq	56(%rsp), %r10
	movq	64(%rsp), %r11
.L1334:
	movq	168(%rsp), %rdx
	movq	%r9, %rsi
	movq	%rcx, %rdi
	movq	%r11, 64(%rsp)
	movq	%r10, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r9, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	__Pyx_PyObject_Call2Args
	movq	40(%rsp), %r9
	movq	32(%rsp), %rcx
	movq	%rax, 136(%rsp)
	movq	48(%rsp), %r8
	decq	(%r9)
	movq	56(%rsp), %r10
	movq	64(%rsp), %r11
	jne	.L1335
	movq	%r11, 56(%rsp)
	movq	%r9, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %rcx
	jmp	.L1335
.L1932:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 136(%rsp)
	movl	$2435, 288(%rsp)
	jmp	.L552
.L1931:
	movq	136(%rsp), %rax
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	%rax, 168(%rsp)
	movq	$0, 136(%rsp)
	movl	$2432, 288(%rsp)
	jmp	.L552
.L1329:
	movq	__pyx_n_s_math(%rip), %rdi
	movq	%r11, 48(%rsp)
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_GetBuiltinName
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	movq	%rax, 136(%rsp)
	movq	48(%rsp), %r11
.L1331:
	cmpq	$0, 136(%rsp)
	jne	.L1330
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movl	$2430, 288(%rsp)
	jmp	.L552
.L1328:
	movq	__pyx_n_s_math(%rip), %rdi
	leaq	__pyx_dict_cached_value.13375(%rip), %rdx
	movq	%r11, 48(%rsp)
	leaq	__pyx_dict_version.13374(%rip), %rsi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx__GetModuleGlobalName
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	%rax, 136(%rsp)
	movq	32(%rsp), %r8
	jmp	.L1331
.L1929:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 136(%rsp)
	movl	$2428, 288(%rsp)
	jmp	.L552
.L1928:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 136(%rsp)
	movl	$2411, 288(%rsp)
	jmp	.L552
.L1927:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 136(%rsp)
	movl	$2406, 288(%rsp)
	jmp	.L552
.L2552:
	movq	%r11, 48(%rsp)
	movq	%rcx, %rdi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1326
.L1926:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	%rcx, 200(%rsp)
	movq	$0, 136(%rsp)
	movl	$2403, 288(%rsp)
	jmp	.L552
.L2551:
	movq	24(%rax), %r9
	movq	%rax, %rdi
	testq	%r9, %r9
	je	.L1322
	movq	16(%rax), %rcx
	incq	(%r9)
	incq	(%rcx)
	movq	(%rax), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdi)
	je	.L2838
.L1323:
	movq	176(%rsp), %rdx
	movq	%r9, %rsi
	movq	%rcx, %rdi
	movq	%r11, 64(%rsp)
	movq	%r10, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r9, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	__Pyx_PyObject_Call2Args
	movq	40(%rsp), %r9
	movq	32(%rsp), %rcx
	movq	%rax, 184(%rsp)
	movq	48(%rsp), %r8
	decq	(%r9)
	movq	56(%rsp), %r10
	movq	64(%rsp), %r11
	jne	.L1324
	movq	%r11, 56(%rsp)
	movq	%r9, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %rcx
	jmp	.L1324
.L1925:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 184(%rsp)
	movl	$2382, 288(%rsp)
	jmp	.L552
.L2838:
	movq	%r11, 64(%rsp)
	movq	%r10, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%r9, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r9
	movq	40(%rsp), %rcx
	movq	48(%rsp), %r8
	movq	56(%rsp), %r10
	movq	64(%rsp), %r11
	jmp	.L1323
.L1320:
	movq	__pyx_int_0(%rip), %rax
	movq	%rax, 136(%rsp)
	incq	(%rax)
	jmp	.L1321
.L2550:
	movq	%r11, 56(%rsp)
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movl	%edx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movl	32(%rsp), %edx
	jmp	.L1319
.L1924:
	movl	$2373, 288(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	jmp	.L552
.L2031:
	movzbl	%dl, %edx
	jmp	.L1318
.L2549:
	movq	%r11, 48(%rsp)
	movq	%rsi, %rdi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1315
.L2548:
	movq	%r8, 32(%rsp)
	movq	%rsi, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1314
.L1923:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movl	$2370, 288(%rsp)
	jmp	.L552
.L2547:
	movq	%r8, 32(%rsp)
	movq	%rdx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1313
.L1922:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movl	$2367, 288(%rsp)
	jmp	.L552
.L1921:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movl	$2356, 288(%rsp)
	jmp	.L552
.L2546:
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1312
.L1920:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movl	$2353, 288(%rsp)
	jmp	.L552
.L1919:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movl	$2342, 288(%rsp)
	jmp	.L552
.L1918:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 184(%rsp)
	movl	$2339, 288(%rsp)
	jmp	.L552
.L1308:
	movq	__pyx_n_s_math(%rip), %rdi
	movq	%r11, 48(%rsp)
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_GetBuiltinName
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	movq	%rax, 136(%rsp)
	movq	48(%rsp), %r11
.L1310:
	cmpq	$0, 136(%rsp)
	jne	.L1309
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movl	$2337, 288(%rsp)
	jmp	.L552
.L1307:
	movq	__pyx_n_s_math(%rip), %rdi
	leaq	__pyx_dict_cached_value.13371(%rip), %rdx
	movq	%r11, 48(%rsp)
	leaq	__pyx_dict_version.13370(%rip), %rsi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx__GetModuleGlobalName
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	%rax, 136(%rsp)
	movq	32(%rsp), %r8
	jmp	.L1310
.L2545:
	movq	%r11, 48(%rsp)
	movq	%rcx, %rdi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1306
.L1916:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	%rcx, 184(%rsp)
	movq	$0, 136(%rsp)
	movl	$2334, 288(%rsp)
	jmp	.L552
.L2544:
	movq	%r11, 56(%rsp)
	movq	%rdx, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %rcx
	jmp	.L1305
.L2543:
	movq	24(%rax), %r9
	movq	%rax, %rdx
	testq	%r9, %r9
	je	.L1302
	movq	16(%rax), %rcx
	incq	(%r9)
	incq	(%rcx)
	movq	(%rax), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	jne	.L1303
	movq	%r11, 64(%rsp)
	movq	%rdx, %rdi
	movq	%r10, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%r9, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r9
	movq	40(%rsp), %rcx
	movq	48(%rsp), %r8
	movq	56(%rsp), %r10
	movq	64(%rsp), %r11
.L1303:
	movq	136(%rsp), %rdx
	movq	%r9, %rsi
	movq	%rcx, %rdi
	movq	%r11, 64(%rsp)
	movq	%r10, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r9, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	__Pyx_PyObject_Call2Args
	movq	40(%rsp), %r9
	movq	32(%rsp), %rcx
	movq	%rax, 192(%rsp)
	movq	48(%rsp), %r8
	decq	(%r9)
	movq	56(%rsp), %r10
	movq	64(%rsp), %r11
	jne	.L1304
	movq	%r11, 56(%rsp)
	movq	%r9, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %rcx
	jmp	.L1304
.L1915:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 192(%rsp)
	movl	$2304, 288(%rsp)
	jmp	.L552
.L2542:
	movq	%r8, 32(%rsp)
	movq	%rsi, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1301
.L1914:
	movq	192(%rsp), %rax
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	%rax, 136(%rsp)
	movq	$0, 192(%rsp)
	movl	$2301, 288(%rsp)
	jmp	.L552
.L1298:
	movq	__pyx_n_s_math(%rip), %rdi
	movq	%r11, 48(%rsp)
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_GetBuiltinName
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	movq	%rax, 192(%rsp)
	movq	48(%rsp), %r11
.L1300:
	cmpq	$0, 192(%rsp)
	jne	.L1299
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movl	$2299, 288(%rsp)
	jmp	.L552
.L1297:
	movq	__pyx_n_s_math(%rip), %rdi
	leaq	__pyx_dict_cached_value.13367(%rip), %rdx
	movq	%r11, 48(%rsp)
	leaq	__pyx_dict_version.13366(%rip), %rsi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx__GetModuleGlobalName
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	%rax, 192(%rsp)
	movq	32(%rsp), %r8
	jmp	.L1300
.L2541:
	movq	%r11, 48(%rsp)
	movq	%rcx, %rdi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1296
.L1912:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	%rcx, 192(%rsp)
	movl	$2296, 288(%rsp)
	jmp	.L552
.L2540:
	movq	%r11, 56(%rsp)
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %rcx
	jmp	.L1295
.L2539:
	movq	24(%rax), %r9
	movq	%rax, %rsi
	testq	%r9, %r9
	je	.L1292
	movq	16(%rax), %rcx
	incq	(%r9)
	incq	(%rcx)
	movq	(%rax), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	jne	.L1293
	movq	%r11, 64(%rsp)
	movq	%rsi, %rdi
	movq	%r10, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%r9, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r9
	movq	40(%rsp), %rcx
	movq	48(%rsp), %r8
	movq	56(%rsp), %r10
	movq	64(%rsp), %r11
.L1293:
	movq	136(%rsp), %rdx
	movq	%r9, %rsi
	movq	%rcx, %rdi
	movq	%r11, 64(%rsp)
	movq	%r10, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r9, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	__Pyx_PyObject_Call2Args
	movq	40(%rsp), %r9
	movq	32(%rsp), %rcx
	movq	%rax, 208(%rsp)
	movq	48(%rsp), %r8
	decq	(%r9)
	movq	56(%rsp), %r10
	movq	64(%rsp), %r11
	jne	.L1294
	movq	%r11, 56(%rsp)
	movq	%r9, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %rcx
	jmp	.L1294
.L1911:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 208(%rsp)
	movl	$2275, 288(%rsp)
	jmp	.L552
.L2538:
	movq	%r8, 32(%rsp)
	movq	%rdx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1291
.L1910:
	movq	208(%rsp), %rax
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	%rax, 136(%rsp)
	movq	$0, 208(%rsp)
	movl	$2272, 288(%rsp)
	jmp	.L552
.L1288:
	movq	__pyx_n_s_math(%rip), %rdi
	movq	%r11, 48(%rsp)
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_GetBuiltinName
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	movq	%rax, 208(%rsp)
	movq	48(%rsp), %r11
.L1290:
	cmpq	$0, 208(%rsp)
	jne	.L1289
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 192(%rsp)
	movl	$2270, 288(%rsp)
	jmp	.L552
.L1287:
	movq	__pyx_n_s_math(%rip), %rdi
	leaq	__pyx_dict_cached_value.13363(%rip), %rdx
	movq	%r11, 48(%rsp)
	leaq	__pyx_dict_version.13362(%rip), %rsi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx__GetModuleGlobalName
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	%rax, 208(%rsp)
	movq	32(%rsp), %r8
	jmp	.L1290
.L2537:
	movq	%r11, 48(%rsp)
	movq	%rdx, %rdi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r11
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1286
.L1284:
	movq	%r10, 40(%rsp)
	movl	$728, %edi
	movq	%r8, 32(%rsp)
	call	*PyLong_FromLong@GOTPCREL(%rip)
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	testq	%rax, %rax
	movq	%rax, %r11
	jne	.L1285
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 192(%rsp)
	movl	$2264, 288(%rsp)
	jmp	.L552
.L2536:
	movq	%r10, 48(%rsp)
	movq	%rsi, %rdi
	movq	%r8, 40(%rsp)
	movl	%edx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movl	32(%rsp), %edx
	jmp	.L1283
.L1907:
	movl	$2258, 288(%rsp)
	xorl	%r11d, %r11d
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 192(%rsp)
	jmp	.L552
.L2030:
	movzbl	%dl, %edx
	jmp	.L1282
.L2535:
	movq	%r8, 32(%rsp)
	movq	%rdx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1279
.L1906:
	movq	$0, 48(%rsp)
	xorl	%r11d, %r11d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movl	$2256, 288(%rsp)
	jmp	.L552
.L1905:
	movq	$0, 48(%rsp)
	xorl	%r11d, %r11d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movl	$2254, 288(%rsp)
	jmp	.L552
.L2534:
	movq	%r10, 40(%rsp)
	movq	%rcx, %rdi
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1278
.L1904:
	movq	$0, 48(%rsp)
	xorl	%r11d, %r11d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	%rcx, 208(%rsp)
	movq	$0, 192(%rsp)
	movl	$2241, 288(%rsp)
	jmp	.L552
.L2533:
	movq	%r10, 48(%rsp)
	movq	%r11, %rdi
	movq	%r8, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %rcx
	jmp	.L1277
.L2532:
	movq	24(%rax), %r9
	movq	%rax, %rdi
	testq	%r9, %r9
	je	.L1274
	movq	16(%rax), %rcx
	incq	(%r9)
	incq	(%rcx)
	movq	(%rax), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdi)
	jne	.L1275
	movq	%r11, 64(%rsp)
	movq	%r10, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%r9, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r9
	movq	40(%rsp), %rcx
	movq	48(%rsp), %r8
	movq	56(%rsp), %r10
	movq	64(%rsp), %r11
.L1275:
	movq	%r11, %rdx
	movq	%r9, %rsi
	movq	%rcx, %rdi
	movq	%r10, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	%r11, 48(%rsp)
	movq	%r9, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	__Pyx_PyObject_Call2Args
	movq	40(%rsp), %r9
	movq	32(%rsp), %rcx
	movq	%rax, 216(%rsp)
	movq	48(%rsp), %r11
	decq	(%r9)
	movq	56(%rsp), %r8
	movq	64(%rsp), %r10
	jne	.L1276
	movq	%r11, 56(%rsp)
	movq	%r9, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %rcx
	jmp	.L1276
.L1903:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movl	$2220, 288(%rsp)
	jmp	.L552
.L2531:
	movq	%r10, 40(%rsp)
	movq	%r11, %rdi
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1273
.L1902:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movl	$2217, 288(%rsp)
	jmp	.L552
.L1270:
	movq	__pyx_n_s_math(%rip), %rdi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_GetBuiltinName
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	movq	%rax, %r11
.L1272:
	testq	%r11, %r11
	jne	.L1271
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movl	$2215, 288(%rsp)
	jmp	.L552
.L1269:
	movq	__pyx_n_s_math(%rip), %rdi
	leaq	__pyx_dict_cached_value.13359(%rip), %rdx
	movq	%r10, 40(%rsp)
	leaq	__pyx_dict_version.13358(%rip), %rsi
	movq	%r8, 32(%rsp)
	call	__Pyx__GetModuleGlobalName
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	movq	%rax, %r11
	jmp	.L1272
.L1900:
	movq	$0, 48(%rsp)
	xorl	%r11d, %r11d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movl	$2213, 288(%rsp)
	jmp	.L552
.L2530:
	movq	%r10, 40(%rsp)
	movq	%r9, %rdi
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1268
.L1899:
	movq	$0, 48(%rsp)
	xorl	%r11d, %r11d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	%r9, 232(%rsp)
	movl	$2203, 288(%rsp)
	jmp	.L552
.L2529:
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%r9, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %r9
	jmp	.L1267
.L2528:
	movq	24(%rax), %r11
	movq	%rax, %rdx
	testq	%r11, %r11
	je	.L1264
	movq	16(%rax), %r9
	incq	(%r11)
	incq	(%r9)
	movq	(%rax), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	je	.L2839
.L1265:
	movq	216(%rsp), %rdx
	movq	%r11, %rsi
	movq	%r9, %rdi
	movq	%r10, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r11, 40(%rsp)
	movq	%r9, 32(%rsp)
	call	__Pyx_PyObject_Call2Args
	movq	40(%rsp), %r11
	movq	32(%rsp), %r9
	movq	%rax, 224(%rsp)
	movq	48(%rsp), %r8
	decq	(%r11)
	movq	56(%rsp), %r10
	jne	.L1266
	movq	%r10, 48(%rsp)
	movq	%r11, %rdi
	movq	%r8, 40(%rsp)
	movq	%r9, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %r9
	jmp	.L1266
.L1898:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 224(%rsp)
	movl	$2182, 288(%rsp)
	jmp	.L552
.L1262:
	movq	__pyx_int_0(%rip), %r11
	incq	(%r11)
	jmp	.L1263
.L2839:
	movq	%r10, 56(%rsp)
	movq	%rdx, %rdi
	movq	%r8, 48(%rsp)
	movq	%r9, 40(%rsp)
	movq	%r11, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r11
	movq	40(%rsp), %r9
	movq	48(%rsp), %r8
	movq	56(%rsp), %r10
	jmp	.L1265
.L2527:
	movq	%r10, 48(%rsp)
	movq	%rsi, %rdi
	movq	%r8, 40(%rsp)
	movl	%edx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movl	32(%rsp), %edx
	jmp	.L1261
.L1897:
	movl	$2173, 288(%rsp)
	xorl	%r11d, %r11d
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 224(%rsp)
	jmp	.L552
.L2029:
	movzbl	%dl, %edx
	jmp	.L1260
.L2526:
	movq	%r10, 40(%rsp)
	movq	%rdx, %rdi
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1257
.L2525:
	movq	%r8, 32(%rsp)
	movq	%rdx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1256
.L1896:
	movq	$0, 48(%rsp)
	xorl	%r11d, %r11d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 224(%rsp)
	movl	$2170, 288(%rsp)
	jmp	.L552
.L2524:
	movq	%r8, 32(%rsp)
	movq	%rsi, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1255
.L1895:
	movq	$0, 48(%rsp)
	xorl	%r11d, %r11d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 224(%rsp)
	movl	$2167, 288(%rsp)
	jmp	.L552
.L1894:
	movq	$0, 48(%rsp)
	xorl	%r11d, %r11d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 224(%rsp)
	movl	$2156, 288(%rsp)
	jmp	.L552
.L2523:
	movq	%r8, 32(%rsp)
	movq	%rdx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1254
.L1893:
	movq	$0, 48(%rsp)
	xorl	%r11d, %r11d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 224(%rsp)
	movl	$2153, 288(%rsp)
	jmp	.L552
.L1892:
	movq	$0, 48(%rsp)
	xorl	%r11d, %r11d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 224(%rsp)
	movl	$2142, 288(%rsp)
	jmp	.L552
.L2522:
	movq	%r10, 40(%rsp)
	movq	%r11, %rdi
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1253
.L1891:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 224(%rsp)
	movl	$2139, 288(%rsp)
	jmp	.L552
.L1250:
	movq	__pyx_n_s_math(%rip), %rdi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_GetBuiltinName
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	movq	%rax, %r11
.L1252:
	testq	%r11, %r11
	jne	.L1251
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 224(%rsp)
	movl	$2137, 288(%rsp)
	jmp	.L552
.L1249:
	movq	__pyx_n_s_math(%rip), %rdi
	leaq	__pyx_dict_cached_value.13355(%rip), %rdx
	movq	%r10, 40(%rsp)
	leaq	__pyx_dict_version.13354(%rip), %rsi
	movq	%r8, 32(%rsp)
	call	__Pyx__GetModuleGlobalName
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	movq	%rax, %r11
	jmp	.L1252
.L2521:
	movq	%r10, 40(%rsp)
	movq	%rcx, %rdi
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1248
.L1889:
	movq	$0, 48(%rsp)
	xorl	%r11d, %r11d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	%rcx, 224(%rsp)
	movl	$2134, 288(%rsp)
	jmp	.L552
.L2520:
	movq	%r10, 48(%rsp)
	movq	%r11, %rdi
	movq	%r8, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %rcx
	jmp	.L1247
.L2519:
	movq	24(%rax), %r9
	movq	%rax, %rsi
	testq	%r9, %r9
	je	.L1244
	movq	16(%rax), %rcx
	incq	(%r9)
	incq	(%rcx)
	movq	(%rax), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	je	.L2840
.L1245:
	movq	%r11, %rdx
	movq	%r9, %rsi
	movq	%rcx, %rdi
	movq	%r10, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	%r11, 48(%rsp)
	movq	%r9, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	__Pyx_PyObject_Call2Args
	movq	40(%rsp), %r9
	movq	32(%rsp), %rcx
	movq	%rax, 248(%rsp)
	movq	48(%rsp), %r11
	decq	(%r9)
	movq	56(%rsp), %r8
	movq	64(%rsp), %r10
	jne	.L1246
	movq	%r11, 56(%rsp)
	movq	%r9, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %rcx
	jmp	.L1246
.L1888:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movl	$2113, 288(%rsp)
	jmp	.L552
.L1239:
	movq	__pyx_n_s_math(%rip), %rdi
	leaq	__pyx_dict_cached_value.13351(%rip), %rdx
	movq	%r10, 40(%rsp)
	leaq	__pyx_dict_version.13350(%rip), %rsi
	movq	%r8, 32(%rsp)
	call	__Pyx__GetModuleGlobalName
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	movq	%rax, %r11
.L1242:
	testq	%r11, %r11
	jne	.L1241
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movl	$2108, 288(%rsp)
	jmp	.L552
.L2517:
	movq	%r10, 40(%rsp)
	movq	%rcx, %rdi
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1238
.L1885:
	movq	$0, 48(%rsp)
	xorl	%r11d, %r11d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	%rcx, 248(%rsp)
	movq	$0, 224(%rsp)
	movl	$2105, 288(%rsp)
	jmp	.L552
.L2516:
	movq	%r10, 48(%rsp)
	movq	%r11, %rdi
	movq	%r8, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %rcx
	jmp	.L1237
.L1887:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movl	$2110, 288(%rsp)
	jmp	.L552
.L1240:
	movq	__pyx_n_s_math(%rip), %rdi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_GetBuiltinName
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	movq	%rax, %r11
	jmp	.L1242
.L2518:
	movq	%r10, 40(%rsp)
	movq	%r11, %rdi
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1243
.L2840:
	movq	%r11, 64(%rsp)
	movq	%rsi, %rdi
	movq	%r10, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%r9, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r9
	movq	40(%rsp), %rcx
	movq	48(%rsp), %r8
	movq	56(%rsp), %r10
	movq	64(%rsp), %r11
	jmp	.L1245
.L2515:
	movq	24(%rax), %r9
	movq	%rax, %rdi
	testq	%r9, %r9
	je	.L1234
	movq	16(%rax), %rcx
	incq	(%r9)
	incq	(%rcx)
	movq	(%rax), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdi)
	je	.L2841
.L1235:
	movq	%r11, %rdx
	movq	%r9, %rsi
	movq	%rcx, %rdi
	movq	%r10, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	%r11, 48(%rsp)
	movq	%r9, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	__Pyx_PyObject_Call2Args
	movq	40(%rsp), %r9
	movq	32(%rsp), %rcx
	movq	%rax, 240(%rsp)
	movq	48(%rsp), %r11
	decq	(%r9)
	movq	56(%rsp), %r8
	movq	64(%rsp), %r10
	jne	.L1236
	movq	%r11, 56(%rsp)
	movq	%r9, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %rcx
	jmp	.L1236
.L1884:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movl	$2084, 288(%rsp)
	jmp	.L552
.L2841:
	movq	%r11, 64(%rsp)
	movq	%r10, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%r9, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r9
	movq	40(%rsp), %rcx
	movq	48(%rsp), %r8
	movq	56(%rsp), %r10
	movq	64(%rsp), %r11
	jmp	.L1235
.L2514:
	movq	%r10, 40(%rsp)
	movq	%r11, %rdi
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1233
.L1883:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movl	$2081, 288(%rsp)
	jmp	.L552
.L1230:
	movq	__pyx_n_s_math(%rip), %rdi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_GetBuiltinName
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	movq	%rax, %r11
.L1232:
	testq	%r11, %r11
	jne	.L1231
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movl	$2079, 288(%rsp)
	jmp	.L552
.L1229:
	movq	__pyx_n_s_math(%rip), %rdi
	leaq	__pyx_dict_cached_value.13347(%rip), %rdx
	movq	%r10, 40(%rsp)
	leaq	__pyx_dict_version.13346(%rip), %rsi
	movq	%r8, 32(%rsp)
	call	__Pyx__GetModuleGlobalName
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	movq	%rax, %r11
	jmp	.L1232
.L1881:
	movq	$0, 48(%rsp)
	xorl	%r11d, %r11d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movl	$2077, 288(%rsp)
	jmp	.L552
.L2513:
	movq	%r10, 40(%rsp)
	movq	%r9, %rdi
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1228
.L1880:
	movq	$0, 48(%rsp)
	xorl	%r11d, %r11d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	%r9, 272(%rsp)
	movl	$2053, 288(%rsp)
	jmp	.L552
.L2512:
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%r9, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %r9
	jmp	.L1227
.L2511:
	movq	24(%rax), %r11
	movq	%rax, %rdx
	testq	%r11, %r11
	je	.L1224
	movq	16(%rax), %r9
	incq	(%r11)
	incq	(%r9)
	movq	(%rax), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdx)
	je	.L2842
.L1225:
	movq	240(%rsp), %rdx
	movq	%r11, %rsi
	movq	%r9, %rdi
	movq	%r10, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r11, 40(%rsp)
	movq	%r9, 32(%rsp)
	call	__Pyx_PyObject_Call2Args
	movq	40(%rsp), %r11
	movq	32(%rsp), %r9
	movq	%rax, 256(%rsp)
	movq	48(%rsp), %r8
	decq	(%r11)
	movq	56(%rsp), %r10
	jne	.L1226
	movq	%r10, 48(%rsp)
	movq	%r11, %rdi
	movq	%r8, 40(%rsp)
	movq	%r9, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %r9
	jmp	.L1226
.L1879:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 256(%rsp)
	movl	$2032, 288(%rsp)
	jmp	.L552
.L2842:
	movq	%r10, 56(%rsp)
	movq	%rdx, %rdi
	movq	%r8, 48(%rsp)
	movq	%r9, 40(%rsp)
	movq	%r11, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r11
	movq	40(%rsp), %r9
	movq	48(%rsp), %r8
	movq	56(%rsp), %r10
	jmp	.L1225
.L1222:
	movq	__pyx_int_0(%rip), %r11
	incq	(%r11)
	jmp	.L1223
.L2510:
	movq	%r10, 48(%rsp)
	movq	%rsi, %rdi
	movq	%r8, 40(%rsp)
	movl	%edx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movl	32(%rsp), %edx
	jmp	.L1221
.L1878:
	movl	$2023, 288(%rsp)
	xorl	%r11d, %r11d
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 256(%rsp)
	jmp	.L552
.L2028:
	movzbl	%dl, %edx
	jmp	.L1220
.L2509:
	movq	%r10, 40(%rsp)
	movq	%rdx, %rdi
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1217
.L2508:
	movq	%r8, 32(%rsp)
	movq	%rdx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1216
.L1877:
	movq	$0, 48(%rsp)
	xorl	%r11d, %r11d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 256(%rsp)
	movl	$2020, 288(%rsp)
	jmp	.L552
.L2507:
	movq	%r8, 32(%rsp)
	movq	%rdx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1215
.L1876:
	movq	$0, 48(%rsp)
	xorl	%r11d, %r11d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 256(%rsp)
	movl	$2017, 288(%rsp)
	jmp	.L552
.L1875:
	movq	$0, 48(%rsp)
	xorl	%r11d, %r11d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 256(%rsp)
	movl	$2006, 288(%rsp)
	jmp	.L552
.L2506:
	movq	%r8, 32(%rsp)
	movq	%rdx, %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1214
.L1874:
	movq	$0, 48(%rsp)
	xorl	%r11d, %r11d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 256(%rsp)
	movl	$2003, 288(%rsp)
	jmp	.L552
.L1873:
	movq	$0, 48(%rsp)
	xorl	%r11d, %r11d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 256(%rsp)
	movl	$1992, 288(%rsp)
	jmp	.L552
.L2505:
	movq	%r10, 40(%rsp)
	movq	%r11, %rdi
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1213
.L1872:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movl	$1989, 288(%rsp)
	jmp	.L552
.L1210:
	movq	__pyx_n_s_math(%rip), %rdi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_GetBuiltinName
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	movq	%rax, %r11
.L1212:
	testq	%r11, %r11
	jne	.L1211
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movl	$1987, 288(%rsp)
	jmp	.L552
.L1209:
	movq	__pyx_n_s_math(%rip), %rdi
	leaq	__pyx_dict_cached_value.13343(%rip), %rdx
	movq	%r10, 40(%rsp)
	leaq	__pyx_dict_version.13342(%rip), %rsi
	movq	%r8, 32(%rsp)
	call	__Pyx__GetModuleGlobalName
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	movq	%rax, %r11
	jmp	.L1212
.L2504:
	movq	%r10, 40(%rsp)
	movq	%rcx, %rdi
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1208
.L1870:
	movq	$0, 48(%rsp)
	xorl	%r11d, %r11d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	%rcx, 256(%rsp)
	movq	$0, 272(%rsp)
	movl	$1984, 288(%rsp)
	jmp	.L552
.L2503:
	movq	%r10, 48(%rsp)
	movq	%r11, %rdi
	movq	%r8, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %rcx
	jmp	.L1207
.L2502:
	movq	24(%rax), %r9
	movq	%rax, %rsi
	testq	%r9, %r9
	je	.L1204
	movq	16(%rax), %rcx
	incq	(%r9)
	incq	(%rcx)
	movq	(%rax), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rsi)
	je	.L2843
.L1205:
	movq	%r11, %rdx
	movq	%r9, %rsi
	movq	%rcx, %rdi
	movq	%r10, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	%r11, 48(%rsp)
	movq	%r9, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	__Pyx_PyObject_Call2Args
	movq	40(%rsp), %r9
	movq	32(%rsp), %rcx
	movq	%rax, 264(%rsp)
	movq	48(%rsp), %r11
	decq	(%r9)
	movq	56(%rsp), %r8
	movq	64(%rsp), %r10
	jne	.L1206
	movq	%r11, 56(%rsp)
	movq	%r9, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %rcx
	jmp	.L1206
.L1869:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movl	$1963, 288(%rsp)
	jmp	.L552
.L2843:
	movq	%r11, 64(%rsp)
	movq	%rsi, %rdi
	movq	%r10, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%r9, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r9
	movq	40(%rsp), %rcx
	movq	48(%rsp), %r8
	movq	56(%rsp), %r10
	movq	64(%rsp), %r11
	jmp	.L1205
.L2501:
	movq	%r10, 40(%rsp)
	movq	%r11, %rdi
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1203
.L1868:
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movl	$1960, 288(%rsp)
	jmp	.L552
.L1200:
	movq	__pyx_n_s_math(%rip), %rdi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_GetBuiltinName
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	movq	%rax, %r11
.L1202:
	testq	%r11, %r11
	jne	.L1201
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movl	$1958, 288(%rsp)
	jmp	.L552
.L1199:
	movq	__pyx_n_s_math(%rip), %rdi
	leaq	__pyx_dict_cached_value.13339(%rip), %rdx
	movq	%r10, 40(%rsp)
	leaq	__pyx_dict_version.13338(%rip), %rsi
	movq	%r8, 32(%rsp)
	call	__Pyx__GetModuleGlobalName
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	movq	%rax, %r11
	jmp	.L1202
.L1866:
	movq	$0, 48(%rsp)
	xorl	%r11d, %r11d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movl	$1956, 288(%rsp)
	jmp	.L552
.L2500:
	movq	%r10, 40(%rsp)
	movq	%r9, %rdi
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1198
.L1865:
	movq	$0, 48(%rsp)
	xorl	%r11d, %r11d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	%r9, 280(%rsp)
	movl	$1932, 288(%rsp)
	jmp	.L552
.L2499:
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%r9, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %r9
	jmp	.L1197
.L2498:
	movq	24(%rax), %r11
	movq	%rax, %rdi
	testq	%r11, %r11
	je	.L1194
	movq	16(%rax), %r9
	incq	(%r11)
	incq	(%r9)
	movq	(%rax), %rax
	movq	%rax, 32(%rsp)
	decq	%rax
	movq	%rax, (%rdi)
	je	.L2844
.L1195:
	movq	264(%rsp), %rdx
	movq	%r11, %rsi
	movq	%r9, %rdi
	movq	%r10, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r11, 40(%rsp)
	movq	%r9, 32(%rsp)
	call	__Pyx_PyObject_Call2Args
	movq	40(%rsp), %r11
	movq	32(%rsp), %r9
	movq	48(%rsp), %r8
	movq	56(%rsp), %r10
	movq	%rax, %r14
	decq	(%r11)
	jne	.L1196
	movq	%r10, 48(%rsp)
	movq	%r11, %rdi
	movq	%r8, 40(%rsp)
	movq	%r9, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %r9
	jmp	.L1196
.L1864:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movl	$1911, 288(%rsp)
	jmp	.L552
.L2844:
	movq	%r10, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r9, 40(%rsp)
	movq	%r11, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r11
	movq	40(%rsp), %r9
	movq	48(%rsp), %r8
	movq	56(%rsp), %r10
	jmp	.L1195
.L1192:
	movq	__pyx_int_0(%rip), %r11
	incq	(%r11)
	jmp	.L1193
.L2497:
	movq	%r10, 40(%rsp)
	movq	%rsi, %rdi
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1191
.L1863:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r11d, %r11d
	movl	$1902, 288(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	jmp	.L552
.L2027:
	movzbl	%dl, %r14d
	jmp	.L1190
.L2496:
	movq	%r10, 40(%rsp)
	movq	%rdx, %rdi
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1187
.L2495:
	movq	%r8, 32(%rsp)
	movq	272(%rsp), %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1186
.L1862:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r11d, %r11d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movl	$1899, 288(%rsp)
	jmp	.L552
.L2494:
	movq	%r8, 32(%rsp)
	movq	264(%rsp), %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1185
.L1861:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r11d, %r11d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movl	$1896, 288(%rsp)
	jmp	.L552
.L1860:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r11d, %r11d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movl	$1885, 288(%rsp)
	jmp	.L552
.L2493:
	movq	%r8, 32(%rsp)
	movq	264(%rsp), %rdi
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1184
.L1859:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r11d, %r11d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movl	$1882, 288(%rsp)
	jmp	.L552
.L1858:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r11d, %r11d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movl	$1871, 288(%rsp)
	jmp	.L552
.L2492:
	movq	%r10, 40(%rsp)
	movq	%r11, %rdi
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1183
.L1857:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movl	$1868, 288(%rsp)
	jmp	.L552
.L1180:
	movq	__pyx_n_s_math(%rip), %rdi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_GetBuiltinName
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	movq	%rax, %r11
.L1182:
	testq	%r11, %r11
	jne	.L1181
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1866, 288(%rsp)
	jmp	.L552
.L1179:
	movq	__pyx_n_s_math(%rip), %rdi
	leaq	__pyx_dict_cached_value.13335(%rip), %rdx
	movq	%r10, 40(%rsp)
	leaq	__pyx_dict_version.13334(%rip), %rsi
	movq	%r8, 32(%rsp)
	call	__Pyx__GetModuleGlobalName
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	movq	%rax, %r11
	jmp	.L1182
.L2491:
	movq	%r10, 40(%rsp)
	movq	%rcx, %rdi
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1178
.L1855:
	movq	$0, 48(%rsp)
	movq	%rcx, %r14
	xorl	%r11d, %r11d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1863, 288(%rsp)
	jmp	.L552
.L2490:
	movq	%r10, 48(%rsp)
	movq	%r11, %rdi
	movq	%r8, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %rcx
	jmp	.L1177
.L2489:
	movq	24(%r14), %r9
	testq	%r9, %r9
	je	.L1174
	movq	16(%r14), %rcx
	incq	(%r9)
	incq	(%rcx)
	decq	(%r14)
	je	.L2845
.L1175:
	movq	%r11, %rdx
	movq	%r9, %rsi
	movq	%rcx, %rdi
	movq	%r10, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	%r11, 48(%rsp)
	movq	%r9, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	__Pyx_PyObject_Call2Args
	movq	40(%rsp), %r9
	movq	32(%rsp), %rcx
	movq	48(%rsp), %r11
	movq	56(%rsp), %r8
	movq	%rax, %r12
	decq	(%r9)
	movq	64(%rsp), %r10
	jne	.L1176
	movq	%r11, 56(%rsp)
	movq	%r9, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%rcx, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %rcx
	jmp	.L1176
.L1854:
	movq	$0, 48(%rsp)
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1842, 288(%rsp)
	jmp	.L552
.L2845:
	movq	%r11, 64(%rsp)
	movq	%r14, %rdi
	movq	%r10, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%r9, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r9
	movq	40(%rsp), %rcx
	movq	48(%rsp), %r8
	movq	56(%rsp), %r10
	movq	64(%rsp), %r11
	jmp	.L1175
.L2488:
	movq	%r10, 40(%rsp)
	movq	%r11, %rdi
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1173
.L1853:
	movq	$0, 48(%rsp)
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1839, 288(%rsp)
	jmp	.L552
.L1170:
	movq	__pyx_n_s_math(%rip), %rdi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_GetBuiltinName
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	movq	%rax, %r11
.L1172:
	testq	%r11, %r11
	jne	.L1171
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1837, 288(%rsp)
	jmp	.L552
.L1169:
	movq	__pyx_n_s_math(%rip), %rdi
	leaq	__pyx_dict_cached_value.13331(%rip), %rdx
	movq	%r10, 40(%rsp)
	leaq	__pyx_dict_version.13330(%rip), %rsi
	movq	%r8, 32(%rsp)
	call	__Pyx__GetModuleGlobalName
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	movq	%rax, %r11
	jmp	.L1172
.L2487:
	movq	%r10, 40(%rsp)
	movq	%r9, %rdi
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1168
.L1851:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	movq	%r9, %r12
	xorl	%r11d, %r11d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1834, 288(%rsp)
	jmp	.L552
.L2486:
	movq	%r10, 48(%rsp)
	movq	%r11, %rdi
	movq	%r8, 40(%rsp)
	movq	%r9, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %r9
	jmp	.L1167
.L2485:
	movq	24(%r12), %r14
	testq	%r14, %r14
	je	.L1164
	movq	16(%r12), %r9
	incq	(%r14)
	incq	(%r9)
	decq	(%r12)
	je	.L2846
.L1165:
	movq	%r11, %rdx
	movq	%r9, %rdi
	movq	%r14, %rsi
	movq	%r10, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r11, 40(%rsp)
	movq	%r9, 32(%rsp)
	call	__Pyx_PyObject_Call2Args
	decq	(%r14)
	movq	32(%rsp), %r9
	movq	40(%rsp), %r11
	movq	48(%rsp), %r8
	movq	%rax, %r15
	movq	56(%rsp), %r10
	jne	.L1166
	movq	%r11, 56(%rsp)
	movq	%r14, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%r9, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	40(%rsp), %r8
	movq	32(%rsp), %r9
	jmp	.L1166
.L1850:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1816, 288(%rsp)
	jmp	.L552
.L2484:
	movq	%r10, 40(%rsp)
	movq	%r11, %rdi
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1163
.L2846:
	movq	%r11, 56(%rsp)
	movq	%r12, %rdi
	movq	%r10, 48(%rsp)
	movq	%r8, 40(%rsp)
	movq	%r9, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	32(%rsp), %r9
	movq	40(%rsp), %r8
	movq	48(%rsp), %r10
	movq	56(%rsp), %r11
	jmp	.L1165
.L1849:
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1813, 288(%rsp)
	jmp	.L552
.L1160:
	movq	__pyx_n_s_math(%rip), %rdi
	movq	%r10, 40(%rsp)
	movq	%r8, 32(%rsp)
	call	__Pyx_GetBuiltinName
	movq	32(%rsp), %r8
	movq	40(%rsp), %r10
	movq	%rax, %r11
.L1162:
	testq	%r11, %r11
	jne	.L1161
	movq	$0, 48(%rsp)
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 280(%rsp)
	movl	$1811, 288(%rsp)
	jmp	.L552
.L1159:
	movq	__pyx_n_s_math(%rip), %rdi
	leaq	__pyx_dict_cached_value.13327(%rip), %rdx
	movq	%r10, 40(%rsp)
	leaq	__pyx_dict_version.13326(%rip), %rsi
	movq	%r8, 32(%rsp)
	call	__Pyx__GetModuleGlobalName
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	movq	%rax, %r11
	jmp	.L1162
.L2483:
	movq	%r10, 40(%rsp)
	movq	%r9, %rdi
	movq	%r8, 32(%rsp)
	call	*_Py_Dealloc@GOTPCREL(%rip)
	movq	40(%rsp), %r10
	movq	32(%rsp), %r8
	jmp	.L1158
	.cfi_endproc
.LFE159:
	.size	__pyx_pw_6output_1calc_x, .-__pyx_pw_6output_1calc_x
	.section	.text.unlikely.PyInit_output,"ax",@progbits
	.globl	PyInit_output
	.type	PyInit_output, @function
PyInit_output:
.LFB171:
	.cfi_startproc
	leaq	__pyx_moduledef(%rip), %rdi
	jmp	*PyModuleDef_Init@GOTPCREL(%rip)
	.cfi_endproc
.LFE171:
	.size	PyInit_output, .-PyInit_output
	.data
	.align 8
	.type	main_interpreter_id.13479, @object
	.size	main_interpreter_id.13479, 8
main_interpreter_id.13479:
	.quad	-1
	.local	__pyx_dict_cached_value.13655
	.comm	__pyx_dict_cached_value.13655,8,8
	.local	__pyx_dict_version.13654
	.comm	__pyx_dict_version.13654,8,8
	.local	__pyx_dict_cached_value.13411
	.comm	__pyx_dict_cached_value.13411,8,8
	.local	__pyx_dict_version.13410
	.comm	__pyx_dict_version.13410,8,8
	.local	__pyx_dict_cached_value.13407
	.comm	__pyx_dict_cached_value.13407,8,8
	.local	__pyx_dict_version.13406
	.comm	__pyx_dict_version.13406,8,8
	.local	__pyx_dict_cached_value.13403
	.comm	__pyx_dict_cached_value.13403,8,8
	.local	__pyx_dict_version.13402
	.comm	__pyx_dict_version.13402,8,8
	.local	__pyx_dict_cached_value.13399
	.comm	__pyx_dict_cached_value.13399,8,8
	.local	__pyx_dict_version.13398
	.comm	__pyx_dict_version.13398,8,8
	.local	__pyx_dict_cached_value.13395
	.comm	__pyx_dict_cached_value.13395,8,8
	.local	__pyx_dict_version.13394
	.comm	__pyx_dict_version.13394,8,8
	.local	__pyx_dict_cached_value.13391
	.comm	__pyx_dict_cached_value.13391,8,8
	.local	__pyx_dict_version.13390
	.comm	__pyx_dict_version.13390,8,8
	.local	__pyx_dict_cached_value.13387
	.comm	__pyx_dict_cached_value.13387,8,8
	.local	__pyx_dict_version.13386
	.comm	__pyx_dict_version.13386,8,8
	.local	__pyx_dict_cached_value.13383
	.comm	__pyx_dict_cached_value.13383,8,8
	.local	__pyx_dict_version.13382
	.comm	__pyx_dict_version.13382,8,8
	.local	__pyx_dict_cached_value.13379
	.comm	__pyx_dict_cached_value.13379,8,8
	.local	__pyx_dict_version.13378
	.comm	__pyx_dict_version.13378,8,8
	.local	__pyx_dict_cached_value.13375
	.comm	__pyx_dict_cached_value.13375,8,8
	.local	__pyx_dict_version.13374
	.comm	__pyx_dict_version.13374,8,8
	.local	__pyx_dict_cached_value.13371
	.comm	__pyx_dict_cached_value.13371,8,8
	.local	__pyx_dict_version.13370
	.comm	__pyx_dict_version.13370,8,8
	.local	__pyx_dict_cached_value.13367
	.comm	__pyx_dict_cached_value.13367,8,8
	.local	__pyx_dict_version.13366
	.comm	__pyx_dict_version.13366,8,8
	.local	__pyx_dict_cached_value.13363
	.comm	__pyx_dict_cached_value.13363,8,8
	.local	__pyx_dict_version.13362
	.comm	__pyx_dict_version.13362,8,8
	.local	__pyx_dict_cached_value.13359
	.comm	__pyx_dict_cached_value.13359,8,8
	.local	__pyx_dict_version.13358
	.comm	__pyx_dict_version.13358,8,8
	.local	__pyx_dict_cached_value.13355
	.comm	__pyx_dict_cached_value.13355,8,8
	.local	__pyx_dict_version.13354
	.comm	__pyx_dict_version.13354,8,8
	.local	__pyx_dict_cached_value.13351
	.comm	__pyx_dict_cached_value.13351,8,8
	.local	__pyx_dict_version.13350
	.comm	__pyx_dict_version.13350,8,8
	.local	__pyx_dict_cached_value.13347
	.comm	__pyx_dict_cached_value.13347,8,8
	.local	__pyx_dict_version.13346
	.comm	__pyx_dict_version.13346,8,8
	.local	__pyx_dict_cached_value.13343
	.comm	__pyx_dict_cached_value.13343,8,8
	.local	__pyx_dict_version.13342
	.comm	__pyx_dict_version.13342,8,8
	.local	__pyx_dict_cached_value.13339
	.comm	__pyx_dict_cached_value.13339,8,8
	.local	__pyx_dict_version.13338
	.comm	__pyx_dict_version.13338,8,8
	.local	__pyx_dict_cached_value.13335
	.comm	__pyx_dict_cached_value.13335,8,8
	.local	__pyx_dict_version.13334
	.comm	__pyx_dict_version.13334,8,8
	.local	__pyx_dict_cached_value.13331
	.comm	__pyx_dict_cached_value.13331,8,8
	.local	__pyx_dict_version.13330
	.comm	__pyx_dict_version.13330,8,8
	.local	__pyx_dict_cached_value.13327
	.comm	__pyx_dict_cached_value.13327,8,8
	.local	__pyx_dict_version.13326
	.comm	__pyx_dict_version.13326,8,8
	.local	__pyx_dict_cached_value.13323
	.comm	__pyx_dict_cached_value.13323,8,8
	.local	__pyx_dict_version.13322
	.comm	__pyx_dict_version.13322,8,8
	.local	__pyx_dict_cached_value.13319
	.comm	__pyx_dict_cached_value.13319,8,8
	.local	__pyx_dict_version.13318
	.comm	__pyx_dict_version.13318,8,8
	.local	__pyx_dict_cached_value.13315
	.comm	__pyx_dict_cached_value.13315,8,8
	.local	__pyx_dict_version.13314
	.comm	__pyx_dict_version.13314,8,8
	.local	__pyx_dict_cached_value.13311
	.comm	__pyx_dict_cached_value.13311,8,8
	.local	__pyx_dict_version.13310
	.comm	__pyx_dict_version.13310,8,8
	.local	__pyx_dict_cached_value.13307
	.comm	__pyx_dict_cached_value.13307,8,8
	.local	__pyx_dict_version.13306
	.comm	__pyx_dict_version.13306,8,8
	.local	__pyx_dict_cached_value.13303
	.comm	__pyx_dict_cached_value.13303,8,8
	.local	__pyx_dict_version.13302
	.comm	__pyx_dict_version.13302,8,8
	.local	__pyx_dict_cached_value.13299
	.comm	__pyx_dict_cached_value.13299,8,8
	.local	__pyx_dict_version.13298
	.comm	__pyx_dict_version.13298,8,8
	.local	__pyx_dict_cached_value.13287
	.comm	__pyx_dict_cached_value.13287,8,8
	.local	__pyx_dict_version.13286
	.comm	__pyx_dict_version.13286,8,8
	.local	__pyx_dict_cached_value.13285
	.comm	__pyx_dict_cached_value.13285,8,8
	.local	__pyx_dict_version.13284
	.comm	__pyx_dict_version.13284,8,8
	.local	__pyx_dict_cached_value.13283
	.comm	__pyx_dict_cached_value.13283,8,8
	.local	__pyx_dict_version.13282
	.comm	__pyx_dict_version.13282,8,8
	.local	__pyx_dict_cached_value.13281
	.comm	__pyx_dict_cached_value.13281,8,8
	.local	__pyx_dict_version.13280
	.comm	__pyx_dict_version.13280,8,8
	.local	__pyx_dict_cached_value.13278
	.comm	__pyx_dict_cached_value.13278,8,8
	.local	__pyx_dict_version.13277
	.comm	__pyx_dict_version.13277,8,8
	.section	.data.rel.local,"aw"
	.align 32
	.type	__pyx_string_tab, @object
	.size	__pyx_string_tab, 600
__pyx_string_tab:
	.quad	__pyx_n_s_calc_x
	.quad	__pyx_k_calc_x
	.quad	7
	.quad	0
	.byte	0
	.byte	1
	.byte	1
	.zero	5
	.quad	__pyx_n_s_cline_in_traceback
	.quad	__pyx_k_cline_in_traceback
	.quad	19
	.quad	0
	.byte	0
	.byte	1
	.byte	1
	.zero	5
	.quad	__pyx_n_s_import
	.quad	__pyx_k_import
	.quad	11
	.quad	0
	.byte	0
	.byte	1
	.byte	1
	.zero	5
	.quad	__pyx_n_s_main
	.quad	__pyx_k_main
	.quad	9
	.quad	0
	.byte	0
	.byte	1
	.byte	1
	.zero	5
	.quad	__pyx_n_s_math
	.quad	__pyx_k_math
	.quad	5
	.quad	0
	.byte	0
	.byte	1
	.byte	1
	.zero	5
	.quad	__pyx_n_s_max
	.quad	__pyx_k_max
	.quad	4
	.quad	0
	.byte	0
	.byte	1
	.byte	1
	.zero	5
	.quad	__pyx_n_s_min
	.quad	__pyx_k_min
	.quad	4
	.quad	0
	.byte	0
	.byte	1
	.byte	1
	.zero	5
	.quad	__pyx_n_s_name
	.quad	__pyx_k_name
	.quad	9
	.quad	0
	.byte	0
	.byte	1
	.byte	1
	.zero	5
	.quad	__pyx_n_s_output
	.quad	__pyx_k_output
	.quad	7
	.quad	0
	.byte	0
	.byte	1
	.byte	1
	.zero	5
	.quad	__pyx_kp_s_output_pyx
	.quad	__pyx_k_output_pyx
	.quad	11
	.quad	0
	.byte	0
	.byte	1
	.byte	0
	.zero	5
	.quad	__pyx_n_s_prod
	.quad	__pyx_k_prod
	.quad	5
	.quad	0
	.byte	0
	.byte	1
	.byte	1
	.zero	5
	.quad	__pyx_n_s_sum
	.quad	__pyx_k_sum
	.quad	4
	.quad	0
	.byte	0
	.byte	1
	.byte	1
	.zero	5
	.quad	__pyx_n_s_test
	.quad	__pyx_k_test
	.quad	9
	.quad	0
	.byte	0
	.byte	1
	.byte	1
	.zero	5
	.quad	__pyx_n_s_x
	.quad	__pyx_k_x
	.quad	2
	.quad	0
	.byte	0
	.byte	1
	.byte	1
	.zero	5
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.byte	0
	.byte	0
	.zero	5
	.align 32
	.type	__pyx_moduledef, @object
	.size	__pyx_moduledef, 104
__pyx_moduledef:
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC18
	.quad	0
	.quad	0
	.quad	__pyx_methods
	.quad	__pyx_moduledef_slots
	.quad	0
	.quad	0
	.quad	0
	.align 32
	.type	__pyx_moduledef_slots, @object
	.size	__pyx_moduledef_slots, 48
__pyx_moduledef_slots:
	.long	1
	.zero	4
	.quad	__pyx_pymod_create
	.long	2
	.zero	4
	.quad	__pyx_pymod_exec_output
	.long	0
	.zero	4
	.quad	0
	.local	__pyx_methods
	.comm	__pyx_methods,32,32
	.section	.rodata.str1.1
.LC36:
	.string	"calc_x"
	.section	.data.rel.local
	.align 32
	.type	__pyx_mdef_6output_1calc_x, @object
	.size	__pyx_mdef_6output_1calc_x, 32
__pyx_mdef_6output_1calc_x:
	.quad	.LC36
	.quad	__pyx_pw_6output_1calc_x
	.long	4
	.zero	4
	.quad	0
	.local	__pyx_int_535767221581
	.comm	__pyx_int_535767221581,8,8
	.local	__pyx_int_67374456587
	.comm	__pyx_int_67374456587,8,8
	.local	__pyx_int_55700720745
	.comm	__pyx_int_55700720745,8,8
	.local	__pyx_int_48993801750
	.comm	__pyx_int_48993801750,8,8
	.local	__pyx_int_37675211133
	.comm	__pyx_int_37675211133,8,8
	.local	__pyx_int_30979330271
	.comm	__pyx_int_30979330271,8,8
	.local	__pyx_int_4217206544
	.comm	__pyx_int_4217206544,8,8
	.local	__pyx_int_3879782983
	.comm	__pyx_int_3879782983,8,8
	.local	__pyx_int_2388317100
	.comm	__pyx_int_2388317100,8,8
	.local	__pyx_int_1736671104
	.comm	__pyx_int_1736671104,8,8
	.local	__pyx_int_1466502782
	.comm	__pyx_int_1466502782,8,8
	.local	__pyx_int_1176227742
	.comm	__pyx_int_1176227742,8,8
	.local	__pyx_int_196905722
	.comm	__pyx_int_196905722,8,8
	.local	__pyx_int_12998225
	.comm	__pyx_int_12998225,8,8
	.local	__pyx_int_8599772
	.comm	__pyx_int_8599772,8,8
	.local	__pyx_int_886515
	.comm	__pyx_int_886515,8,8
	.local	__pyx_int_664609
	.comm	__pyx_int_664609,8,8
	.local	__pyx_int_580431
	.comm	__pyx_int_580431,8,8
	.local	__pyx_int_522179
	.comm	__pyx_int_522179,8,8
	.local	__pyx_int_289600
	.comm	__pyx_int_289600,8,8
	.local	__pyx_int_198398
	.comm	__pyx_int_198398,8,8
	.local	__pyx_int_49769
	.comm	__pyx_int_49769,8,8
	.local	__pyx_int_46058
	.comm	__pyx_int_46058,8,8
	.local	__pyx_int_44586
	.comm	__pyx_int_44586,8,8
	.local	__pyx_int_35056
	.comm	__pyx_int_35056,8,8
	.local	__pyx_int_25736
	.comm	__pyx_int_25736,8,8
	.local	__pyx_int_19219
	.comm	__pyx_int_19219,8,8
	.local	__pyx_int_18956
	.comm	__pyx_int_18956,8,8
	.local	__pyx_int_14698
	.comm	__pyx_int_14698,8,8
	.local	__pyx_int_3462
	.comm	__pyx_int_3462,8,8
	.local	__pyx_int_2007
	.comm	__pyx_int_2007,8,8
	.local	__pyx_int_826
	.comm	__pyx_int_826,8,8
	.local	__pyx_int_689
	.comm	__pyx_int_689,8,8
	.local	__pyx_int_547
	.comm	__pyx_int_547,8,8
	.local	__pyx_int_254
	.comm	__pyx_int_254,8,8
	.local	__pyx_int_230
	.comm	__pyx_int_230,8,8
	.local	__pyx_int_220
	.comm	__pyx_int_220,8,8
	.local	__pyx_int_211
	.comm	__pyx_int_211,8,8
	.local	__pyx_int_208
	.comm	__pyx_int_208,8,8
	.local	__pyx_int_200
	.comm	__pyx_int_200,8,8
	.local	__pyx_int_193
	.comm	__pyx_int_193,8,8
	.local	__pyx_int_161
	.comm	__pyx_int_161,8,8
	.local	__pyx_int_159
	.comm	__pyx_int_159,8,8
	.local	__pyx_int_151
	.comm	__pyx_int_151,8,8
	.local	__pyx_int_139
	.comm	__pyx_int_139,8,8
	.local	__pyx_int_131
	.comm	__pyx_int_131,8,8
	.local	__pyx_int_120
	.comm	__pyx_int_120,8,8
	.local	__pyx_int_116
	.comm	__pyx_int_116,8,8
	.local	__pyx_int_102
	.comm	__pyx_int_102,8,8
	.local	__pyx_int_95
	.comm	__pyx_int_95,8,8
	.local	__pyx_int_92
	.comm	__pyx_int_92,8,8
	.local	__pyx_int_86
	.comm	__pyx_int_86,8,8
	.local	__pyx_int_84
	.comm	__pyx_int_84,8,8
	.local	__pyx_int_80
	.comm	__pyx_int_80,8,8
	.local	__pyx_int_53
	.comm	__pyx_int_53,8,8
	.local	__pyx_int_15
	.comm	__pyx_int_15,8,8
	.local	__pyx_int_14
	.comm	__pyx_int_14,8,8
	.local	__pyx_int_13
	.comm	__pyx_int_13,8,8
	.local	__pyx_int_12
	.comm	__pyx_int_12,8,8
	.local	__pyx_int_11
	.comm	__pyx_int_11,8,8
	.local	__pyx_int_10
	.comm	__pyx_int_10,8,8
	.local	__pyx_int_9
	.comm	__pyx_int_9,8,8
	.local	__pyx_int_8
	.comm	__pyx_int_8,8,8
	.local	__pyx_int_7
	.comm	__pyx_int_7,8,8
	.local	__pyx_int_6
	.comm	__pyx_int_6,8,8
	.local	__pyx_int_5
	.comm	__pyx_int_5,8,8
	.local	__pyx_int_4
	.comm	__pyx_int_4,8,8
	.local	__pyx_int_3
	.comm	__pyx_int_3,8,8
	.local	__pyx_int_2
	.comm	__pyx_int_2,8,8
	.local	__pyx_int_1
	.comm	__pyx_int_1,8,8
	.local	__pyx_int_0
	.comm	__pyx_int_0,8,8
	.local	__pyx_n_s_x
	.comm	__pyx_n_s_x,8,8
	.local	__pyx_n_s_test
	.comm	__pyx_n_s_test,8,8
	.local	__pyx_n_s_sum
	.comm	__pyx_n_s_sum,8,8
	.local	__pyx_n_s_prod
	.comm	__pyx_n_s_prod,8,8
	.local	__pyx_kp_s_output_pyx
	.comm	__pyx_kp_s_output_pyx,8,8
	.local	__pyx_n_s_output
	.comm	__pyx_n_s_output,8,8
	.local	__pyx_n_s_name
	.comm	__pyx_n_s_name,8,8
	.local	__pyx_n_s_min
	.comm	__pyx_n_s_min,8,8
	.local	__pyx_n_s_max
	.comm	__pyx_n_s_max,8,8
	.local	__pyx_n_s_math
	.comm	__pyx_n_s_math,8,8
	.local	__pyx_n_s_main
	.comm	__pyx_n_s_main,8,8
	.local	__pyx_n_s_import
	.comm	__pyx_n_s_import,8,8
	.local	__pyx_n_s_cline_in_traceback
	.comm	__pyx_n_s_cline_in_traceback,8,8
	.local	__pyx_n_s_calc_x
	.comm	__pyx_n_s_calc_x,8,8
	.section	.rodata
	.align 16
	.type	__pyx_k_cline_in_traceback, @object
	.size	__pyx_k_cline_in_traceback, 19
__pyx_k_cline_in_traceback:
	.string	"cline_in_traceback"
	.align 8
	.type	__pyx_k_output_pyx, @object
	.size	__pyx_k_output_pyx, 11
__pyx_k_output_pyx:
	.string	"output.pyx"
	.type	__pyx_k_output, @object
	.size	__pyx_k_output, 7
__pyx_k_output:
	.string	"output"
	.align 8
	.type	__pyx_k_import, @object
	.size	__pyx_k_import, 11
__pyx_k_import:
	.string	"__import__"
	.type	__pyx_k_calc_x, @object
	.size	__pyx_k_calc_x, 7
__pyx_k_calc_x:
	.string	"calc_x"
	.align 8
	.type	__pyx_k_test, @object
	.size	__pyx_k_test, 9
__pyx_k_test:
	.string	"__test__"
	.type	__pyx_k_prod, @object
	.size	__pyx_k_prod, 5
__pyx_k_prod:
	.string	"prod"
	.align 8
	.type	__pyx_k_name, @object
	.size	__pyx_k_name, 9
__pyx_k_name:
	.string	"__name__"
	.type	__pyx_k_math, @object
	.size	__pyx_k_math, 5
__pyx_k_math:
	.string	"math"
	.align 8
	.type	__pyx_k_main, @object
	.size	__pyx_k_main, 9
__pyx_k_main:
	.string	"__main__"
	.type	__pyx_k_sum, @object
	.size	__pyx_k_sum, 4
__pyx_k_sum:
	.string	"sum"
	.type	__pyx_k_min, @object
	.size	__pyx_k_min, 4
__pyx_k_min:
	.string	"min"
	.type	__pyx_k_max, @object
	.size	__pyx_k_max, 4
__pyx_k_max:
	.string	"max"
	.type	__pyx_k_x, @object
	.size	__pyx_k_x, 2
__pyx_k_x:
	.string	"x"
	.local	__pyx_builtin_max
	.comm	__pyx_builtin_max,8,8
	.local	__pyx_builtin_min
	.comm	__pyx_builtin_min,8,8
	.local	__pyx_builtin_sum
	.comm	__pyx_builtin_sum,8,8
	.globl	__pyx_module_is_main_output
	.bss
	.align 4
	.type	__pyx_module_is_main_output, @object
	.size	__pyx_module_is_main_output, 4
__pyx_module_is_main_output:
	.zero	4
	.local	__pyx_code_cache
	.comm	__pyx_code_cache,16,16
	.local	__pyx_pyframe_localsplus_offset
	.comm	__pyx_pyframe_localsplus_offset,8,8
	.local	__pyx_empty_bytes
	.comm	__pyx_empty_bytes,8,8
	.local	__pyx_empty_tuple
	.comm	__pyx_empty_tuple,8,8
	.local	__pyx_cython_runtime
	.comm	__pyx_cython_runtime,8,8
	.local	__pyx_b
	.comm	__pyx_b,8,8
	.local	__pyx_d
	.comm	__pyx_d,8,8
	.local	__pyx_m
	.comm	__pyx_m,8,8
	.ident	"GCC: (GNU) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
