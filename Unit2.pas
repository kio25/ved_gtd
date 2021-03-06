unit Unit2;

interface

uses
  SysUtils, Classes, Oracle, DB, OracleData,Windows,Dialogs ,
  Messages,  Variants,  Controls, Math,  Forms,
  StdCtrls,  ComCtrls ,ComObj;
 const razmas=60;
       ShortDateFormat='dd.mm.yyyy'; nsg=11;  //???-?? ????? ??? ??????????
       kol_p=9; //???-?? ???????????  ?????
type
  TDataModule2 = class(TDataModule)
    OracleLogon1: TOracleLogon;
    OracleSession1: TOracleSession;
    ODS: TOracleDataSet;
    OracleQueryacct: TOracleQuery;
    OracleQuerydept: TOracleQuery;
    OracleQueryprod: TOracleQuery;
    ODSdostup: TOracleDataSet;
    ODSdostupDEPT: TIntegerField;
    ODSdostupSHOP: TFloatField;
    ODSdostupSECT: TFloatField;
    ODS_ish: TOracleDataSet;
    ODS_ishWAREDEPT: TFloatField;
    ODS_ishSUPPLIER: TFloatField;
    ODS_ishENTNAMES: TStringField;
    ODS_ishPROD: TIntegerField;
    ODS_ishPRODNAMES: TStringField;
    ODS_ishDOCNO: TFloatField;
    ODS_ishDOCDATE: TDateTimeField;
    ODS_ishDCLR: TFloatField;
    ODS_ishCUSTDATE: TDateTimeField;
    ODS_ishSUPLREG: TFloatField;
    ODS_ishCNTR: TStringField;
    ODS_ishCNTR1: TStringField;
    ODS_ishCNTRDATE: TDateTimeField;
    ODS_ishNDOCNO: TFloatField;
    ODS_ishNDOCDATE: TDateTimeField;
    ODS_ishCONDATE: TDateTimeField;
    ODS_ishSUPLDOC: TStringField;
    ODS_ishTRANSNO: TStringField;
    ODS_ishOPRDATE: TDateTimeField;
    ODS_ishSUPLDATE: TDateTimeField;
    ODS_ishQTYD: TFloatField;
    ODS_ishQTYBD: TFloatField;
    ODS_ishQTY: TFloatField;
    ODS_ishQTYB: TFloatField;
    ODS_ishSUMG: TFloatField;
    ODS_ishACCT_DB: TFloatField;
    ODS_ishSUPPLIER1: TFloatField;
    ODS_ishENTNAME1: TStringField;
    ODSWAREDEPT: TFloatField;
    ODSSUPPLIER: TFloatField;
    ODSENTNAMES: TStringField;
    ODSPROD: TIntegerField;
    ODSPRODNAMES: TStringField;
    ODSDOCNO: TFloatField;
    ODSDOCDATE: TDateTimeField;
    ODSDCLR: TFloatField;
    ODSCUSTDATE: TDateTimeField;
    ODSSUPLREG: TFloatField;
    ODSCNTR: TStringField;
    ODSCNTR1: TStringField;
    ODSCNTRDATE: TDateTimeField;
    ODSNDOCNO: TFloatField;
    ODSNDOCDATE: TDateTimeField;
    ODSCONDATE: TDateTimeField;
    ODSSUPLDOC: TStringField;
    ODSTRANSNO: TStringField;
    ODSOPRDATE: TDateTimeField;
    ODSSUPLDATE: TDateTimeField;
    ODSQTYD: TFloatField;
    ODSQTYBD: TFloatField;
    ODSQTY: TFloatField;
    ODSQTYB: TFloatField;
    ODSSUMG: TFloatField;
    ODSACCT_DB: TFloatField;
    ODSSUPPLIER1: TFloatField;
    ODSENTNAME1: TStringField;
    ODS_ish2: TOracleDataSet;
    ODS_ish2WAREDEPT: TFloatField;
    ODS_ish2SUPPLIER: TFloatField;
    ODS_ish2ENTNAMES: TStringField;
    ODS_ish2PROD: TIntegerField;
    ODS_ish2PRODNAMES: TStringField;
    ODS_ish2DOCNO: TFloatField;
    ODS_ish2DOCDATE: TStringField;
    ODS_ish2DCLR: TFloatField;
    ODS_ish2CUSTDATE: TDateTimeField;
    ODS_ish2SUPLREG: TFloatField;
    ODS_ish2CNTR: TStringField;
    ODS_ish2CNTR1: TStringField;
    ODS_ish2CNTRDATE: TDateTimeField;
    ODS_ish2NDOCNO: TFloatField;
    ODS_ish2NDOCDATE: TDateTimeField;
    ODS_ish2CONDATE: TDateTimeField;
    ODS_ish2SUPLDOC: TStringField;
    ODS_ish2TRANSNO: TStringField;
    ODS_ish2OPRDATE: TDateTimeField;
    ODS_ish2SUPLDATE: TDateTimeField;
    ODS_ish2QTYD: TFloatField;
    ODS_ish2QTYBD: TFloatField;
    ODS_ish2SUPPLIER1: TFloatField;
    ODS_ish2ENTNAME1: TStringField;
    ODS_ish2QTY: TFloatField;
    ODS_ish2QTYB: TFloatField;
    ODS_ish2SUMG: TFloatField;
    ODS_ish2ACCT_DB: TFloatField;
    ODSREGDATE: TDateTimeField;
    ODSPRODGR: TIntegerField;
    ODSSUMV: TFloatField;
    ODSDATE_V: TStringField;
    ODSENTNAME_R: TStringField;
    ODS_ishSUMV: TFloatField;
    ODS_ishPRODGR: TIntegerField;
    ODS_ishRECIPIENT1: TFloatField;
    ODS_ishENTNAME_R: TStringField;
    ODS_ishDATE_V: TStringField;
    ODS_ishREGDATE: TDateTimeField;
    ODSRECIPIENT: TFloatField;
    ODSSPCFK: TFloatField;
    ODSSPCFREAL: TFloatField;
    ODSDOCNO1: TIntegerField;
    ODSDLVRDATE: TDateTimeField;
    ODSDLVRTYPE: TIntegerField;
    ODSSGS_NZF: TStringField;
    ODSSGS: TStringField;
    ODSCNTRDATE_CZ: TDateTimeField;
    ODSSELDATE: TDateTimeField;
    ODSSUMM: TFloatField;
    ODSPRICEM: TFloatField;
    ODSQTYM: TFloatField;
    ODSQTYBM: TFloatField;
    ODSSELLER: TFloatField;
    ODSENTNAMES_S: TStringField;
    ODSLICENCE: TStringField;
    ODSKOD_PLAT: TStringField;
    ODSNAME_PLAT: TStringField;
    ODS_ish_uz: TOracleDataSet;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    StringField2: TStringField;
    FloatField3: TFloatField;
    DateTimeField1: TDateTimeField;
    FloatField4: TFloatField;
    DateTimeField2: TDateTimeField;
    FloatField5: TFloatField;
    StringField3: TStringField;
    StringField4: TStringField;
    DateTimeField3: TDateTimeField;
    FloatField6: TFloatField;
    DateTimeField4: TDateTimeField;
    DateTimeField5: TDateTimeField;
    StringField5: TStringField;
    StringField6: TStringField;
    DateTimeField6: TDateTimeField;
    DateTimeField7: TDateTimeField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    StringField7: TStringField;
    FloatField14: TFloatField;
    IntegerField2: TIntegerField;
    FloatField15: TFloatField;
    StringField8: TStringField;
    StringField9: TStringField;
    DateTimeField8: TDateTimeField;
    ODS_ish2_uz: TOracleDataSet;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    StringField10: TStringField;
    IntegerField3: TIntegerField;
    StringField11: TStringField;
    FloatField18: TFloatField;
    StringField12: TStringField;
    FloatField19: TFloatField;
    DateTimeField9: TDateTimeField;
    FloatField20: TFloatField;
    StringField13: TStringField;
    StringField14: TStringField;
    DateTimeField10: TDateTimeField;
    FloatField21: TFloatField;
    DateTimeField11: TDateTimeField;
    DateTimeField12: TDateTimeField;
    StringField15: TStringField;
    StringField16: TStringField;
    DateTimeField13: TDateTimeField;
    DateTimeField14: TDateTimeField;
    FloatField22: TFloatField;
    FloatField23: TFloatField;
    FloatField24: TFloatField;
    StringField17: TStringField;
    FloatField25: TFloatField;
    FloatField26: TFloatField;
    FloatField27: TFloatField;
    FloatField28: TFloatField;
    ODS_ishRECIPIENT: TFloatField;
    ODS_ishSPCFK: TFloatField;
    ODS_ishSPCFREAL: TFloatField;
    ODS_ishDOCNO1: TIntegerField;
    ODS_ishDLVRDATE: TDateTimeField;
    ODS_ishDLVRTYPE: TIntegerField;
    ODS_ishSGS_NZF: TStringField;
    ODS_ishSGS: TStringField;
    ODS_ishLICENCE: TStringField;
    ODS_ishCNTRDATE_CZ: TDateTimeField;
    ODS_ishSELDATE: TDateTimeField;
    ODS_ishSUMM: TFloatField;
    ODS_ishPRICEM: TFloatField;
    ODS_ishQTYM: TFloatField;
    ODS_ishQTYBM: TFloatField;
    ODS_ishSELLER: TFloatField;
    ODS_ishENTNAMES_S: TStringField;
    ODS_ishKOD_PLAT: TStringField;
    ODS_ishNAME_PLAT: TStringField;
    ODS_ishDATE_PR: TDateTimeField;
    ODSDATE_PR: TStringField;
    ODSCROSSTIME: TStringField;


  private
     procedure setQuery;    //???????????? ???????
     procedure pech_dan;  //?????? ??????
     procedure pech_prom_it; //?????? ???? ??????
     procedure pechnstr;
     procedure pechnstrs;
          procedure sum_it;
         procedure setQuery_uz;
  //   function nam_itog(name_pole:variant;zhach_pole:variant):string;
   //  procedure pechshap;
    { Private declarations }


  public
   procedure raschet;
   function dostup_shop:string;
   procedure raschet0;
   procedure raschet_uz;

    { Public declarations }
     end;



