object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 296
  Top = 248
  Height = 395
  Width = 817
  object OracleLogon1: TOracleLogon
    Session = OracleSession1
    Options = [ldAuto, ldDatabase, ldDatabaseList, ldLogonHistory, ldConnectAs]
    HistoryIniFile = 'c:\history.ini'
    Left = 696
    Top = 25
  end
  object OracleSession1: TOracleSession
    Left = 694
    Top = 87
  end
  object ODS: TOracleDataSet
    SQL.Strings = (
      
        'Select nvl(s.waredept,0) waredept, nvl(s.supplier,0) supplier, e' +
        '.entnames, s.prod#, p.prodnames, nvl(s.docno,0) docno, d.docdate' +
        ','
      
        '       nvl(s.dclr#,0) dclr, s.custdate,nvl(s.suplreg,0) suplreg,' +
        ' NVL(s.cntr#,'#39#39#39#39') cntr,NVL(s.cntr1,'#39#39#39#39') cntr1,s.cntrdate,'
      '       nvl(n.docno,0) ndocno, n.docdate ndocdate,s.condate,'
      
        '       s.supldoc, s.transno, s.oprdate,s.supldate,nvl(s.qtyd,0) ' +
        'qtyd,nvl(s.qtybd,0) qtybd,'
      
        '       nvl(s.qty,0) qty ,nvl(s.qtyb,0) qtyb ,decode(nvl(s.sumg,0' +
        '),0,nvl(s.sum,0),nvl(s.sumg,0)) sumg, nvl(s.sum,0) sumv, nvl(m.a' +
        'cct_db,0) acct_db,  p.prodgr,'
      ''
      
        'nvl(n.supplier,0) supplier1 ,nvl(e1.entnames,'#39#39') entname1, nvl(n' +
        '.recipient,0) recipient, nvl(e2.entnames,'#39#39') entname_r,'
      ''
      'substr(n.dbuser1,1,8) date_v,'
      
        'n.regdate,nvl(n.spcfk,0) spcfk,nvl(s.spcfreal,0) spcfreal,d.docn' +
        'o1,s.dlvrdate,c.dlvrtype,a2.sgs sgs_nzf ,a1.sgs sgs,z.licence,cz' +
        '.cntrdate cntrdate_cz,cz.seldate'
      ''
      
        ',nvl(m.sum,0) summ , nvl(d.price,0) pricem ,nvl(d.qty,0) qtym ,n' +
        'vl(d.qtyb,0) qtybm,nvl(cz.seller,0) seller,e3.entnames entnames_' +
        's,'
      ''
      
        'uz.kod_plat,uz.name_plat,decode(uz.date_pr,null,'#39'*'#39',to_char(uz.d' +
        'ate_pr,'#39'dd.mm.yyyy'#39')) date_pr,'
      
        'decode(uz.crosstime,null,'#39'*'#39',to_char(uz.crosstime,'#39'dd.mm.yyyy'#39'))' +
        ' crosstime'
      ''
      ''
      ''
      
        'from supldoc s,prod p,ent e,mtrdoc d, country c, suplin n,mtrsum' +
        ' m,ent e1,ent e2,suplanls a1, suplanls a2,spcfz z,contractz cz,'
      'ent e3,clientuz uz'
      ''
      'where   s.suplreg(+)=n.suplreg'
      'and s.prod#=p.prod#'
      'and p.prodgr=6'
      'and s.supplier=e.ent#(+)'
      'and e.cnt#=c.cnt#'
      'and c.dlvrtype in (3,2)'
      'and s.rec#=d.rec#'
      'and s.rec#=m.rec#'
      'and m.opr#=1'
      'and n.supplier=e1.ent#(+)'
      'and n.recipient=e1.ent#(+)'
      'and s.sertreg=a1.anlsprm1(+) '
      'and s.anls#=a2.anlsprm1(+) '
      'and to_char(z.cntrz(+))=s.cntr#'
      'and z.spcfreal(+)=s.spcfreal'
      'and z.prod#(+)=s.prod#'
      'and to_char(cz.cntrz(+))=s.cntr# and cz.dopcntr(+)=0'
      'and cz.seller=e3.ent#(+)'
      
        'and uz.docuz(+)=s.supldoc and s.transno=nvl(uz.nom_cont(+),uz.tr' +
        'ansno(+))'
      
        ' and s.condate=to_date(to_char(uz.dateload(+),'#39'dd.mm.yyyy'#39'),'#39'dd.' +
        'mm.yyyy'#39')')
    QBEDefinition.QBEFieldDefs = {
      040000003600000007000000444F434441544501000000000005000000444F43
      4E4F010000000000070000004F5052444154450100000000000500000050524F
      4423010000000000040000005154594401000000000004000000515459420100
      000000000300000051545901000000000007000000414343545F444201000000
      000008000000574152454445505401000000000008000000535550504C494552
      01000000000008000000454E544E414D45530100000000000900000050524F44
      4E414D45530100000000000400000044434C5201000000000008000000435553
      5444415445010000000000070000005355504C52454701000000000005000000
      434E54523101000000000008000000434E545244415445010000000000070000
      005355504C444F43010000000000070000005452414E534E4F01000000000008
      0000005355504C44415445010000000000050000005154594244010000000000
      0400000053554D47010000000000060000004E444F434E4F0100000000000800
      00004E444F434441544501000000000004000000434E54520100000000000700
      0000434F4E4441544501000000000009000000535550504C4945523101000000
      000008000000454E544E414D453101000000000006000000444154455F560100
      0000000007000000524547444154450100000000000600000050524F44475201
      00000000000400000053554D5601000000000009000000454E544E414D455F52
      01000000000009000000524543495049454E5401000000000005000000535043
      464B01000000000008000000535043465245414C01000000000006000000444F
      434E4F3101000000000008000000444C56524441544501000000000008000000
      444C565254595045010000000000070000005347535F4E5A4601000000000003
      000000534753010000000000070000004C4943454E43450100000000000B0000
      00434E5452444154455F435A0100000000000700000053454C44415445010000
      0000000400000053554D4D0100000000000600000050524943454D0100000000
      00040000005154594D01000000000005000000515459424D0100000000000600
      000053454C4C45520100000000000A000000454E544E414D45535F5301000000
      0000080000004B4F445F504C4154010000000000090000004E414D455F504C41
      5401000000000007000000444154455F50520100000000000900000043524F53
      5354494D45010000000000}
    Cursor = crSQLWait
    Session = OracleSession1
    Left = 32
    Top = 32
    object ODSWAREDEPT: TFloatField
      FieldName = 'WAREDEPT'
    end
    object ODSSUPPLIER: TFloatField
      FieldName = 'SUPPLIER'
    end
    object ODSENTNAMES: TStringField
      FieldName = 'ENTNAMES'
    end
    object ODSPROD: TIntegerField
      FieldName = 'PROD#'
    end
    object ODSPRODNAMES: TStringField
      FieldName = 'PRODNAMES'
      Required = True
    end
    object ODSDOCNO: TFloatField
      FieldName = 'DOCNO'
    end
    object ODSDOCDATE: TDateTimeField
      FieldName = 'DOCDATE'
      Required = True
    end
    object ODSDCLR: TFloatField
      FieldName = 'DCLR'
    end
    object ODSCUSTDATE: TDateTimeField
      FieldName = 'CUSTDATE'
    end
    object ODSSUPLREG: TFloatField
      FieldName = 'SUPLREG'
    end
    object ODSCNTR: TStringField
      FieldName = 'CNTR'
      Size = 15
    end
    object ODSCNTR1: TStringField
      FieldName = 'CNTR1'
      Size = 15
    end
    object ODSCNTRDATE: TDateTimeField
      FieldName = 'CNTRDATE'
    end
    object ODSNDOCNO: TFloatField
      FieldName = 'NDOCNO'
    end
    object ODSNDOCDATE: TDateTimeField
      FieldName = 'NDOCDATE'
    end
    object ODSCONDATE: TDateTimeField
      FieldName = 'CONDATE'
    end
    object ODSSUPLDOC: TStringField
      FieldName = 'SUPLDOC'
      Size = 15
    end
    object ODSTRANSNO: TStringField
      FieldName = 'TRANSNO'
      Size = 15
    end
    object ODSOPRDATE: TDateTimeField
      FieldName = 'OPRDATE'
    end
    object ODSSUPLDATE: TDateTimeField
      FieldName = 'SUPLDATE'
    end
    object ODSQTYD: TFloatField
      FieldName = 'QTYD'
    end
    object ODSQTYBD: TFloatField
      FieldName = 'QTYBD'
    end
    object ODSQTY: TFloatField
      FieldName = 'QTY'
    end
    object ODSQTYB: TFloatField
      FieldName = 'QTYB'
    end
    object ODSSUMG: TFloatField
      FieldName = 'SUMG'
    end
    object ODSACCT_DB: TFloatField
      FieldName = 'ACCT_DB'
    end
    object ODSSUPPLIER1: TFloatField
      FieldName = 'SUPPLIER1'
    end
    object ODSENTNAME1: TStringField
      FieldName = 'ENTNAME1'
    end
    object ODSREGDATE: TDateTimeField
      FieldName = 'REGDATE'
      Required = True
    end
    object ODSPRODGR: TIntegerField
      FieldName = 'PRODGR'
    end
    object ODSSUMV: TFloatField
      FieldName = 'SUMV'
    end
    object ODSDATE_V: TStringField
      FieldName = 'DATE_V'
      Size = 8
    end
    object ODSENTNAME_R: TStringField
      FieldName = 'ENTNAME_R'
    end
    object ODSRECIPIENT: TFloatField
      FieldName = 'RECIPIENT'
    end
    object ODSSPCFK: TFloatField
      FieldName = 'SPCFK'
    end
    object ODSSPCFREAL: TFloatField
      FieldName = 'SPCFREAL'
    end
    object ODSDOCNO1: TIntegerField
      FieldName = 'DOCNO1'
    end
    object ODSDLVRDATE: TDateTimeField
      FieldName = 'DLVRDATE'
    end
    object ODSDLVRTYPE: TIntegerField
      FieldName = 'DLVRTYPE'
    end
    object ODSSGS_NZF: TStringField
      FieldName = 'SGS_NZF'
      Size = 45
    end
    object ODSSGS: TStringField
      FieldName = 'SGS'
      Size = 45
    end
    object ODSCNTRDATE_CZ: TDateTimeField
      FieldName = 'CNTRDATE_CZ'
    end
    object ODSSELDATE: TDateTimeField
      FieldName = 'SELDATE'
    end
    object ODSSUMM: TFloatField
      FieldName = 'SUMM'
    end
    object ODSPRICEM: TFloatField
      FieldName = 'PRICEM'
    end
    object ODSQTYM: TFloatField
      FieldName = 'QTYM'
    end
    object ODSQTYBM: TFloatField
      FieldName = 'QTYBM'
    end
    object ODSSELLER: TFloatField
      FieldName = 'SELLER'
    end
    object ODSENTNAMES_S: TStringField
      FieldName = 'ENTNAMES_S'
    end
    object ODSLICENCE: TStringField
      FieldName = 'LICENCE'
      Size = 25
    end
    object ODSKOD_PLAT: TStringField
      FieldName = 'KOD_PLAT'
    end
    object ODSNAME_PLAT: TStringField
      FieldName = 'NAME_PLAT'
      Size = 300
    end
    object ODSDATE_PR: TStringField
      FieldName = 'DATE_PR'
      Size = 10
    end
    object ODSCROSSTIME: TStringField
      FieldName = 'CROSSTIME'
      Size = 10
    end
  end
  object OracleQueryacct: TOracleQuery
    SQL.Strings = (
      'SELECT ACCTNAME FROM ACCT WHERE ACCT#=:acct')
    Session = OracleSession1
    Variables.Data = {0300000001000000050000003A41434354030000000000000000000000}
    Left = 256
    Top = 232
  end
  object OracleQuerydept: TOracleQuery
    SQL.Strings = (
      'SELECT DEPTNAME FROM DEPT WHERE DEPT#=:dept')
    Session = OracleSession1
    Variables.Data = {0300000001000000050000003A44455054030000000000000000000000}
    Left = 256
    Top = 96
  end
  object OracleQueryprod: TOracleQuery
    SQL.Strings = (
      'SELECT PRODNAME FROM PROD WHERE PROD#=:prod')
    Session = OracleSession1
    Variables.Data = {0300000001000000050000003A50524F44030000000000000000000000}
    Left = 256
    Top = 160
  end
  object ODSdostup: TOracleDataSet
    SQL.Strings = (
      'SELECT EMPLOY.DEPT# dept,'
      '        NVL(DEPT.SHOP,0) shop,'
      '        NVL(DEPT.SECT,0) sect'
      '         FROM   EMPLOY, DEPT'
      '         WHERE  EMPLOY.EMP#  = :emp   AND'
      '        EMPLOY.DEPT# = DEPT.DEPT#')
    Variables.Data = {0300000001000000040000003A454D50030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000300000004000000444550540100000000000400000053484F500100
      000000000400000053454354010000000000}
    Session = OracleSession1
    Left = 384
    Top = 200
    object ODSdostupDEPT: TIntegerField
      FieldName = 'DEPT'
      Required = True
    end
    object ODSdostupSHOP: TFloatField
      FieldName = 'SHOP'
    end
    object ODSdostupSECT: TFloatField
      FieldName = 'SECT'
    end
  end
  object ODS_ish: TOracleDataSet
    SQL.Strings = (
      
        'Select nvl(s.waredept,0) waredept, nvl(s.supplier,0) supplier, e' +
        '.entnames, s.prod#, p.prodnames, nvl(s.docno,0) docno, d.docdate' +
        ','
      
        '       nvl(s.dclr#,0) dclr, s.custdate,nvl(s.suplreg,0) suplreg,' +
        ' NVL(s.cntr#,'#39#39#39#39') cntr,NVL(s.cntr1,'#39#39#39#39') cntr1,s.cntrdate,'
      '       nvl(n.docno,0) ndocno, n.docdate ndocdate,s.condate,'
      
        '       s.supldoc, s.transno, s.oprdate,s.supldate,nvl(s.qtyd,0) ' +
        'qtyd,nvl(s.qtybd,0) qtybd,'
      
        '       nvl(s.qty,0) qty ,nvl(s.qtyb,0) qtyb ,decode(nvl(s.sumg,0' +
        '),0,nvl(s.sum,0),nvl(s.sumg,0)) sumg, nvl(s.sum,0) sumv, nvl(m.a' +
        'cct_db,0) acct_db,  p.prodgr,'
      
        'nvl(n.supplier,0) supplier1 ,nvl(e1.entnames,'#39#39') entname1, nvl(n' +
        '.recipient,0) recipient, nvl(e2.entnames,'#39#39') entname_r,'
      'substr(n.dbuser1,1,8) date_v,'
      
        'n.regdate,nvl(n.spcfk,0) spcfk,nvl(s.spcfreal,0) spcfreal,d.docn' +
        'o1,s.dlvrdate,c.dlvrtype,a2.sgs sgs_nzf ,a1.sgs sgs,z.licence,'
      'cz.cntrdate cntrdate_cz,cz.seldate,'
      
        'nvl(m.sum,0) summ , nvl(d.price,0) pricem ,nvl(d.qty,0) qtym ,nv' +
        'l(d.qtyb,0) qtybm,nvl(cz.seller,0) seller,e3.entnames entnames_s' +
        ','
      
        'uz.kod_plat kod_plat, uz.name_plat name_plat ,decode(uz.date_pr,' +
        'null,'#39'*'#39',to_char(uz.date_pr,'#39'dd.mm.yyyy'#39')) date_pr,'
      
        'decode(uz.crosstime,null,'#39'*'#39',to_char(uz.crosstime,'#39'dd.mm.yyyy'#39'))' +
        ' crosstime'
      ''
      ' '
      ''
      ''
      ''
      
        'from supldoc s,prod p,ent e,mtrdoc d, country c, suplin n,mtrsum' +
        ' m,ent e1,ent e2, ent e3, '
      'suplanls a1, suplanls a2,spcfz z,contractz cz,clientuz uz'
      ''
      'where   s.suplreg=n.suplreg(+)  and s.waredept<>110201 '
      'and s.prod#=p.prod#'
      '--and p.prodgr=6'
      'and s.supplier=e.ent#(+)'
      'and e.cnt#=c.cnt#(+)'
      '--and c.dlvrtype in (3,2)'
      'and n.supplier=e1.ent#(+)'
      'and n.recipient=e2.ent#(+)'
      'and s.sertreg=a1.anlsprm1(+) '
      'and s.anls#=a2.anlsprm1(+) '
      'and to_char(z.cntrz(+))=s.cntr#'
      'and z.spcfreal(+)=s.spcfreal'
      'and z.prod#(+)=s.prod#'
      'and to_char(cz.cntrz(+))=s.cntr# and cz.dopcntr(+)=0'
      'and cz.seller=e3.ent#(+)'
      
        'and uz.docuz(+)=s.supldoc and s.transno=nvl(uz.nom_cont(+),uz.tr' +
        'ansno(+)) and s.condate=to_date(to_char(uz.dateload(+),'#39'dd.mm.yy' +
        'yy'#39'),'#39'dd.mm.yyyy'#39')'
      ' ')
    QBEDefinition.QBEFieldDefs = {
      040000003500000007000000444F434441544501000000000005000000444F43
      4E4F010000000000070000004F5052444154450100000000000500000050524F
      4423010000000000040000005154594401000000000004000000515459420100
      000000000300000051545901000000000007000000414343545F444201000000
      000008000000574152454445505401000000000008000000535550504C494552
      01000000000008000000454E544E414D45530100000000000900000050524F44
      4E414D45530100000000000400000044434C5201000000000008000000435553
      5444415445010000000000070000005355504C52454701000000000004000000
      434E545201000000000005000000434E54523101000000000008000000434E54
      5244415445010000000000060000004E444F434E4F010000000000080000004E
      444F434441544501000000000007000000434F4E444154450100000000000700
      00005355504C444F43010000000000070000005452414E534E4F010000000000
      080000005355504C444154450100000000000500000051545942440100000000
      000400000053554D4701000000000009000000535550504C4945523101000000
      000008000000454E544E414D45310100000000000400000053554D5601000000
      00000600000050524F44475201000000000009000000454E544E414D455F5201
      000000000006000000444154455F560100000000000700000052454744415445
      01000000000009000000524543495049454E5401000000000005000000535043
      464B01000000000008000000535043465245414C01000000000006000000444F
      434E4F3101000000000008000000444C56524441544501000000000008000000
      444C565254595045010000000000070000005347535F4E5A4601000000000003
      000000534753010000000000070000004C4943454E43450100000000000B0000
      00434E5452444154455F435A0100000000000700000053454C44415445010000
      0000000400000053554D4D0100000000000600000050524943454D0100000000
      00040000005154594D01000000000005000000515459424D0100000000000600
      000053454C4C45520100000000000A000000454E544E414D45535F5301000000
      0000080000004B4F445F504C4154010000000000090000004E414D455F504C41
      5401000000000007000000444154455F5052010000000000}
    Cursor = crSQLWait
    Session = OracleSession1
    Left = 112
    Top = 32
    object ODS_ishWAREDEPT: TFloatField
      FieldName = 'WAREDEPT'
    end
    object ODS_ishSUPPLIER: TFloatField
      FieldName = 'SUPPLIER'
    end
    object ODS_ishENTNAMES: TStringField
      FieldName = 'ENTNAMES'
    end
    object ODS_ishPROD: TIntegerField
      FieldName = 'PROD#'
      Required = True
    end
    object ODS_ishPRODNAMES: TStringField
      FieldName = 'PRODNAMES'
      Required = True
    end
    object ODS_ishDOCNO: TFloatField
      FieldName = 'DOCNO'
    end
    object ODS_ishDOCDATE: TDateTimeField
      FieldName = 'DOCDATE'
      Required = True
    end
    object ODS_ishDCLR: TFloatField
      FieldName = 'DCLR'
    end
    object ODS_ishCUSTDATE: TDateTimeField
      FieldName = 'CUSTDATE'
    end
    object ODS_ishSUPLREG: TFloatField
      FieldName = 'SUPLREG'
    end
    object ODS_ishCNTR: TStringField
      FieldName = 'CNTR'
      Size = 15
    end
    object ODS_ishCNTR1: TStringField
      FieldName = 'CNTR1'
      Size = 15
    end
    object ODS_ishCNTRDATE: TDateTimeField
      FieldName = 'CNTRDATE'
    end
    object ODS_ishNDOCNO: TFloatField
      FieldName = 'NDOCNO'
    end
    object ODS_ishNDOCDATE: TDateTimeField
      FieldName = 'NDOCDATE'
    end
    object ODS_ishCONDATE: TDateTimeField
      FieldName = 'CONDATE'
    end
    object ODS_ishSUPLDOC: TStringField
      FieldName = 'SUPLDOC'
      Required = True
      Size = 15
    end
    object ODS_ishTRANSNO: TStringField
      FieldName = 'TRANSNO'
      Required = True
      Size = 15
    end
    object ODS_ishOPRDATE: TDateTimeField
      FieldName = 'OPRDATE'
      Required = True
    end
    object ODS_ishSUPLDATE: TDateTimeField
      FieldName = 'SUPLDATE'
      Required = True
    end
    object ODS_ishQTYD: TFloatField
      FieldName = 'QTYD'
    end
    object ODS_ishQTYBD: TFloatField
      FieldName = 'QTYBD'
    end
    object ODS_ishQTY: TFloatField
      FieldName = 'QTY'
    end
    object ODS_ishQTYB: TFloatField
      FieldName = 'QTYB'
    end
    object ODS_ishSUMG: TFloatField
      FieldName = 'SUMG'
    end
    object ODS_ishACCT_DB: TFloatField
      FieldName = 'ACCT_DB'
    end
    object ODS_ishSUPPLIER1: TFloatField
      FieldName = 'SUPPLIER1'
    end
    object ODS_ishENTNAME1: TStringField
      FieldName = 'ENTNAME1'
    end
    object ODS_ishSUMV: TFloatField
      FieldName = 'SUMV'
    end
    object ODS_ishPRODGR: TIntegerField
      FieldName = 'PRODGR'
    end
    object ODS_ishRECIPIENT1: TFloatField
      FieldName = 'RECIPIENT1'
    end
    object ODS_ishENTNAME_R: TStringField
      FieldName = 'ENTNAME_R'
    end
    object ODS_ishDATE_V: TStringField
      FieldName = 'DATE_V'
      Size = 8
    end
    object ODS_ishREGDATE: TDateTimeField
      FieldName = 'REGDATE'
    end
    object ODS_ishRECIPIENT: TFloatField
      FieldName = 'RECIPIENT'
    end
    object ODS_ishSPCFK: TFloatField
      FieldName = 'SPCFK'
    end
    object ODS_ishSPCFREAL: TFloatField
      FieldName = 'SPCFREAL'
    end
    object ODS_ishDOCNO1: TIntegerField
      FieldName = 'DOCNO1'
    end
    object ODS_ishDLVRDATE: TDateTimeField
      FieldName = 'DLVRDATE'
    end
    object ODS_ishDLVRTYPE: TIntegerField
      FieldName = 'DLVRTYPE'
    end
    object ODS_ishSGS_NZF: TStringField
      FieldName = 'SGS_NZF'
      Size = 45
    end
    object ODS_ishSGS: TStringField
      FieldName = 'SGS'
      Size = 45
    end
    object ODS_ishLICENCE: TStringField
      FieldName = 'LICENCE'
      Size = 25
    end
    object ODS_ishCNTRDATE_CZ: TDateTimeField
      FieldName = 'CNTRDATE_CZ'
    end
    object ODS_ishSELDATE: TDateTimeField
      FieldName = 'SELDATE'
    end
    object ODS_ishSUMM: TFloatField
      FieldName = 'SUMM'
    end
    object ODS_ishPRICEM: TFloatField
      FieldName = 'PRICEM'
    end
    object ODS_ishQTYM: TFloatField
      FieldName = 'QTYM'
    end
    object ODS_ishQTYBM: TFloatField
      FieldName = 'QTYBM'
    end
    object ODS_ishSELLER: TFloatField
      FieldName = 'SELLER'
    end
    object ODS_ishENTNAMES_S: TStringField
      FieldName = 'ENTNAMES_S'
    end
    object ODS_ishKOD_PLAT: TStringField
      FieldName = 'KOD_PLAT'
      Size = 1
    end
    object ODS_ishNAME_PLAT: TStringField
      FieldName = 'NAME_PLAT'
      Size = 1
    end
    object ODS_ishDATE_PR: TDateTimeField
      FieldName = 'DATE_PR'
    end
  end
  object ODS_ish2: TOracleDataSet
    SQL.Strings = (
      
        'Select nvl(s.waredept,0) waredept, nvl(s.supplier,0) supplier, e' +
        '.entnames, s.prod#, p.prodnames, nvl(s.docno,0) docno, null docd' +
        'ate,'
      
        '       nvl(s.dclr#,0) dclr, s.custdate,nvl(s.suplreg,0) suplreg,' +
        ' NVL(s.cntr#,'#39#39#39#39') cntr,NVL(s.cntr1,'#39#39#39#39') cntr1,s.cntrdate,'
      '       nvl(n.docno,0) ndocno, n.docdate ndocdate,s.condate,'
      
        '       s.supldoc, s.transno, s.oprdate,s.supldate,nvl(s.qtyd,0) ' +
        'qtyd,nvl(s.qtybd,0) qtybd, nvl(n.supplier,0) supplier1 ,nvl(e1.e' +
        'ntnames,'#39#39') entname1,'
      
        '       nvl(s.qty,0) qty ,nvl(s.qtyb,0) qtyb ,decode(nvl(s.sumg,0' +
        '),0,nvl(s.sum,0),nvl(s.sumg,0)) sumg,nvl(s.sum,0) sumv, 0 acct_d' +
        'b'
      
        ',  p.prodgr,nvl(n.recipient,0) recipeint1, nvl(e2.entnames,'#39#39') e' +
        'ntname_r,'
      ''
      
        'substr(n.dbuser1,1,8) date_v,nvl(s.spcfreal,0) spcfreal,null doc' +
        'no1,s.dlvrdate,a2.sgs sgs_nzf ,a1.sgs sgs,z.licence,'
      
        'cz.cntrdate cntrdate_cz,cz.seldate,uz.kod_plat kod_plat, uz.name' +
        '_plat name_plat ,'
      
        'decode(uz.date_pr,null,'#39'*'#39',to_char(uz.date_pr,'#39'dd.mm.yyyy'#39'))  da' +
        'te_pr,'
      
        'decode(uz.crosstime,null,'#39'*'#39',to_char(uz.crosstime,'#39'dd.mm.yyyy'#39'))' +
        ' crosstime'
      ''
      '--'#39#39' kod_plat, '#39#39' name_plat'
      ''
      ''
      'n.regdate,'
      
        '0 summ , 0 pricem ,0 qtym ,0 qtybm,nvl(cz.seller,0) seller,e3.en' +
        'tnames entnames_s'
      ''
      ''
      ''
      
        'from supldoc s,prod p,ent e, country c, suplin n,ent e1,ent e2,s' +
        'uplanls a1, suplanls a2,spcfz z,contractz cz,ent e3,clientuz uz'
      ''
      ''
      'where   s.suplreg=n.suplreg(+)  and s.waredept<>110201 '
      ''
      'and s.prod#=p.prod#'
      '--and p.prodgr=6'
      'and s.supplier=e.ent#(+)'
      'and e.cnt#=c.cnt#'
      'and nvl(s.docno,0)=0'
      'and n.supplier=e1.ent#(+)'
      'and n.recipent=e1.ent#(+)'
      'and s.sertreg=a1.anlsprm1(+) '
      'and s.anls#=a2.anlsprm1(+) '
      'and to_char(z.cntrz(+))=s.cntr#'
      'and z.spcfreal(+)=s.spcfreal'
      'and z.prod#(+)=s.prod#'
      'and to_char(cz.cntrz(+))=s.cntr# and cz.dopcntr(+)=0'
      'and cz.seller=e3.ent#(+)'
      
        'and uz.docuz(+)=s.supldoc and s.transno=nvl(uz.nom_cont(+),uz.tr' +
        'ansno(+)) and s.condate=to_date(to_char(uz.dateload(+),'#39'dd.mm.yy' +
        'yy'#39'),'#39'dd.mm.yyyy'#39')'
      ''
      ''
      ' '
      ''
      '')
    QBEDefinition.QBEFieldDefs = {
      040000001C00000007000000444F434441544501000000000005000000444F43
      4E4F010000000000070000004F5052444154450100000000000500000050524F
      4423010000000000040000005154594401000000000004000000515459420100
      000000000300000051545901000000000007000000414343545F444201000000
      000008000000574152454445505401000000000008000000535550504C494552
      01000000000008000000454E544E414D45530100000000000900000050524F44
      4E414D45530100000000000400000044434C5201000000000008000000435553
      5444415445010000000000070000005355504C52454701000000000004000000
      434E545201000000000005000000434E54523101000000000008000000434E54
      5244415445010000000000060000004E444F434E4F010000000000080000004E
      444F434441544501000000000007000000434F4E444154450100000000000700
      00005355504C444F43010000000000070000005452414E534E4F010000000000
      080000005355504C444154450100000000000500000051545942440100000000
      000400000053554D4701000000000009000000535550504C4945523101000000
      000008000000454E544E414D4531010000000000}
    Cursor = crSQLWait
    Session = OracleSession1
    Left = 211
    Top = 33
    object ODS_ish2WAREDEPT: TFloatField
      FieldName = 'WAREDEPT'
    end
    object ODS_ish2SUPPLIER: TFloatField
      FieldName = 'SUPPLIER'
    end
    object ODS_ish2ENTNAMES: TStringField
      FieldName = 'ENTNAMES'
    end
    object ODS_ish2PROD: TIntegerField
      FieldName = 'PROD#'
      Required = True
    end
    object ODS_ish2PRODNAMES: TStringField
      FieldName = 'PRODNAMES'
      Required = True
    end
    object ODS_ish2DOCNO: TFloatField
      FieldName = 'DOCNO'
    end
    object ODS_ish2DOCDATE: TStringField
      FieldName = 'DOCDATE'
      Size = 1
    end
    object ODS_ish2DCLR: TFloatField
      FieldName = 'DCLR'
    end
    object ODS_ish2CUSTDATE: TDateTimeField
      FieldName = 'CUSTDATE'
    end
    object ODS_ish2SUPLREG: TFloatField
      FieldName = 'SUPLREG'
    end
    object ODS_ish2CNTR: TStringField
      FieldName = 'CNTR'
      Size = 15
    end
    object ODS_ish2CNTR1: TStringField
      FieldName = 'CNTR1'
      Size = 15
    end
    object ODS_ish2CNTRDATE: TDateTimeField
      FieldName = 'CNTRDATE'
    end
    object ODS_ish2NDOCNO: TFloatField
      FieldName = 'NDOCNO'
    end
    object ODS_ish2NDOCDATE: TDateTimeField
      FieldName = 'NDOCDATE'
    end
    object ODS_ish2CONDATE: TDateTimeField
      FieldName = 'CONDATE'
    end
    object ODS_ish2SUPLDOC: TStringField
      FieldName = 'SUPLDOC'
      Required = True
      Size = 15
    end
    object ODS_ish2TRANSNO: TStringField
      FieldName = 'TRANSNO'
      Required = True
      Size = 15
    end
    object ODS_ish2OPRDATE: TDateTimeField
      FieldName = 'OPRDATE'
      Required = True
    end
    object ODS_ish2SUPLDATE: TDateTimeField
      FieldName = 'SUPLDATE'
      Required = True
    end
    object ODS_ish2QTYD: TFloatField
      FieldName = 'QTYD'
    end
    object ODS_ish2QTYBD: TFloatField
      FieldName = 'QTYBD'
    end
    object ODS_ish2SUPPLIER1: TFloatField
      FieldName = 'SUPPLIER1'
    end
    object ODS_ish2ENTNAME1: TStringField
      FieldName = 'ENTNAME1'
    end
    object ODS_ish2QTY: TFloatField
      FieldName = 'QTY'
    end
    object ODS_ish2QTYB: TFloatField
      FieldName = 'QTYB'
    end
    object ODS_ish2SUMG: TFloatField
      FieldName = 'SUMG'
    end
    object ODS_ish2ACCT_DB: TFloatField
      FieldName = 'ACCT_DB'
    end
  end
  object ODS_ish_uz: TOracleDataSet
    SQL.Strings = (
      
        'Select nvl(s.waredept,0) waredept, nvl(s.supplier,0) supplier, e' +
        '.entnames, s.prod#, p.prodnames, nvl(s.docno,0) docno, d.docdate' +
        ','
      
        '       nvl(s.dclr#,0) dclr, s.custdate,nvl(s.suplreg,0) suplreg,' +
        ' NVL(s.cntr#,'#39#39#39#39') cntr,NVL(s.cntr1,'#39#39#39#39') cntr1,s.cntrdate,'
      '       nvl(n.docno,0) ndocno, n.docdate ndocdate,s.condate,'
      
        '       s.supldoc, s.transno, s.oprdate,s.supldate,nvl(s.qtyd,0) ' +
        'qtyd,nvl(s.qtybd,0) qtybd,'
      
        '       nvl(s.qty,0) qty ,nvl(s.qtyb,0) qtyb ,decode(nvl(s.sumg,0' +
        '),0,nvl(s.sum,0),nvl(s.sumg,0)) sumg, nvl(s.sum,0) sumv, nvl(m.a' +
        'cct_db,0) acct_db,  p.prodgr,'
      
        'nvl(n.supplier,0) supplier1 ,nvl(e1.entnames,'#39#39') entname1, nvl(n' +
        '.recipient,0) recipient, nvl(e2.entnames,'#39#39') entname_r,'
      'substr(n.dbuser1,1,8) date_v,'
      
        'n.regdate,nvl(n.spcfk,0) spcfk,nvl(s.spcfreal,0) spcfreal,d.docn' +
        'o1,s.dlvrdate,c.dlvrtype,a2.sgs sgs_nzf ,a1.sgs sgs,z.licence,'
      'cz.cntrdate cntrdate_cz,cz.seldate,'
      
        'nvl(m.sum,0) summ , nvl(d.price,0) pricem ,nvl(d.qty,0) qtym ,nv' +
        'l(d.qtyb,0) qtybm,nvl(cz.seller,0) seller,e3.entnames entnames_s' +
        ','
      'uz.kod_plat, uz.name_plat '
      ' '
      ''
      ''
      ''
      
        'from supldoc s,prod p,ent e,mtrdoc d, country c, suplin n,mtrsum' +
        ' m,ent e1,ent e2, ent e3, '
      'suplanls a1, suplanls a2,spcfz z,contractz cz,'
      
        '(select docuz,nvl(nom_cont,transno) transno ,kod_plat,name_plat ' +
        'from clientuz ')
    QBEDefinition.QBEFieldDefs = {
      040000002200000007000000444F434441544501000000000005000000444F43
      4E4F010000000000070000004F5052444154450100000000000500000050524F
      4423010000000000040000005154594401000000000004000000515459420100
      000000000300000051545901000000000007000000414343545F444201000000
      000008000000574152454445505401000000000008000000535550504C494552
      01000000000008000000454E544E414D45530100000000000900000050524F44
      4E414D45530100000000000400000044434C5201000000000008000000435553
      5444415445010000000000070000005355504C52454701000000000004000000
      434E545201000000000005000000434E54523101000000000008000000434E54
      5244415445010000000000060000004E444F434E4F010000000000080000004E
      444F434441544501000000000007000000434F4E444154450100000000000700
      00005355504C444F43010000000000070000005452414E534E4F010000000000
      080000005355504C444154450100000000000500000051545942440100000000
      000400000053554D4701000000000009000000535550504C4945523101000000
      000008000000454E544E414D45310100000000000400000053554D5601000000
      00000600000050524F4447520100000000000A000000524543495049454E5431
      01000000000009000000454E544E414D455F5201000000000006000000444154
      455F560100000000000700000052454744415445010000000000}
    Cursor = crSQLWait
    Session = OracleSession1
    Left = 354
    Top = 33
    object FloatField1: TFloatField
      FieldName = 'WAREDEPT'
    end
    object FloatField2: TFloatField
      FieldName = 'SUPPLIER'
    end
    object StringField1: TStringField
      FieldName = 'ENTNAMES'
    end
    object IntegerField1: TIntegerField
      FieldName = 'PROD#'
      Required = True
    end
    object StringField2: TStringField
      FieldName = 'PRODNAMES'
      Required = True
    end
    object FloatField3: TFloatField
      FieldName = 'DOCNO'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'DOCDATE'
      Required = True
    end
    object FloatField4: TFloatField
      FieldName = 'DCLR'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'CUSTDATE'
    end
    object FloatField5: TFloatField
      FieldName = 'SUPLREG'
    end
    object StringField3: TStringField
      FieldName = 'CNTR'
      Size = 15
    end
    object StringField4: TStringField
      FieldName = 'CNTR1'
      Size = 15
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'CNTRDATE'
    end
    object FloatField6: TFloatField
      FieldName = 'NDOCNO'
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'NDOCDATE'
    end
    object DateTimeField5: TDateTimeField
      FieldName = 'CONDATE'
    end
    object StringField5: TStringField
      FieldName = 'SUPLDOC'
      Required = True
      Size = 15
    end
    object StringField6: TStringField
      FieldName = 'TRANSNO'
      Required = True
      Size = 15
    end
    object DateTimeField6: TDateTimeField
      FieldName = 'OPRDATE'
      Required = True
    end
    object DateTimeField7: TDateTimeField
      FieldName = 'SUPLDATE'
      Required = True
    end
    object FloatField7: TFloatField
      FieldName = 'QTYD'
    end
    object FloatField8: TFloatField
      FieldName = 'QTYBD'
    end
    object FloatField9: TFloatField
      FieldName = 'QTY'
    end
    object FloatField10: TFloatField
      FieldName = 'QTYB'
    end
    object FloatField11: TFloatField
      FieldName = 'SUMG'
    end
    object FloatField12: TFloatField
      FieldName = 'ACCT_DB'
    end
    object FloatField13: TFloatField
      FieldName = 'SUPPLIER1'
    end
    object StringField7: TStringField
      FieldName = 'ENTNAME1'
    end
    object FloatField14: TFloatField
      FieldName = 'SUMV'
    end
    object IntegerField2: TIntegerField
      FieldName = 'PRODGR'
    end
    object FloatField15: TFloatField
      FieldName = 'RECIPIENT1'
    end
    object StringField8: TStringField
      FieldName = 'ENTNAME_R'
    end
    object StringField9: TStringField
      FieldName = 'DATE_V'
      Size = 8
    end
    object DateTimeField8: TDateTimeField
      FieldName = 'REGDATE'
    end
  end
  object ODS_ish2_uz: TOracleDataSet
    SQL.Strings = (
      ' ) uz'
      'where   s.suplreg=n.suplreg(+)  and s.waredept<>110201 '
      'and s.prod#=p.prod#'
      '--and p.prodgr=6'
      'and s.supplier=e.ent#(+)'
      'and e.cnt#=c.cnt#(+)'
      '--and c.dlvrtype in (3,2)'
      'and n.supplier=e1.ent#(+)'
      'and n.recipient=e2.ent#(+)'
      'and s.sertreg=a1.anlsprm1(+) '
      'and s.anls#=a2.anlsprm1(+) '
      'and to_char(z.cntrz(+))=s.cntr#'
      'and z.spcfreal(+)=s.spcfreal'
      'and z.prod#(+)=s.prod#'
      'and to_char(cz.cntrz(+))=s.cntr# and cz.dopcntr(+)=0'
      'and cz.seller=e3.ent#(+)'
      ' '
      'and uz.docuz(+)=s.supldoc and uz.transno(+)=s.transno '
      ''
      '')
    QBEDefinition.QBEFieldDefs = {
      040000001C00000007000000444F434441544501000000000005000000444F43
      4E4F010000000000070000004F5052444154450100000000000500000050524F
      4423010000000000040000005154594401000000000004000000515459420100
      000000000300000051545901000000000007000000414343545F444201000000
      000008000000574152454445505401000000000008000000535550504C494552
      01000000000008000000454E544E414D45530100000000000900000050524F44
      4E414D45530100000000000400000044434C5201000000000008000000435553
      5444415445010000000000070000005355504C52454701000000000004000000
      434E545201000000000005000000434E54523101000000000008000000434E54
      5244415445010000000000060000004E444F434E4F010000000000080000004E
      444F434441544501000000000007000000434F4E444154450100000000000700
      00005355504C444F43010000000000070000005452414E534E4F010000000000
      080000005355504C444154450100000000000500000051545942440100000000
      000400000053554D4701000000000009000000535550504C4945523101000000
      000008000000454E544E414D4531010000000000}
    Cursor = crSQLWait
    Session = OracleSession1
    Left = 444
    Top = 34
    object FloatField16: TFloatField
      FieldName = 'WAREDEPT'
    end
    object FloatField17: TFloatField
      FieldName = 'SUPPLIER'
    end
    object StringField10: TStringField
      FieldName = 'ENTNAMES'
    end
    object IntegerField3: TIntegerField
      FieldName = 'PROD#'
      Required = True
    end
    object StringField11: TStringField
      FieldName = 'PRODNAMES'
      Required = True
    end
    object FloatField18: TFloatField
      FieldName = 'DOCNO'
    end
    object StringField12: TStringField
      FieldName = 'DOCDATE'
      Size = 1
    end
    object FloatField19: TFloatField
      FieldName = 'DCLR'
    end
    object DateTimeField9: TDateTimeField
      FieldName = 'CUSTDATE'
    end
    object FloatField20: TFloatField
      FieldName = 'SUPLREG'
    end
    object StringField13: TStringField
      FieldName = 'CNTR'
      Size = 15
    end
    object StringField14: TStringField
      FieldName = 'CNTR1'
      Size = 15
    end
    object DateTimeField10: TDateTimeField
      FieldName = 'CNTRDATE'
    end
    object FloatField21: TFloatField
      FieldName = 'NDOCNO'
    end
    object DateTimeField11: TDateTimeField
      FieldName = 'NDOCDATE'
    end
    object DateTimeField12: TDateTimeField
      FieldName = 'CONDATE'
    end
    object StringField15: TStringField
      FieldName = 'SUPLDOC'
      Required = True
      Size = 15
    end
    object StringField16: TStringField
      FieldName = 'TRANSNO'
      Required = True
      Size = 15
    end
    object DateTimeField13: TDateTimeField
      FieldName = 'OPRDATE'
      Required = True
    end
    object DateTimeField14: TDateTimeField
      FieldName = 'SUPLDATE'
      Required = True
    end
    object FloatField22: TFloatField
      FieldName = 'QTYD'
    end
    object FloatField23: TFloatField
      FieldName = 'QTYBD'
    end
    object FloatField24: TFloatField
      FieldName = 'SUPPLIER1'
    end
    object StringField17: TStringField
      FieldName = 'ENTNAME1'
    end
    object FloatField25: TFloatField
      FieldName = 'QTY'
    end
    object FloatField26: TFloatField
      FieldName = 'QTYB'
    end
    object FloatField27: TFloatField
      FieldName = 'SUMG'
    end
    object FloatField28: TFloatField
      FieldName = 'ACCT_DB'
    end
  end
end
