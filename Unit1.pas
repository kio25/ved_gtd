unit unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Oracle, DB, OracleData, ComCtrls,StrUtils, ExtCtrls,DateUtils,
  CheckLst, Grids;
   const //razmas=60;
       ShortDateFormat='dd.mm.yyyy';   nsg=11; //???-?? ????? ??? ??????????
type
  TForm1 = class(TForm)
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    Button1: TButton;
    StaticText1: TStaticText;
    Label5: TLabel;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    Label4: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Shape2: TShape;
    SG: TStringGrid;
    Label2: TLabel;
    Label3: TLabel;
    D_vmd1: TDateTimePicker;
    D_vmd2: TDateTimePicker;
    CheckBox1: TCheckBox;
    rg1: TRadioGroup;
    rb1: TRadioButton;
    rb2: TRadioButton;
    rb3: TRadioButton;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    cb_uz: TCheckBox;
     procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
{ //   procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
 }   function or1:boolean;

    procedure EditKeyPress(Sender: TObject; var Key: Char);
    procedure ClearForm;

    procedure SGKeyPress(Sender: TObject; var Key: Char);
    procedure SGSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure SGDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure CheckBox1Click(Sender: TObject);








  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  Form1: TForm1;
  year, month,day : word;
  datemin,datemax,datena,dateplmin,dateplmax :   TDateTime;
  pr_zap,tzr :integer;
  mas_sg: array [1..nsg,1..10] of string;

implementation
uses unit2;
{$R *.dfm}



 procedure TForm1.FormCreate(Sender: TObject);

 var
  i_np, i_HS,i,j : Integer;
  prm, name, psw, HString : string;