var
  DataModule2: TDataModule2;
   XLApp,Sheet,Colum,Row,Sheetp,Colump,Rowp,Sheets,Colums,Rows:Variant;
   sum_p,sum_r,qty_p,qty_r,qtyb_p,qtyb_r,sumbeg,qtybeg,qtybbeg: real;
   sumtot,sumtot1,sumtot2,sumtot3,sumtot4 :real;
        k,l,index,OBJCORR_old,pr_old,pr_pech,indexp,indexs,list: integer;
   mas_order: array [1..nsg+1,1..4] of string;
   mas_itog: array[1..nsg+1,1..kol_p+1] of variant;
   sh_vib,name_s:string;
    sumcr :real;



implementation
 uses unit1;

{$R *.dfm}





  function nam_itog(name_pole:variant;zhach_pole:variant):string;
 begin

    nam_itog:='';
  //   showmessage(name_pole);

       if (name_pole='waredept')
       then
       begin
                Datamodule2.OracleQuerydept.SetVariable('dept',zhach_pole);
                   with Datamodule2.OracleQuerydept do
                      try
                          Form1.StaticText1.Caption := 'dept '+floattostr(zhach_pole);
                       try
                          Execute;
                   except
                       on E:EOracleError do begin
                       ShowMessage('dept');
                       ShowMessage(E.Message);
                       exit;
                       end;
                       end;
                       nam_itog:=Field(0);
                   except
                       on E:EOracleError do  ShowMessage(E.Message);
                   end;

       end;

//-------------
        if name_pole='prod#' then
       begin
                Datamodule2.OracleQueryprod.SetVariable('prod',zhach_pole);
                   with Datamodule2.OracleQueryprod do
                      try
                          Form1.StaticText1.Caption := 'prod '+floattostr(zhach_pole);
                       try
                          Execute;
                   except
                       on E:EOracleError do begin
                       ShowMessage('prod');
                       ShowMessage(E.Message);
                       exit;
                       end;
                       end;
                       nam_itog:=Field(0);
                   except
                       on E:EOracleError do  ShowMessage(E.Message);
                   end;

       end;

        if (name_pole='acct_db')  then
       begin
                Datamodule2.OracleQueryacct.SetVariable('acct',zhach_pole);
                   with Datamodule2.OracleQueryacct do
                      try
                          Form1.StaticText1.Caption := 'acct '+floattostr(zhach_pole);
                       try
                          Execute;
                   except
                       on E:EOracleError do begin
                       ShowMessage('acct');
                       ShowMessage(E.Message);
                       exit;
                       end;
                       end;
                       nam_itog:=Field(0);
                   except
                       on E:EOracleError do  ShowMessage(E.Message);
                   end;

       end;

 end;




