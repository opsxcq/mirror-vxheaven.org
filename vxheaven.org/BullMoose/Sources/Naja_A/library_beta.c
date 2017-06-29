#define max(a,b) ((a > b) ? a : b)
#define min(a,b) ((a < b) ? a : b)
#define mfl(s) (QuickFill(s))
int QuickFill(char *str)
{
	while(*str) {
		*str ^= *str;
		*++str;
	}
	return 0;
}
int EncryptString(char *dest,char *src)
{
	while(*src) {
		*dest = EncryptChr(*src);
		*++dest; *++src;
	}
	*dest = 0;
	return 0;
}
int DecryptString(char *dest,char *src)
{
	while(*src) {
		*dest = DecryptChr(*src);
		*++dest; *++src;
	}
	*dest = 0;
	return 0;
}
int EncryptChr(int ch) {return ch+1;}
int DecryptChr(int ch) {return ch-1;}
