#DEFINE PISODIO_NoError					0
#DEFINE PISODIO_DriverOpenError			1
#DEFINE PISODIO_DriverNoOpen			2
#DEFINE PISODIO_GetDriverVersionError	3
#DEFINE PISODIO_InstallIrqError			4
#DEFINE PISODIO_ClearIntCountError		5
#DEFINE PISODIO_GetIntCountError		6
#DEFINE PISODIO_RegisterApcError		7
#DEFINE PISODIO_RemoveIrqError			8
#DEFINE PISODIO_FindBoardError			9
#DEFINE PISODIO_ExceedBoardNumber		10
#DEFINE PISODIO_ResetError				11

* to trigger a interrupt when high -> low
#DEFINE PISODIO_ActiveLow	0
* to trigger a interrupt when low -> high
#DEFINE PISODIO_ActiveHigh	1


* ID
#DEFINE PISO_P16R16U                  0x18000000	&& for PISO-P16R16U
#DEFINE PISO_C64                      0x800800     && for PISO-C64
#DEFINE PISO_P64                      0x800810     && for PISO-P64
#DEFINE PISO_A64                      0x800850     && for PISO-A64
#DEFINE PISO_P32C32                   0x800820     && for PISO-P32C32 
#DEFINE PISO_P32A32                   0x800870     && for PISO-P32A32 
#DEFINE PISO_P8R8                     0x800830   && for PISO-P8R8
#DEFINE PISO_P8SSR8AC                 0x800830     && for PISO-P8SSR8AC
#DEFINE PISO_P8SSR8DC                 0x800830     && for PISO-P8SSR8DC
#DEFINE PISO_730                      0x800840     && for PISO-730
#DEFINE PISO_730A                     0x800880     && for PISO-730A

* The Test functions
DECLARE INTEGER PISODIO_ShortSub IN PISODIO.DLL INTEGER, INTEGER
DECLARE SINGLE  PISODIO_FloatSub IN PISODIO.DLL SINGLE, SINGLE
DECLARE INTEGER PISODIO_GetDllVersion IN PISODIO.DLL

* The Driver functions
DECLARE INTEGER PISODIO_DriverInit IN PISODIO.DLL
DECLARE PISODIO_DriverClose IN PISODIO.DLL
DECLARE INTEGER PISODIO_SearchCard IN PISODIO.DLL INTEGER@, LONG
DECLARE INTEGER PISODIO_GetDriverVersion IN PISODIO.DLL INTEGER@
DECLARE INTEGER PISODIO_GetConfigAddressSpace IN PISODIO.DLL ;
	INTEGER, LONG@, INTEGER@, INTEGER@, INTEGER@, INTEGER@, INTEGER@, INTEGER@

DECLARE INTEGER PISODIO_ActiveBoard IN PISODIO.DLL INTEGER
DECLARE INTEGER PISODIO_WhichBoardActive IN PISODIO.DLL

* DIO functions
DECLARE PISODIO_OutputByte IN PISODIO.DLL LONG, INTEGER
DECLARE PISODIO_OutputWord IN PISODIO.DLL LONG, LONG
DECLARE INTEGER PISODIO_InputByte IN PISODIO.DLL LONG
DECLARE LONG PISODIO_InputWord IN PISODIO.DLL LONG

* Interrupt functions
DECLARE INTEGER PISODIO_IntInstall IN PISODIO.DLL ;
	INTEGER, LONG, INTEGER, INTEGER
DECLARE INTEGER PISODIO_IntRemove IN PISODIO.DLL
DECLARE INTEGER PISODIO_IntGetCount IN PISODIO.DLL LONG
DECLARE INTEGER PISODIO_IntResetCount IN PISODIO.DLL