function TDataModule2.dostup_shop:string; // ?????? ? ????
 //???? ??????? ?????? ?? ????????? ? ?????? ????? ????
  var id:integer;

   begin
     Result:='';
     if UpperCase(copy(trim(DataModule2.OracleSession1.LogonUsername),1,1))='W'
        then  begin //??????? ??????
                  Datamodule2.ODSdostup.SetVariable('emp',Strtoint(copy(trim(DataModule2.OracleSession1.LogonUsername),2,5)));
                  Datamodule2.ODSdostup.Open;
                  Datamodule2.ODSdostup.First;
                    if Datamodule2.ODSdostup.RecordCount<>0
                      then begin
                         // for id:=1 to Datamodule2.ODSdostup.RecordCount do
                         //     begin

                               Result:=Datamodule2.ODSdostup.FieldByName('shop').AsString;

                         //      Datamodule2.ODSdostup.NExt;
                         //      end;
                          end; //if ODSdostup.RecordCount<>0
                   Datamodule2.ODSdostup.Close;
               end; //??????? ??????

           if UpperCase(copy(trim(DataModule2.OracleSession1.LogonUsername),1,1))='Z'
              then  Result:=''; //????????? ??????

   end;




   procedure TDataModule2.raschet_UZ;

     var pr_zap1:integer;
     begin

             XLApp:=CreateOleObject('Excel.Application');
            XlApp.Workbooks.Add(ExtractFilePath(ParamStr(0))+'ved_vmd.xls');

       //   XLApp.Visible:=true;


       list:=2;

     setQuery_uz;    //???????????? ???????
     raschet0;

        pr_zap1:=pr_zap;

        if form1.CheckBox3.Checked=false
          then begin

           list:=1;

            setQuery_uz;    //???????????? ???????
            raschet0;


            if pr_zap1=0
               then  pr_zap:=pr_zap1;
            end;

       if pr_zap=0
        then  begin

               
               XLApp.Visible:=true;


              end;

      end;





  procedure TDataModule2.raschet;

     var pr_zap1:integer;
     begin

             XLApp:=CreateOleObject('Excel.Application');
            XlApp.Workbooks.Add(ExtractFilePath(ParamStr(0))+'ved_vmd.xls');

       //   XLApp.Visible:=true;


       list:=2;

     setQuery;    //???????????? ???????
     raschet0;

        pr_zap1:=pr_zap;

        if form1.CheckBox3.Checked=false
          then begin

           list:=1;

            setQuery;    //???????????? ???????
            raschet0;


            if pr_zap1=0
               then  pr_zap:=pr_zap1;
            end;

       if pr_zap=0
        then  begin

               
               XLApp.Visible:=true;


              end;

      end;

  procedure TDataModule2.raschet0;
     var j,j1,j12,pr0,i :integer;
   begin



  ods.Close;
 // ODs.SetVariable('datemin',datetostr(datemin));
 // ODS.SetVariable('datemax',datetostr(datemax));

  ODS.Open;
  ODS.First;

  pr_pech:=0;

  if ODS.RecordCount<>0
  then begin
         form1.ProgressBar1.Max := ODS.RecordCount;
         Form1.StaticText2.Caption:='0';
         Form1.StaticText2.Repaint;
         Form1.StaticText3.Caption:=Inttostr(ODS.RecordCount);
         Form1.StaticText3.Repaint;


        if  list=1
          then   begin


       Colum:=XLApp.Workbooks[1].WorkSheets[1].Columns;
       Row:=XLApp.Workbooks[1].WorkSheets[1].Rows;
       Sheet:=XLApp.Workbooks[1].WorkSheets[1];
       Sheet.select;
                end ;

               if  list=2
          then   begin

            //  XLApp:=CreateOleObject('Excel.Application');
            //XlApp.Workbooks.Add(ExtractFilePath(ParamStr(0))+'ved_vmd.xls');



       Colum:=XLApp.Workbooks[1].WorkSheets[2].Columns;
       Row:=XLApp.Workbooks[1].WorkSheets[2].Rows;
       Sheet:=XLApp.Workbooks[1].WorkSheets[2];
       Sheet.select;
                end  ;



    //     XLApp.Visible:=true;

       k:=13 ;// ??????? ?????? ? Excel
       l:=11 ;//??????? ????? ?? ?????
        for j:=1 to nsg+1 do
          begin
           for j1:=2 to kol_p do mas_itog[j,j1]:=0  ;
           mas_itog[j,kol_p+1]:=0; //????????? ???????? ?????? ???????? ???????
         end;
        for j:=1 to nsg do//wnto 1 do
        //  if (length(trim(mas_order[j,4]))<>0) and (mas_order[j,3]='1')
        //     then mas_itog[j,1]:=ODS.FieldByName(mas_order[j,4]).asvariant;   // ???????? ?? ??????? ??????????? ?????
           begin
          if (mas_order[j,3]='1')
             then mas_itog[j,1]:=ODS.FieldByName(mas_order[j,4]).asvariant;   // ???????? ?? ??????? ??????????? ?????
           end;

        Sheet.Cells[3,6]:='?? ?????? ? '+datetostr(datemin)+' ?? '+datetostr(datemax);

        if sh_vib<>''
          then begin    Sheet.Cells[4,6]:='?????????? ???????';
                         Sheet.Cells[5,6]:=sh_vib;

                end;
     // pechshap;
        index:=11;

          for i:=1 to ODS.RecordCount do
            begin
         Form1.StaticText2.Caption:=inttostr(i);
         Form1.StaticText2.Repaint;
         Form1.ProgressBar1.StepIt;
        pech_prom_it;
        // sum_it;
         pech_dan;

         ods.Next;
         Application.ProcessMessages;
              end ;//          for i:=1 to ODS.RecordCount do


    //????????? ?????

                       for i:=nsg downto 1 do
                          begin

                      if  (mas_order[i,3]='1')
                       then begin

                     Sheet.Rows[index].Font.Bold := True;
                    // XLApp.Range[Sheet.Cells[index,1], Sheet.Cells[index,7]].Select;
                    // XLApp.Selection.MergeCells:=True;

                     Sheet.Cells[index,1]:=mas_order[i,2]+VarAsType(mas_itog[i,1],$0100)+' '+nam_itog(mas_order[i,4],mas_itog[i,1]);
                     Sheet.Cells[index,22]:=mas_itog[i,2];
                     Sheet.Cells[index,26]:=mas_itog[i,3];
                     Sheet.Cells[index,27]:=mas_itog[i,4];
                     Sheet.Cells[index,28]:=mas_itog[i,5];
                     Sheet.Cells[index,29]:=mas_itog[i,6];
                       if mas_itog[i,7]<>0 then
                     Sheet.Cells[index,30]:=mas_itog[i,7];
                     if mas_itog[i,8]<>0 then
                     Sheet.Cells[index,31]:=mas_itog[i,8];
                     if mas_itog[i,9]<>0 then
                     Sheet.Cells[index,41]:=mas_itog[i,9];
                     if mas_itog[i,10]<>0 then
                     Sheet.Cells[index,42]:=mas_itog[i,10];
                     inc(index);  // pechnstr;

                           end;

                          end;

                     Sheet.Rows[index].Font.Bold := True;
                   //  XLApp.Range[Sheet.Cells[index,1], Sheet.Cells[index,7]].Select;
                   //  XLApp.Selection.MergeCells:=True;

                     Sheet.Cells[index,1]:='?????? ?? ????????? ';
                     Sheet.Cells[index,22]:=mas_itog[nsg+1,2];
                     Sheet.Cells[index,26]:=mas_itog[nsg+1,3];
                     Sheet.Cells[index,27]:=mas_itog[nsg+1,4];
                     Sheet.Cells[index,28]:=mas_itog[nsg+1,5];
                     Sheet.Cells[index,29]:=mas_itog[nsg+1,6];
                     Sheet.Cells[index,30]:=mas_itog[nsg+1,7];
                     Sheet.Cells[index,31]:=mas_itog[nsg+1,8];
                     Sheet.Cells[index,41]:=mas_itog[nsg+1,9];
                     Sheet.Cells[index,42]:=mas_itog[nsg+1,10];
                     inc(index);




        pr_zap:=0;

       //XLApp.Visible:=true;

            end    //    if ODS.RecordCount<>0 then
        else pr_zap:=1;
   end;

 procedure TDataModule2.pech_dan;
    var ip : integer;
      sumDB,sumnf :real;
  begin
     pr_pech:=1;

     if (trim(form1.sg.cells[1,2])<>'0') then
     Sheet.Cells[index,1]:=datamodule2.ODSWAREDEPT.AsInteger;



        if (trim(form1.sg.cells[1,1])<>'0') then  begin
     Sheet.Cells[index,2]:=datamodule2.ODSSUPPLIER.AsInteger;
     Sheet.Cells[index,3]:=datamodule2.ODSENTNAMES.AsString;
       end;


            if (trim(form1.sg.cells[1,3])<>'0') then begin
     Sheet.Cells[index,4]:=datamodule2.ODSPROD.AsInteger;
     Sheet.Cells[index,5]:=datamodule2.ODSPRODNAMES.AsString;
          end;



            if (trim(form1.sg.cells[1,6])<>'0') then begin
                if  datamodule2.ODSDOCNO.AsInteger<>0
                   then   Sheet.Cells[index,6]:=datamodule2.ODSDOCNO.AsInteger;

                 Sheet.Cells[index,7]:=datamodule2.ODSDOCno1.AsVariant;
                 Sheet.Cells[index,8]:=datamodule2.ODSDOCDATE.AsVariant;
                                                   end;

           if (trim(form1.sg.cells[1,4])<>'0') then begin
            if  datamodule2.ODSDCLR.AsInteger<>0 then  Sheet.Cells[index,9]:=datamodule2.ODSDCLR.AsInteger;
                    Sheet.Cells[index,10]:=datamodule2.ODSCUSTDATE.AsVariant;

                                       end;

         if (trim(form1.sg.cells[1,7])<>'0')   then
               begin

              if  (datamodule2.ODSSUPLREG.AsInteger<>0)
                 then begin
                Sheet.Cells[index,11]:= datamodule2.ODSSUPLREG.AsInteger;
                Sheet.Cells[index,33]:= datamodule2.ODSSUPPLIER1.AsInteger;
                Sheet.Cells[index,34]:= datamodule2.ODSENTNAME1.Asstring;
                Sheet.Cells[index,12]:= datamodule2.ODSREGDATE.Value;
                Sheet.Cells[index,13]:= datamodule2.ODSDATE_V.Value;

                Sheet.Cells[index,35]:= datamodule2.ODSRECIPIENT.AsInteger;
                Sheet.Cells[index,36]:= datamodule2.ODSENTNAME_R.Asstring;
                end
                  else  begin
                     if datamodule2.ODSSELLER.AsInteger<>0
                        then begin
                          if list=1
                           then begin
                          Sheet.Cells[index,35]:= datamodule2.ODSSELLER.AsInteger;
                          Sheet.Cells[index,36]:= datamodule2.ODSENTNAMEs_s.Asstring;
                                end
                           else   begin
                          Sheet.Cells[index,33]:= datamodule2.ODSSELLER.AsInteger;
                          Sheet.Cells[index,34]:= datamodule2.ODSENTNAMEs_s.Asstring;
                                end

                        end;





                  end;


             end;