begin
     prm := ParamStr(1);
  i_np := Pos('/', prm);
  i_HS := Pos('@', prm);
   // ???? ???/?????? ?? ???. ?????? ? (name/psw@HString)
  if Length(prm) <> 0 then begin
    if (i_np = 0) or (i_HS = 0) then begin
     Application.MessageBox('??????? ???????? ????????? ??????????? ? ??.' ,
                            '??????', MB_OK + MB_ICONERROR);
     Halt;
    end;
    name :=    LeftStr(prm, i_np - 1);
    psw  :=    MidStr(prm,  i_np + 1, i_HS - i_np - 1);
    HString := RightStr(prm, Length(prm) - i_HS );
    DataModule2.OracleSession1.LogonDatabase := HString;
    DataModule2.OracleSession1.LogonPassword  := psw;
    DataModule2.OracleSession1.LogonUsername:= name;
    DataModule2.OracleSession1.Connected := true;

    if not DataModule2.OracleSession1.Connected then Halt;
    end
   else begin
         DataModule2.OracleLogon1.Execute;
         if not DataModule2.OracleSession1.Connected  then Halt;
   end;


 DecodeDate(Date, Year, Month, Day);
 DateTimePicker1.Date:= EncodeDate(year, month, 1);
 DateTimePicker2.Date:= EndOfAMonth(year, month);
 d_vmd1.Date:=EncodeDate(year, 1, 1);
 d_vmd2.Date:=EncodeDate(year, 12, 31);

 for i:=1 to nsg  do
   for j:=1 to 10  do
     mas_sg[1,1]:='';

 mas_sg[1,1]:='??????./????????.'; mas_sg[1,2]:='nvl(s.supplier,0)'; mas_sg[1,3]:='999999'; mas_sg[1,4]:='????????????? (????????????????) ';
 mas_sg[1,5]:='supplier';

 mas_sg[2,1]:='ϳ???????'; mas_sg[2,2]:='nvl(s.waredept,0)'; mas_sg[2,3]:='999999';
 mas_sg[2,4]:='?????????? ';  mas_sg[2,5]:='waredept';

 mas_sg[3,1]:='?????????????? ?????'; mas_sg[3,2]:='s.prod#'; mas_sg[3,3]:='99999999';
 mas_sg[3,4]:='??????????????? ?????? '; mas_sg[3,5]:='prod#';

 mas_sg[4,1]:='???'; mas_sg[4,2]:='nvl(s.dclr#,0)'; mas_sg[4,3]:='99999';
 mas_sg[4,4]:='??? '; mas_sg[4,5]:='dclr';

 mas_sg[5,1]:='????????'; mas_sg[5,2]:='NVL(s.cntr#,'''')'; mas_sg[5,3]:='';
 mas_sg[5,4]:='????????? '; mas_sg[5,5]:='cntr';

 mas_sg[6,1]:='? ???????????? ??????'; mas_sg[6,2]:='nvl(s.docno,0)'; mas_sg[6,3]:='999999999';
 mas_sg[6,4]:='? ???????????? ?????? '; mas_sg[6,5]:='docno';

 mas_sg[7,1]:='? ???.?????????? ???????'; mas_sg[7,2]:='nvl(s.suplreg,0)'; mas_sg[7,3]:='99999999';
 mas_sg[7,4]:='? ???.?????????? ??????? '; mas_sg[7,5]:='suplreg';

 mas_sg[8,1]:='? ?.?. ?????????'; mas_sg[8,2]:='NVL(s.Supldoc,'''')'; mas_sg[8,3]:='';
 mas_sg[8,4]:='? ?.?. ????????? '; mas_sg[8,5]:='Supldoc';

 mas_sg[9,1]:='? ??????'; mas_sg[9,2]:='NVL(s.transno,'''')'; mas_sg[9,3]:='';
 mas_sg[9,4]:='? ?????? '; mas_sg[9,5]:='transno';

 mas_sg[10,1]:='?????????? ???????'; mas_sg[10,2]:='m.acct_db'; mas_sg[10,3]:='99999';
 mas_sg[10,4]:='??????????? ??????? '; mas_sg[10,5]:='acct_db';

 mas_sg[11,1]:='??? ??????????'; mas_sg[11,2]:='p.prodgr'; mas_sg[11,3]:='99';
 mas_sg[11,4]:='???? ?????????? '; mas_sg[11,5]:='prodgr';

 sg.RowCount:=nsg+1;

 for i:=1 to nsg do
  begin sg.cells[0,i]:=mas_sg[i,1];
        sg.cells[1,i]:=inttostr(i);  //??????????
  end;
  sg.cells[1,0]:='????.';   sg.cells[2,0]:='Min ????????';  sg.cells[3,0]:='Max ????????';
  sg.cells[4,0]:='+/-';   sg.cells[5,0]:='??????? ???????'; sg.cells[6,0]:='*-????????';

 sg.cells[6,3]:='*';  sg.cells[6,4]:='*';
 // sg.cells[4,2]:='-';  sg.cells[5,2]:='110201';
    sg.cells[5,11]:='6';

 { if length(trim(datamodule2.dostup_shop))<>0
    then  begin sg.Cells[5,1]:=datamodule2.dostup_shop;
                sg.FixedRows:=2;
          end
     else      sg.FixedRows:=1;

  }

   if form1.CheckBox1.Checked
      then begin
           d_vmd1.Enabled:=true;
           d_vmd2.Enabled:=true;
           end
      else begin
           d_vmd1.Enabled:=false;
           d_vmd2.Enabled:=false;
           end



end;

procedure TForm1.Button1Click(Sender: TObject);

begin
 datemin:=DateTimePicker1.Date;
 datemax:=DateTimePicker2.Date;
 pr_zap:=0;
  if  or1
    then begin





       if  cb_uz.Checked
         then  DataModule2.raschet_uz
          else  DataModule2.raschet;
  ProgressBar1.Max;
  if pr_zap=0
   then  ShowMessage('?????????? ?????????')
   else  showmessage('????? ????? ?? ???????.');
        end
    else ShowMessage('????????? ??????? ??????????');
   ClearForm;
   ProgressBar1.Min;
end;


procedure TForm1.DateTimePicker1Change(Sender: TObject);
begin
 DecodeDate(DateTimePicker1.Date, Year, Month, Day);
 DateTimePicker2.Date:= EndOfAMonth(year, month);

end;



  function  TForm1.or1:Boolean;
  var  mas : array [0..nsg] of integer;
       k,k1: integer;
begin
    for k:=1 to nsg do
      if length(trim(form1.sg.cells[1,k]))<>0
          then  mas[k]:=strtoint(trim(form1.sg.cells[1,k]))
          else  mas[k]:=0;
    or1:=true;

     for k:=1 to nsg do
     if mas[k]>0
       then   for k1:=1 to nsg do
                 if (k<>k1) and (mas[k]=mas[k1])
                    then or1:=false;



 end;



procedure TForm1.EditKeyPress(Sender: TObject; var Key: Char);
begin   //???? ?????? ????
   if not(Key in ['0'..'9']) then Key:= #0;
end;


procedure TForm1.ClearForm;
 //var  year, month,day : word;
begin
     with Form1 do begin
      Form1.ProgressBar1.Min;
      Form1.StaticText1.Caption:='';
      Form1.StaticText2.Caption:='000000';
      Form1.StaticText3.Caption:='000000';
     end;

      if form1.CheckBox1.Checked
      then begin
           d_vmd1.Enabled:=true;
           d_vmd2.Enabled:=true;
           end
      else begin
           d_vmd1.Enabled:=false;
           d_vmd2.Enabled:=false;
           end



end;










{
procedure TForm1.SGEnter(Sender: TObject);
  var col,row :integer;
begin
   Col := form1.sg.col;
   Row:=form1.sg.col;

   if  form1.SG.Col=6
     then begin
           form1.SG.Col:=1;
          if row+1<nsg
            then form1.SG.Row:=row+1
            else form1.SG.Row:=1;
          end;
//   Grid.Col := Col;
//  Grid.Row := Row;


end;
  }
procedure TForm1.SGKeyPress(Sender: TObject; var Key: Char);
  var col,row :integer;
begin
   Col := form1.sg.col;
   Row:=form1.sg.row;



  /// ??????? ?? Entery ????? ???????? stringgrid
 if (ord(key)=13)
  then begin


   if  form1.SG.Col=6
     then begin
           form1.SG.Col:=1;
          if row+1<nsg
            then form1.SG.Row:=row+1
            else form1.SG.Row:=1;
          end
      else begin
          form1.SG.Col:=col+1;
           end;
       end;
  ///




end;

procedure TForm1.SGSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
   if (ACol = 3) and (ARow = 5) then CanSelect:= False;
   if (ACol = 2) and (ARow = 5) then CanSelect:= False;
   if (ACol = 3) and (ARow = 9) then CanSelect:= False;
   if (ACol = 2) and (ARow = 9) then CanSelect:= False;
   if (ACol = 3) and (ARow = 8) then CanSelect:= False;
   if (ACol = 2) and (ARow = 8) then CanSelect:= False;


end;

procedure TForm1.SGDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  SG.Canvas.Brush.Color:=clScrollBar;
  if (ACol = 3) and (ARow = 5) then SG.Canvas.FillRect(Rect);
  if (ACol = 2) and (ARow = 5) then SG.Canvas.FillRect(Rect);
  if (ACol = 3) and (ARow = 9) then SG.Canvas.FillRect(Rect);
  if (ACol = 2) and (ARow = 9) then SG.Canvas.FillRect(Rect);
  if (ACol = 3) and (ARow = 8) then SG.Canvas.FillRect(Rect);
  if (ACol = 2) and (ARow = 8) then SG.Canvas.FillRect(Rect);

end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
    if form1.CheckBox1.Checked
      then begin
           d_vmd1.Enabled:=true;
           d_vmd2.Enabled:=true;
           end
      else begin
           d_vmd1.Enabled:=false;
           d_vmd2.Enabled:=false;
           end

           end;

end.
