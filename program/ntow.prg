*-------------------------------------------------------
* Project.........: BASIS.PJX
* File............: NTOW.PRG
* Module/Procedure: NTOW()()
* Called by.......: <NA>
* Parameters......: <tnNumber[,tcGender[,tcCase]]>
* Returns.........: <none>
* Notes...........: �������������� ����� � ��������� ������
*-------------------------------------------------------
LPARAMETERS	tnNumber,tcGender,tcCase

*20.09.2004 18:11 ->���������� � ������������� ����������
LOCAL	toNWConv
*------------------------------------------------------------------------------

*20.09.2004 18:11 ->�������� ����� �������
IF TYPE([oApp])==[O] AND !ISNULL(oApp)
	toNWConv = oApp.CreateObject([NWConv;String_v1])
	RETURN toNWConv.NTOW(tnNumber,tcGender,tcCase)
ELSE
	RETURN [���������� �� ��������. ������� ����������.]
ENDIF
*------------------------------------------------------------------------------

************************************************************************************
**********************************  END OF METHOD **********************************
************************************************************************************