//        if (trim(form1.sg.cells[1,5])<>'0')  then
                Sheet.Cells[index,14]:= datamodule2.ODSCNTR1.AsVariant;

                if (trim(form1.sg.cells[1,5])<>'0')  then   begin
               Sheet.Cells[index,15]:= datamodule2.ODSCNTR.AsVariant;

                if datamodule2.ODSSPCFreal.AsInteger<>0 then
                  Sheet.Cells[index,16]:=datamodule2.odsspcfreal.AsInteger;

               if datamodule2.ODSSPCFK.AsInteger<>0 then
                  Sheet.Cells[index,16]:=datamodule2.ODSSPCFK.AsInteger;
               Sheet.Cells[index,17]:= datamodule2.ODSCNTRDATE_cz.AsVariant;
                              Sheet.Cells[index,18]:= datamodule2.ODSseldate.asvariant;
                end;

                 if  datamodule2.ODSNDOCNO.asinteger <>0
                 then
               Sheet.Cells[index,19]:= datamodule2.ODSNDOCNO.AsVariant;

               Sheet.Cells[index,20]:= datamodule2.ODSNDOCDATE.AsVariant;


           if (trim(form1.sg.cells[1,8])<>'0')  then
                Sheet.Cells[index,21]:= datamodule2.ODSSUPLDOC.AsVariant;


           if (trim(form1.sg.cells[1,9])<>'0')  then
                Sheet.Cells[index,22]:= datamodule2.ODSTRANSNO.AsVariant;


          if not varisnull(odscondate.AsVariant)
            then if strtodate(datetostr(odscondate.AsDateTime))<>strtodate('01.01.2000')
                    then
                     Sheet.Cells[index,23]:= datamodule2.ODScondate.AsVariant;

       //  if odsdlvrtype.AsInteger<>1
       //          then  Sheet.Cells[index,24]:= datamodule2.ODSDLVRDATE.AsVariant;
             if DataModule2.ODSCROSSTIME.value<>'*' then
          Sheet.Cells[index,24]:=DataModule2.ODSCROSSTIME.value ;
          Sheet.Cells[index,25]:= datamodule2.ODSSUPLDATE.AsVariant;

           if  datamodule2.ODSQTYD.Asfloat<>0 then
           Sheet.Cells[index,26]:= datamodule2.ODSQTYD.Asfloat;

           if  datamodule2.ODSQTYbD.Asfloat<>0 then
           Sheet.Cells[index,27]:= datamodule2.ODSQTYbD.Asfloat;


           if  datamodule2.ODSQTY.Asfloat<>0 then
           Sheet.Cells[index,28]:= datamodule2.ODSQTY.Asfloat;

           if  datamodule2.ODSQTYb.Asfloat<>0 then
           Sheet.Cells[index,29]:= datamodule2.ODSQTYb.Asfloat;

           if  datamodule2.ODSSUMG.Asfloat<>0 then
           Sheet.Cells[index,31]:= datamodule2.ODSSUMG.Asfloat;
           if  datamodule2.ODSSUMv.Asfloat<>0 then
           Sheet.Cells[index,30]:= datamodule2.ODSSUMv.Asfloat;


           if datamodule2.ODSACCT_DB.Asfloat<>0
             then Sheet.Cells[index,32]:= datamodule2.ODSACCT_DB.Asfloat;


              if list=1    then  begin
                    Sheet.Cells[index,37]:=datamodule2.ODSSGS_NZF.Value;
                    Sheet.Cells[index,38]:=datamodule2.ODSSGS.Value;
                    Sheet.Cells[index,39]:=datamodule2.ODSLICENCE.Value;


                    if DataModule2.ODSDATE_PR.value<>'*'  then   Sheet.Cells[index,43]:= StrToDate(DataModule2.ODSDATE_PR.value);
                      Sheet.Cells[index,44]:= datamodule2.ODSKOD_PLAT.Value ;
                      Sheet.Cells[index,45]:= datamodule2.ODSname_PLAT.Value
               end


                else begin

                    Sheet.Cells[index,35]:=datamodule2.ODSSGS_NZF.Value;
                    Sheet.Cells[index,36]:=datamodule2.ODSSGS.Value;

                    Sheet.Cells[index,37]:=datamodule2.ODSLICENCE.Value;
                         if DataModule2.ODSDATE_PR.value<>'*'  then
                      Sheet.Cells[index,38]:= StrToDate(DataModule2.ODSDATE_PR.Value);
                      Sheet.Cells[index,39]:= datamodule2.ODSKOD_PLAT.Value ;
                      Sheet.Cells[index,40]:= datamodule2.ODSname_PLAT.Value


               end;


                       sumnf:=0;
           
              if (list=1)  and (datamodule2.ODSSUMv.Asfloat=0)    then  begin
                   if (datamodule2.ODSQTYBM.Value<>0)  and (datamodule2.ODSQTYB.Value<>0)
                      then begin

                    Sheet.Cells[index,40]:=roundto(datamodule2.ODSsumm.Value/datamodule2.ODSQTYbM.Value,-2);
                    Sheet.Cells[index,41]:=roundto(datamodule2.ODSsumm.Value*datamodule2.ODSQTYB.Value/datamodule2.ODSQTYbM.Value,-2);
                        sumnf:=roundto(datamodule2.ODSsumm.Value*datamodule2.ODSQTYB.Value/datamodule2.ODSQTYbM.Value,-2)
                      end
                   else begin
                    if (datamodule2.ODSQTYM.Value<>0)  and (datamodule2.ODSQTY.Value<>0)
                      then begin

                    Sheet.Cells[index,40]:=roundto(datamodule2.ODSsumm.Value/datamodule2.ODSQTYM.Value,-2);
                    Sheet.Cells[index,41]:=roundto(datamodule2.ODSsumm.Value*datamodule2.ODSQTY.Value/datamodule2.ODSQTYM.Value,-2);
                        sumnf:=roundto(datamodule2.ODSsumm.Value*datamodule2.ODSQTY.Value/datamodule2.ODSQTYM.Value,-2);
                      end;

                    end;

               end  ;


             if (list=1)
                then begin

                    if sumnf<>0
                       then  Sheet.Cells[index,42]:=sumnf
                       else  Sheet.Cells[index,42]:=datamodule2.ODSSUMg.Asfloat;
                end;


       for ip:=1 to nsg do
         begin
           if length(trim(mas_itog[ip,1]))<>0
             then   begin
                 mas_itog[ip,2]:=mas_itog[ip,2]+1 ; //???-?? ???????
                 mas_itog[ip,3]:=mas_itog[ip,3]+datamodule2.ODSQTYD.Asfloat;
                 mas_itog[ip,4]:=mas_itog[ip,4]+datamodule2.ODSQTYbD.Asfloat;
                 mas_itog[ip,5]:=mas_itog[ip,5]+datamodule2.ODSQTY.Asfloat;
                 mas_itog[ip,6]:=mas_itog[ip,6]+datamodule2.ODSQTYb.Asfloat;
                 mas_itog[ip,7]:=mas_itog[ip,7]+datamodule2.ODSSUMv.Asfloat;
                 mas_itog[ip,8]:=mas_itog[ip,8]+datamodule2.ODSSUMg.Asfloat;
                 mas_itog[ip,9]:=mas_itog[ip,9]+sumnf;
                 mas_itog[ip,10]:=mas_itog[ip,10]+datamodule2.ODSSUMg.Asfloat+sumnf;

         end;   end;

                 mas_itog[nsg+1,2]:=mas_itog[ip,2]+1 ; //???-?? ???????
                 mas_itog[nsg+1,3]:=mas_itog[ip,3]+datamodule2.ODSQTYD.Asfloat;
                 mas_itog[nsg+1,4]:=mas_itog[ip,4]+datamodule2.ODSQTYbD.Asfloat;
                 mas_itog[nsg+1,5]:=mas_itog[ip,5]+datamodule2.ODSQTY.Asfloat;
                 mas_itog[nsg+1,6]:=mas_itog[ip,6]+datamodule2.ODSQTYb.Asfloat;
                 mas_itog[nsg+1,7]:=mas_itog[ip,7]+datamodule2.ODSSUMG.Asfloat;
                 mas_itog[nsg+1,8]:=mas_itog[ip,8]+datamodule2.ODSSUMv.Asfloat;
                 mas_itog[nsg+1,9]:=mas_itog[ip,9]+sumnf;
                 mas_itog[nsg+1,10]:=mas_itog[ip,10]+datamodule2.ODSSUMG.Asfloat+sumnf;



       inc(index);
    //   pechnstr  ;


  end;



        procedure TDataModule2.sum_it;
  var ip : integer;

  begin
    {
     odscr.Close;
     odscr.SetVariable('rec',ODSrec.AsInteger);
     odscr.SetVariable('docno',ODSdocno.AsInteger);

     sumcr:=0;
     odscr.Open;
     if odscr.RecordCount<>0
        then begin   if (datamodule2.odscrACCT_cr.AsInteger=datamodule2.ODSACCT_cr.AsInteger)
                        then begin

                             sumcr:=datamodule2.odssum.AsFloat;                                        //????? ?? ?????
                       //      mas_itog[nsg+1,5]:=mas_itog[nsg+1,5]+datamodule2.odssum.AsFloat;
                              end;
              end;
         odscr.close;



     for ip:=1 to nsg do
         begin
           if length(trim(mas_itog[ip,1]))<>0
             then   begin
                 mas_itog[ip,2]:=mas_itog[ip,2]+datamodule2.ODSQTYD.AsFloat ;
                 mas_itog[ip,3]:=mas_itog[ip,3]+datamodule2.ODSQTYb.AsFloat;
                 mas_itog[ip,4]:=mas_itog[ip,4]+datamodule2.ODSQTY.AsFloat;

                 mas_itog[ip,5]:=mas_itog[ip,5]+sumcr;
                 mas_itog[ip,6]:=mas_itog[ip,6]+datamodule2.ODSSUM.AsFloat;
         end;   end;



          mas_itog[nsg+1,2]:=mas_itog[nsg+1,2]+datamodule2.ODSQTYD.AsFloat ;
          mas_itog[nsg+1,3]:=mas_itog[nsg+1,3]+datamodule2.ODSQTYb.AsFloat;
          mas_itog[nsg+1,4]:=mas_itog[nsg+1,4]+datamodule2.ODSQTY.AsFloat;
          mas_itog[nsg+1,5]:=mas_itog[nsg+1,5]+sumcr;
          mas_itog[nsg+1,6]:=mas_itog[nsg+1,6]+datamodule2.ODSSUM.AsFloat;

     }

  end;


  /////////



 procedure TDataModule2.setQuery;    //???????????? ???????

   var select_z,  from_z,where_z,group_z,order_z,s1,where_z1,where_z2: String ;
       myFile:TextFile; i,j:integer;
       Strings: TStrings;


 begin


   sh_vib:='?? ';
 for i:=1 to nsg do
   for j:=1 to 3 do
      mas_order[i ,j]:='';


   if list=1
      then  where_z2:=' and s.rec#=d.rec# and s.rec#=m.rec#  and m.opr#=1 '
      else  where_z2:=' and s.rec#=d.rec#(+) and s.rec#=m.rec#(+)  and nvl(s.docno,0)=0  ';




 where_z2:=where_z2+' and  (s.OPRDATE BETWEEN TO_DATE('''+datetostr(datemin)+''',''DD.MM.YYYY'') AND TO_DATE('''+datetostr(datemax)+''',''DD.MM.YYYY'')) ';
 if form1.CheckBox1.Checked
   then
 where_z2:=where_z2+' and  (s.custdate BETWEEN TO_DATE('''+datetostr(form1.D_vmd1.Date)+''',''DD.MM.YYYY'') AND TO_DATE('''+datetostr(form1.D_vmd2.Date)+''',''DD.MM.YYYY'')) ';

 if form1.CheckBox2.Checked
   then
 where_z2:=where_z2+' and  s.transno like ''UZ%'' ' ;

      order_z:=' ORDER BY ';

         //??? ?????????? ????????  ?????  ?? ? ???????
if length(trim(Form1.sg.Cells[5,5]))<>0
  then Form1.sg.Cells[5,5]:=''''+StringReplace(trim(Form1.sg.Cells[5,5]),',',''',''',[rfReplaceAll, rfIgnoreCase])+'''';

