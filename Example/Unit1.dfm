object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 473
  ClientWidth = 441
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    441
    473)
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 8
    Top = 40
    Width = 65
    Height = 409
    Anchors = [akLeft, akTop, akBottom]
  end
  object Memo1: TMemo
    Left = 216
    Top = 64
    Width = 217
    Height = 353
    Anchors = [akTop, akRight, akBottom]
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 79
    Top = 24
    Width = 66
    Height = 441
    Anchors = [akLeft, akTop, akBottom]
    Caption = 'Panel1'
    ParentColor = True
    TabOrder = 1
  end
end
