#include <stdio.h>
#include <winsock2.h>

static void usage(void *p);
const int main(int argc, char *argv[])
{
	if(!(argc-1)) usage(argv[0]);
	puts("Querying Server...");
	
	
	WSADATA wData;
	WSAStartup(MAKEWORD(2,2),&wData);
	
	struct hostent *hs;
	struct in_addr addr[25];
	memset(addr,0,sizeof(addr));
	hs = gethostbyname(argv[1]);
	if(!hs) {
		perror("Invalid host name");
		return 1;
	}
	short i, z;
	for(i=0; i<sizeof(addr); i++) {
		if(hs->h_addr_list[i]==NULL) {
			z = i; break;
		} else addr[i].s_addr = *(u_long *) hs->h_addr_list[i];
	}
	puts("List of addresses:\n");
	for(i=0; i<z; i++) printf("\t%s\n",inet_ntoa(addr[i]));
	return 0;
}
static void usage(void *p)
{
	fprintf(stderr,"DNS Lookup Tool by Atomical/Bull Moose.\n\tUsage: %s [Host]\n",p);
	ExitProcess(1);
}