if length(trim(Form1.sg.Cells[5,8]))<>0
  then Form1.sg.Cells[5,8]:=''''+StringReplace(trim(Form1.sg.Cells[5,8]),',',''',''',[rfReplaceAll, rfIgnoreCase])+'''';

  if length(trim(Form1.sg.Cells[5,9]))<>0
  then Form1.sg.Cells[5,9]:=''''+StringReplace(trim(Form1.sg.Cells[5,9]),',',''',''',[rfReplaceAll, rfIgnoreCase])+'''';



 for i:=1 to nsg do
  begin



          where_z1:='';
          if (Length(trim(Form1.sg.Cells[2,i]))<>0) or (Length(trim(Form1.sg.Cells[3,i]))<>0)
          then  begin     //1
                if Length(trim(Form1.sg.Cells[2,i]))<>0
                   then  begin where_z1:=where_z1+' AND ('+mas_sg[i,2]+' BETWEEN '+trim(Form1.sg.Cells[2,i]);
                                   sh_vib:=sh_vib+mas_sg[i,4]+' ? '+trim(Form1.sg.Cells[2,i]);
                         end
                   else   begin where_z1:=where_z1+' AND ('+mas_sg[i,2]+' BETWEEN 0 ';
                                sh_vib:=sh_vib+mas_sg[i,4]+' ? 0 '
                           end;

                if Length(trim(Form1.sg.Cells[3,i]))<>0
                   then  begin where_z1:=where_z1+' AND '+trim(form1.sg.Cells[3,i]);
                                sh_vib:=sh_vib+' ?? '+trim(Form1.sg.Cells[3,i]);
                         end
                   else  begin where_z1:=where_z1+' AND '+mas_sg[i,3];
                                sh_vib:=sh_vib+' ?? '+mas_sg[i,3];
                          end;



         if ((Length(trim(Form1.sg.Cells[4,i]))=0) or (trim(Form1.sg.Cells[4,i])='+')) and (Length(trim(Form1.sg.Cells[5,i]))<>0)
                    //then //???? + ??? ??????
                       //   if Length(trim(Form1.sg.Cells[5,i]))<>0
                             then begin where_z1:=where_z1+' OR '+mas_sg[i,2]+' in ('+trim(Form1.sg.Cells[5,i])+')';
                                        sh_vib:=sh_vib+' ,? ???????? ' +trim(Form1.sg.Cells[5,i]);
                                  end;
                          //   else where_z1:=where_z1+')';


                if (trim(Form1.sg.Cells[4,i])='-') and (Length(trim(Form1.sg.Cells[5,i]))<>0)
                   // then //???? -

                     //     if Length(trim(Form1.sg.Cells[5,i]))<>0
                             then begin where_z1:=where_z1+' AND '+mas_sg[i,2]+' NOT in ('+trim(Form1.sg.Cells[5,i])+')' ;
                                          sh_vib:=sh_vib+' ,????????? ? ???????? ' +trim(Form1.sg.Cells[5,i]);
                                  end;
                            // else where_z1:=where_z1+')'

                                 end;     //1




          if (Length(trim(Form1.sg.Cells[2,i]))=0) and (Length(trim(Form1.sg.Cells[3,i]))=0)
          then  begin     //1

         if ((Length(trim(Form1.sg.Cells[4,i]))=0) or (trim(Form1.sg.Cells[4,i])='+')) and (Length(trim(Form1.sg.Cells[5,i]))<>0)
                    //then //???? + ??? ??????
                       //   if Length(trim(Form1.sg.Cells[5,i]))<>0
                             then begin where_z1:=where_z1+' AND ( '+mas_sg[i,2]+' in ('+trim(Form1.sg.Cells[5,i])+')';
                                        sh_vib:=sh_vib+mas_sg[i,4]+ ' ? ???????? ' +trim(Form1.sg.Cells[5,i]);
                                  end;
                          //   else where_z1:=where_z1+')';


                if (trim(Form1.sg.Cells[4,i])='-') and (Length(trim(Form1.sg.Cells[5,i]))<>0)
                   // then //???? -

                     //     if Length(trim(Form1.sg.Cells[5,i]))<>0
                             then begin where_z1:=where_z1+' AND ( '+mas_sg[i,2]+' NOT in ('+trim(Form1.sg.Cells[5,i])+')' ;
                                        sh_vib:=sh_vib+mas_sg[i,4]+ ' ????????? ? ???????? ' +trim(Form1.sg.Cells[5,i]);
                                  end;
                            // else where_z1:=where_z1+')'

                                 end;     //1



  if length(trim(where_z1))<>0
    then where_z2:=where_z2+' '+where_z1+') ';





   if strtoint(form1.sg.cells[1,i])<>0 then begin
  mas_order[strtoint(form1.sg.cells[1,i]),1]:=mas_sg[i,2]; //??????????
  mas_order[strtoint(form1.sg.cells[1,i]),4]:=mas_sg[i,5]; //????? ?????
   //  end;


  if length(trim(Form1.sg.cells[6,i]))<>0                             // ?????
    then  begin mas_order[strtoint(form1.sg.cells[1,i]),3]:='1' ;
                mas_order[strtoint(form1.sg.cells[1,i]),2]:='?????? ?? '+mas_sg[i,4];
           end
    else  mas_order[strtoint(form1.sg.cells[1,i]),3]:='0';

    end;

  end; //  for i:=1 to nsg do




       //    order_z:=' ORDER BY ';

 for i:=1 to nsg do
   begin
     if mas_order[i,1]<>'' then order_z:=order_z+mas_order[i,1]+', ';
   end;
    order_z:=copy(order_z,1,Length(order_z)-2);


   DataModule2.ODS.Close;
   DataModule2.ODS.SQL.Clear;

   Strings:=ODS_ish.SQL;
    for i := 0 to Strings.Count - 1 do
       DataModule2.ODS.SQL.Add(Strings.Strings[i] );

   DataModule2.ODS.SQL.Add(where_z2);
   if form1.rb3.Checked
     then   DataModule2.ODS.SQL.Add(' and c.dlvrtype in (3,2) ');
   if form1.rb2.Checked
     then   DataModule2.ODS.SQL.Add(' and c.dlvrtype in (1) ');


   DataModule2.ODS.SQL.Add(order_z);

   {

   //---------------------otladka
  getdir(0,s1);
//  AssignFile(myFile, trim(s1)+'\suplr52.lst');
 AssignFile(myFile, 'd:\ved_gtd.lst');
  ReWrite(myFile);
  Strings:=ODS.SQL;
    for i := 0 to Strings.Count - 1 do
       writeln(myFile,Strings.Strings[i] );
   close(myFile);
//-------------------------otladka
    }

