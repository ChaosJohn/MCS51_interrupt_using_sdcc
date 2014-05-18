MCS51_interrupt_using_sdcc
==========================

Linux下用sdcc开发51单片机，该示例是中断处理程序

写了一个Makefile，需要用到的工具有：
  [sdcc]
  [objcopy]
  [stcisp  (我会提供源代码供编译)]
  
这个Makefile有一个不完善的地方，在于只能适用于单文件C工程，如果工程内有多个C文件，则要适当修改Makefile


Chaos John
