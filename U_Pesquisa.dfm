object Frm_pesquisa: TFrm_pesquisa
  Left = 0
  Top = 0
  Caption = 'Formul'#225'rio Pesquisa'
  ClientHeight = 403
  ClientWidth = 810
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  TextHeight = 15
  object Label1: TLabel
    Left = 400
    Top = 216
    Width = 34
    Height = 15
    Caption = 'Label1'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 810
    Height = 81
    Align = alTop
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 806
    object Label2: TLabel
      Left = 192
      Top = 16
      Width = 159
      Height = 17
      Caption = 'Digite o c'#243'digo ou nome:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 41
      Top = 16
      Width = 126
      Height = 17
      Caption = 'Op'#231#245'es de Pesquisa:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object bt_pesquisa: TBitBtn
      Left = 592
      Top = 33
      Width = 82
      Height = 42
      Caption = '&Pesquisar'
      Glyph.Data = {
        DE020000424DDE02000000000000B60000002800000016000000170000000100
        08000000000028020000C30E0000C30E0000200000000000000000FF0000FFFF
        FF0080808000C0C0C00000000000FF000000FFFF00000000FF0000FFFF0045CA
        BF004B737F00D0B4B400CC625700FF31310000CEFF000079FF000029FF005E5E
        FF00BDBDFF00502B2D0000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000010101010101
        0101010101010101010101010101010100000103030303030303030303030303
        0303030404040301000001030303030303030303030303030303040701070401
        0000010303030303030303030303030303040701010704010000010303030303
        0303030303030303040701010707040100000103030303030303030303030304
        0701010707040301000001030303030303030303030304070101070704030301
        0000010303030303030303030304070101070704030303010000010303030303
        0303030304070101070704030303030100000103030303030303030404040307
        0704030303030301000001030303030304040404040404070403030303030301
        0000010303030404060106010104040403030303030303010000010303040106
        0106010101010403030303030303030100000103030406010601060106010403
        0303030303030301000001030406010601010106010601040303030303030301
        0000010304010601060106010601010403030303030303010000010304060106
        0106010601060104030303030303030100000103040106010601060106010104
        0303030303030301000001030304010601010106010604030303030303030301
        0000010303040601060106010601040303030303030303010000010303030404
        0101010604040303030303030303030100000103030303030404040403030303
        0303030303030301000001010101010101010101010101010101010101010101
        0000}
      TabOrder = 0
      OnClick = bt_pesquisaClick
    end
    object bt_imprimir: TBitBtn
      Left = 696
      Top = 33
      Width = 73
      Height = 42
      Caption = '&Imprimir'
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDD0000DDDDDDDDDDDDDDDDDDDD0000DD000DDDDDDDDDD000DD0000D000
        000000000000000D0000D0F8888888888888880D0000D0F8888888888888880D
        0000D0F8888888822899880D0000D0FFFFFFFFFFFFFFFF0D0000D70077777777
        7777007D0000DDD00000000000000DDD0000DDD00FFFFFFFFFF00DDD0000DDDD
        0F00000000F0DDDD0000DDDD0FFFFFFFFFF0DDDD0000DDDD0F00000000F0DDDD
        0000DDDD0FFFFFFFFFF0DDDD0000DDDD0F00FFFFFFF0DDDD0000DDDD0FFFFFFF
        FFF0DDDD0000DDDD000000000000DDDD0000DDDDDDDDDDDDDDDDDDDD0000DDDD
        DDDDDDDDDDDDDDDD0000}
      TabOrder = 1
      OnClick = bt_imprimirClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 352
    Width = 810
    Height = 51
    Align = alBottom
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 351
    ExplicitWidth = 806
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 81
    Width = 810
    Height = 271
    Align = alClient
    DataSource = Form1.Ds_cadastro
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 304
    Top = 370
    Width = 224
    Height = 25
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 3
  end
  object ed_pesquisa: TEdit
    Left = 192
    Top = 39
    Width = 265
    Height = 23
    TabOrder = 4
  end
  object cb_opcao: TComboBox
    Left = 41
    Top = 39
    Width = 145
    Height = 23
    TabOrder = 5
    Items.Strings = (
      'C'#211'DIGO'
      'NOME'
      'TODOS')
  end
  object ActionManager1: TActionManager
    Left = 744
    Top = 224
    StyleName = 'Platform Default'
  end
  object Relatorio: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45390.905703784700000000
    ReportOptions.LastChange = 45390.935007419000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 600
    Top = 256
    Datasets = <
      item
        DataSet = Frx_cadastro
        DataSetName = 'Frx_cadastro'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 253.228512200000000000
          Top = 26.456709100000000000
          Width = 226.771800730000000000
          Height = 26.456711670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de Contatos')
          ParentFont = False
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 476.220780000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Time: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 551.811380000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 638.740570000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        AllowMirrorMode = True
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 204.094620000000000000
        Width = 718.110700000000000000
        DataSet = Frx_cadastro
        DataSetName = 'Frx_cadastro'
        RowCount = 0
        object Frx_cadastroID_CONTATO: TfrxMemoView
          IndexTag = 1
          AllowMirrorMode = True
          Align = baWidth
          AllowVectorExport = True
          Top = 11.338590000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'ID_CONTATO'
          DataSet = Frx_cadastro
          DataSetName = 'Frx_cadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Frx_cadastro."ID_CONTATO"]')
          ParentFont = False
        end
        object Frx_cadastroNOME: TfrxMemoView
          IndexTag = 1
          AllowMirrorMode = True
          Align = baWidth
          AllowVectorExport = True
          Left = 68.031540000000000000
          Top = 11.338590000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'NOME'
          DataSet = Frx_cadastro
          DataSetName = 'Frx_cadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Frx_cadastro."NOME"]')
          ParentFont = False
        end
        object Frx_cadastroTELEFONE: TfrxMemoView
          IndexTag = 1
          AllowMirrorMode = True
          Align = baWidth
          AllowVectorExport = True
          Left = 291.023810000000000000
          Top = 11.338590000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'TELEFONE'
          DataSet = Frx_cadastro
          DataSetName = 'Frx_cadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Frx_cadastro."TELEFONE"]')
          ParentFont = False
        end
        object Frx_cadastroCELULAR: TfrxMemoView
          IndexTag = 1
          AllowMirrorMode = True
          Align = baWidth
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 11.338590000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'CELULAR'
          DataSet = Frx_cadastro
          DataSetName = 'Frx_cadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Frx_cadastro."CELULAR"]')
          ParentFont = False
        end
        object Frx_cadastroEMAIL: TfrxMemoView
          IndexTag = 1
          AllowMirrorMode = True
          Align = baWidth
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 11.338590000000000000
          Width = 136.063097773437500000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'EMAIL'
          DataSet = Frx_cadastro
          DataSetName = 'Frx_cadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Frx_cadastro."EMAIL"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236249300000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120190000000000
          Width = 37.795298830000000000
          Height = 22.677189300000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ID')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 124.724487300000000000
          Top = 0.000008490000000000
          Width = 94.488250730000000000
          Height = 22.677174040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 298.582855220000000000
          Top = 0.000008490000000000
          Width = 94.488250730000000000
          Height = 26.456704040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 480.000305180000000000
          Width = 94.488281250000000000
          Height = 22.677189300000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Celular')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 612.283885530000000000
          Width = 94.488220210000000000
          Height = 22.677189300000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'E-mail')
          ParentFont = False
        end
      end
    end
  end
  object Frx_cadastro: TfrxDBDataset
    UserName = 'Frx_cadastro'
    CloseDataSource = False
    DataSet = Form1.Q_cadastro
    BCDToCurrency = False
    DataSetOptions = []
    Left = 520
    Top = 248
    FieldDefs = <
      item
        FieldName = 'ID_CONTATO'
      end
      item
        FieldName = 'NOME'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'TELEFONE'
        FieldType = fftString
        Size = 15
      end
      item
        FieldName = 'CELULAR'
        FieldType = fftString
        Size = 15
      end
      item
        FieldName = 'EMAIL'
        FieldType = fftString
        Size = 100
      end>
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 448
    Top = 248
  end
end
