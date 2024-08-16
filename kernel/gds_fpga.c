#include <linux/sched.h>
#include <linux/uaccess.h>
#include <linux/syscalls.h>
#include <linux/types.h>
#include <asm/ptrace.h>

/*
 * sys_gds_fpga - setup restartable sequences for caller thread.
 */
SYSCALL_DEFINE2(gds_fpga, int, opcode, void *, ptr)
{
    printk(KERN_INFO "syscall gds_fpga\n");
    return 0;
}
