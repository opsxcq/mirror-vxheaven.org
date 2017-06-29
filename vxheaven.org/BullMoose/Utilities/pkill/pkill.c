#define WIN32_LEAN_AND_MEAN
#include <stdio.h>
#include <windows.h>
#include <tlhelp32.h>

static void usage(char*);
const int main(int argc, char *argv[])
{
	if(!(argc-1)) usage(argv[0]);
	printf("%s: Initializing...\n", argv[0]);

	HANDLE hSnap, hProc;
	PROCESSENTRY32 pe32;

	hSnap = CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
	Process32First(hSnap, &pe32);

	if(strcmp(pe32.szExeFile, argv[1])==0) {
		hProc = OpenProcess(PROCESS_TERMINATE, 0, pe32.th32ProcessID);
		if(TerminateProcess(hProc, 1)) printf("\t%s (%d) -> Successfully Terminated!\n", pe32.szExeFile, pe32.th32ProcessID);
		else printf("\t%s (%d) -> Termination Failed!\n", pe32.szExeFile, pe32.th32ProcessID);
		CloseHandle(hProc);
	}

	while(Process32Next(hSnap, &pe32)) {
		if(strcmp(pe32.szExeFile, argv[1])==0) {
			hProc = OpenProcess(PROCESS_TERMINATE, 0, pe32.th32ProcessID);
			if(TerminateProcess(hProc, 1)) printf("\t%s (%d) -> Successfully Terminated!\n", pe32.szExeFile, pe32.th32ProcessID);
			else printf("\t%s (%d) -> Termination Failed!\n", pe32.szExeFile, pe32.th32ProcessID);
			CloseHandle(hProc);
		}
	}
	CloseHandle(hSnap);
	printf("%s: Uninitializing...\n", argv[0]);
	return 0;
}
static void usage(char *p)
{
	printf("%s (Process KILLer) by Bull Moose/Atomical.\nUsage: %s [Process Name]\n", p, p);
	ExitProcess(1);
}