if sh_vib='?? ' then sh_vib:='';


   //??? ?????????? ????????  ?????  ?? ? ???????
if length(trim(Form1.sg.Cells[5,5]))<>0
  then Form1.sg.Cells[5,5]:=StringReplace(trim(Form1.sg.Cells[5,5]),'''','',[rfReplaceAll, rfIgnoreCase]);

if length(trim(Form1.sg.Cells[5,8]))<>0
  then Form1.sg.Cells[5,8]:=StringReplace(trim(Form1.sg.Cells[5,8]),'''','',[rfReplaceAll, rfIgnoreCase]);

  if length(trim(Form1.sg.Cells[5,9]))<>0
  then Form1.sg.Cells[5,9]:=StringReplace(trim(Form1.sg.Cells[5,9]),'''','',[rfReplaceAll, rfIgnoreCase]);

   end;
 ////////////////////////////



 procedure  TDataModule2.pech_prom_it;
   var i,j:integer;
  begin


{     if (length(trim(mas_order[j,4]))<>0) and (mas_order[j,3]='1')
             then mas_itog[j,1]:=ODS.FieldByName(mas_order[j,4]).asvariant;   // ???????? ?? ??????? ??????????? ?????
 }


  for j:=1 to nsg do
   begin
          if length(trim(mas_order[j,4]))<>0 then begin //? ?????????? ????? ??? ???? 0
        if  (mas_itog[j,1]<>ODS.FieldByName(mas_order[j,4]).asvariant)
            and (mas_order[j,3]='1') and (pr_pech=1)
          then begin
                    // ?????? ???? ???? ?????? ?? ????? ?? ??????????
                       for i:=nsg downto j+1 do
                          begin

                      if  (mas_order[i,3]='1')
                       then begin
//                     Sheet.Cells[index,1]:=mas_order[i,2]+' '+inttostr(mas_itog[i,1]);
                     Sheet.Rows[index].Font.Bold := True;
                     Sheet.Cells[index,1]:=mas_order[i,2]+VarAsType(mas_itog[i,1],$0100)+' '+nam_itog(mas_order[i,4],mas_itog[i,1]);
                     Sheet.Cells[index,22]:=mas_itog[i,2];
                     Sheet.Cells[index,26]:=mas_itog[i,3];
                     Sheet.Cells[index,27]:=mas_itog[i,4];
                     Sheet.Cells[index,28]:=mas_itog[i,5];
                     Sheet.Cells[index,29]:=mas_itog[i,6];

                      if mas_itog[i,7]<>0 then
                     Sheet.Cells[index,30]:=mas_itog[i,7];
                       if mas_itog[i,8]<>0 then
                     Sheet.Cells[index,31]:=mas_itog[i,8];
                       if mas_itog[i,9]<>0 then
                     Sheet.Cells[index,41]:=mas_itog[i,9];
                        if mas_itog[i,10]<>0 then
                     Sheet.Cells[index,42]:=mas_itog[i,10];
                         inc(index); // pechnstr  ;
                     //   pechnstr ;


                       // ????????? ???????????? ??????
                     mas_itog[i,1]:=ODS.FieldByName(mas_order[i,4]).asvariant;
                     mas_itog[i,2]:=0; mas_itog[i,3]:=0;
                     mas_itog[i,4]:=0; mas_itog[i,5]:=0;
                     mas_itog[i,6]:=0;  mas_itog[i,7]:=0;    mas_itog[i,8]:=0;
                             mas_itog[i,9]:=0;   mas_itog[i,10]:=0;

                           end;

                          end;
                      // ?????? ???? ?????

                    Sheet.Rows[index].Font.Bold := True;
                     Sheet.Cells[index,1]:=mas_order[j,2]+VarAsType(mas_itog[j,1],$0100)+' '+nam_itog(mas_order[j,4],mas_itog[j,1]); //VarAsType ?????????????? ???? variant ? string;
                     Sheet.Cells[index,22]:=mas_itog[j,2];
                     Sheet.Cells[index,26]:=mas_itog[j,3];
                     Sheet.Cells[index,27]:=mas_itog[j,4];
                     Sheet.Cells[index,28]:=mas_itog[j,5];
                     Sheet.Cells[index,29]:=mas_itog[j,6];
                     if mas_itog[j,7]<>0 then
                     Sheet.Cells[index,30]:=mas_itog[j,7];
                     if mas_itog[j,8]<>0 then
                     Sheet.Cells[index,31]:=mas_itog[j,8];
                     if mas_itog[j,9]<>0 then
                     Sheet.Cells[index,41]:=mas_itog[j,9];
                     if mas_itog[j,10]<>0 then
                     Sheet.Cells[index,42]:=mas_itog[j,10];

                        inc(index); //pechnstr  ;

                       //    pechnstr ;


                       // ????????? ???????????? ??????
                     mas_itog[j,1]:=ODS.FieldByName(mas_order[j,4]).asvariant;
                     mas_itog[j,2]:=0; mas_itog[j,3]:=0;
                     mas_itog[j,4]:=0; mas_itog[j,5]:=0;
                     mas_itog[j,6]:=0;  mas_itog[j,7]:=0;    mas_itog[j,8]:=0;
                      mas_itog[j,9]:=0;   mas_itog[j,10]:=0;

               end;

   end;
        end; //   for

       pr_pech:=0;
       for i:=1 to nsg do
        for j:=2 to kol_p+1 do
          if mas_itog[i,j]<>0 then pr_pech:=1;


  end;

 procedure TDataModule2.pechnstr;
   var i_page:integer;
    begin
    if index=46 then //1 str
  begin  //i_page:=1+index div 46;
         Sheet.HPageBreaks.Add(Sheet.Rows[index]);
         Sheet.Cells[index,31]:='???. 2';//+inttostr(i_page);
         inc(index);
         XLApp.Workbooks[1].WorkSheets[1].Rows[11].Copy(Sheet.Rows[index]);
         inc(index);
     end;


    if ((index-46) mod 50 =0) and  (index > 95) then
  begin  i_page:=2+(index-46) div 50;
         Sheet.HPageBreaks.Add(Sheet.Rows[index]);
         Sheet.Cells[index,31]:='???. '+inttostr(i_page);
         inc(index);
         XLApp.Workbooks[1].WorkSheets[1].Rows[11].Copy(Sheet.Rows[index]);
         inc(index);
     end;


    end;

 procedure TDataModule2.pechnstrs;
   var i_pages:integer;
    begin
    {
if indexs mod 73 =0  then
  begin  i_pages:=1+indexs div 73;
         Sheets.HPageBreaks.Add(Sheets.Rows[indexs]);
         Sheets.Cells[indexs,25]:='???. '+inttostr(i_pages);
         inc(indexs);
         XLApp.Workbooks[1].WorkSheets[1].Rows[12].Copy(Sheets.Rows[indexs]);
         inc(indexs);
     end;}
    end;




    procedure TDataModule2.setQuery_uz;    //???????????? ???????

   var select_z,  from_z,where_z,group_z,order_z,s1,where_z1,where_z2: String ;
       myFile:TextFile; i,j:integer;
       Strings: TStrings;


 begin


   sh_vib:='?? ';
 for i:=1 to nsg do
   for j:=1 to 3 do
      mas_order[i ,j]:='';


   if list=1
      then  where_z2:=' and s.rec#=d.rec# and s.rec#=m.rec#  and m.opr#=1 '
      else  where_z2:=' and s.rec#=d.rec#(+) and s.rec#=m.rec#(+)  and nvl(s.docno,0)=0  ';




 where_z2:=where_z2+' and  (s.OPRDATE BETWEEN TO_DATE('''+datetostr(datemin)+''',''DD.MM.YYYY'') AND TO_DATE('''+datetostr(datemax)+''',''DD.MM.YYYY'')) ';
 if form1.CheckBox1.Checked
   then
 where_z2:=where_z2+' and  (s.custdate BETWEEN TO_DATE('''+datetostr(form1.D_vmd1.Date)+''',''DD.MM.YYYY'') AND TO_DATE('''+datetostr(form1.D_vmd2.Date)+''',''DD.MM.YYYY'')) ';

 if form1.CheckBox2.Checked
   then
 where_z2:=where_z2+' and  s.transno like ''UZ%'' ' ;

      order_z:=' ORDER BY ';

         //??? ?????????? ????????  ?????  ?? ? ???????
if length(trim(Form1.sg.Cells[5,5]))<>0
  then Form1.sg.Cells[5,5]:=''''+StringReplace(trim(Form1.sg.Cells[5,5]),',',''',''',[rfReplaceAll, rfIgnoreCase])+'''';

if length(trim(Form1.sg.Cells[5,8]))<>0
  then Form1.sg.Cells[5,8]:=''''+StringReplace(trim(Form1.sg.Cells[5,8]),',',''',''',[rfReplaceAll, rfIgnoreCase])+'''';

  if length(trim(Form1.sg.Cells[5,9]))<>0
  then Form1.sg.Cells[5,9]:=''''+StringReplace(trim(Form1.sg.Cells[5,9]),',',''',''',[rfReplaceAll, rfIgnoreCase])+'''';



 for i:=1 to nsg do
  begin



          where_z1:='';
          if (Length(trim(Form1.sg.Cells[2,i]))<>0) or (Length(trim(Form1.sg.Cells[3,i]))<>0)
          then  begin     //1
                if Length(trim(Form1.sg.Cells[2,i]))<>0
                   then  begin where_z1:=where_z1+' AND ('+mas_sg[i,2]+' BETWEEN '+trim(Form1.sg.Cells[2,i]);
                                   sh_vib:=sh_vib+mas_sg[i,4]+' ? '+trim(Form1.sg.Cells[2,i]);
                         end
                   else   begin where_z1:=where_z1+' AND ('+mas_sg[i,2]+' BETWEEN 0 ';
                                sh_vib:=sh_vib+mas_sg[i,4]+' ? 0 '
                           end;

                if Length(trim(Form1.sg.Cells[3,i]))<>0
                   then  begin where_z1:=where_z1+' AND '+trim(form1.sg.Cells[3,i]);
                                sh_vib:=sh_vib+' ?? '+trim(Form1.sg.Cells[3,i]);
                         end
                   else  begin where_z1:=where_z1+' AND '+mas_sg[i,3];
                                sh_vib:=sh_vib+' ?? '+mas_sg[i,3];
                          end;



         if ((Length(trim(Form1.sg.Cells[4,i]))=0) or (trim(Form1.sg.Cells[4,i])='+')) and (Length(trim(Form1.sg.Cells[5,i]))<>0)
                    //then //???? + ??? ??????
                       //   if Length(trim(Form1.sg.Cells[5,i]))<>0
                             then begin where_z1:=where_z1+' OR '+mas_sg[i,2]+' in ('+trim(Form1.sg.Cells[5,i])+')';
                                        sh_vib:=sh_vib+' ,? ???????? ' +trim(Form1.sg.Cells[5,i]);
                                  end;
                          //   else where_z1:=where_z1+')';


                if (trim(Form1.sg.Cells[4,i])='-') and (Length(trim(Form1.sg.Cells[5,i]))<>0)
                   // then //???? -

                     //     if Length(trim(Form1.sg.Cells[5,i]))<>0
                             then begin where_z1:=where_z1+' AND '+mas_sg[i,2]+' NOT in ('+trim(Form1.sg.Cells[5,i])+')' ;
                                          sh_vib:=sh_vib+' ,????????? ? ???????? ' +trim(Form1.sg.Cells[5,i]);
                                  end;
                            // else where_z1:=where_z1+')'

                                 end;     //1




          if (Length(trim(Form1.sg.Cells[2,i]))=0) and (Length(trim(Form1.sg.Cells[3,i]))=0)
          then  begin     //1

         if ((Length(trim(Form1.sg.Cells[4,i]))=0) or (trim(Form1.sg.Cells[4,i])='+')) and (Length(trim(Form1.sg.Cells[5,i]))<>0)
                    //then //???? + ??? ??????
                       //   if Length(trim(Form1.sg.Cells[5,i]))<>0
                             then begin where_z1:=where_z1+' AND ( '+mas_sg[i,2]+' in ('+trim(Form1.sg.Cells[5,i])+')';
                                        sh_vib:=sh_vib+mas_sg[i,4]+ ' ? ???????? ' +trim(Form1.sg.Cells[5,i]);
                                  end;
                          //   else where_z1:=where_z1+')';


                if (trim(Form1.sg.Cells[4,i])='-') and (Length(trim(Form1.sg.Cells[5,i]))<>0)
                   // then //???? -

                     //     if Length(trim(Form1.sg.Cells[5,i]))<>0
                             then begin where_z1:=where_z1+' AND ( '+mas_sg[i,2]+' NOT in ('+trim(Form1.sg.Cells[5,i])+')' ;
                                        sh_vib:=sh_vib+mas_sg[i,4]+ ' ????????? ? ???????? ' +trim(Form1.sg.Cells[5,i]);
                                  end;
                            // else where_z1:=where_z1+')'

                                 end;     //1



  if length(trim(where_z1))<>0
    then where_z2:=where_z2+' '+where_z1+') ';





   if strtoint(form1.sg.cells[1,i])<>0 then begin
  mas_order[strtoint(form1.sg.cells[1,i]),1]:=mas_sg[i,2]; //??????????
  mas_order[strtoint(form1.sg.cells[1,i]),4]:=mas_sg[i,5]; //????? ?????
   //  end;


  if length(trim(Form1.sg.cells[6,i]))<>0                             // ?????
    then  begin mas_order[strtoint(form1.sg.cells[1,i]),3]:='1' ;
                mas_order[strtoint(form1.sg.cells[1,i]),2]:='?????? ?? '+mas_sg[i,4];
           end
    else  mas_order[strtoint(form1.sg.cells[1,i]),3]:='0';

    end;

  end; //  for i:=1 to nsg do




       //    order_z:=' ORDER BY ';

 for i:=1 to nsg do
   begin
     if mas_order[i,1]<>'' then order_z:=order_z+mas_order[i,1]+', ';
   end;
    order_z:=copy(order_z,1,Length(order_z)-2);


   DataModule2.ODS.Close;
   DataModule2.ODS.SQL.Clear;




   Strings:=ODS_ish_uz.SQL;
    for i := 0 to Strings.Count - 1 do
       DataModule2.ODS.SQL.Add(Strings.Strings[i] );

    DataModule2.ODS.SQL.Add('  where date_pr BETWEEN TO_DATE('''+datetostr(datemin)+''',''DD.MM.YYYY'')-30 AND TO_DATE('''+datetostr(datemax)+''',''DD.MM.YYYY'') ');

    Strings:=ODS_ish2_uz.SQL;
    for i := 0 to Strings.Count - 1 do
       DataModule2.ODS.SQL.Add(Strings.Strings[i] );

   DataModule2.ODS.SQL.Add(where_z2);
   if form1.rb3.Checked
     then   DataModule2.ODS.SQL.Add(' and c.dlvrtype in (3,2) ');
   if form1.rb2.Checked
     then   DataModule2.ODS.SQL.Add(' and c.dlvrtype in (1) ');


   DataModule2.ODS.SQL.Add(order_z);

   {

   //---------------------otladka
  getdir(0,s1);
//  AssignFile(myFile, trim(s1)+'\suplr52.lst');
 AssignFile(myFile, 'd:\ved_gtd.lst');
  ReWrite(myFile);
  Strings:=ODS.SQL;
    for i := 0 to Strings.Count - 1 do
       writeln(myFile,Strings.Strings[i] );
   close(myFile);
//-------------------------otladka
    }

if sh_vib='?? ' then sh_vib:='';


   //??? ?????????? ????????  ?????  ?? ? ???????
if length(trim(Form1.sg.Cells[5,5]))<>0
  then Form1.sg.Cells[5,5]:=StringReplace(trim(Form1.sg.Cells[5,5]),'''','',[rfReplaceAll, rfIgnoreCase]);

if length(trim(Form1.sg.Cells[5,8]))<>0
  then Form1.sg.Cells[5,8]:=StringReplace(trim(Form1.sg.Cells[5,8]),'''','',[rfReplaceAll, rfIgnoreCase]);

  if length(trim(Form1.sg.Cells[5,9]))<>0
  then Form1.sg.Cells[5,9]:=StringReplace(trim(Form1.sg.Cells[5,9]),'''','',[rfReplaceAll, rfIgnoreCase]);

   end;
 ////////////////////////////




 end.

