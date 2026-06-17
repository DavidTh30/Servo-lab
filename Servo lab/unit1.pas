{%BuildCommand $(CompPath) $EdFile()}
unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, StdCtrls,
  ExtCtrls, LCLIntf, ComCtrls, BGRABitmap, BGRABitmapTypes, Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit2: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    GroupBox1: TGroupBox;
    Image1: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label3: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label4: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label5: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label6: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label7: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label8: TLabel;
    Label80: TLabel;
    Label9: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Timer1: TTimer;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure FormShow(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Timer1Timer(Sender: TObject);
    procedure Ttt();
  private
    { private declarations }
  public
    { public declarations }
  end;
type
  G_object = record
    Life: Boolean;
    PositionArray: LongInt;
    Current_X : Float;
    Current_Y : Float;
    Type_object:Integer;
    Speed: LongInt;
    end;
  Encoder_object = record
    CurrentScreen: Integer;
    CurrentPosition: Extended;
    PositionOffset: Extended;
    Random_Position: Extended;
    Start_Stoper: Extended;
    End_Stoper: Extended;
    Color_: DWORD;
    end;
var
  Form1: TForm1;
  Mouse_down_x: Extended;
  Mouse_down_y: Extended;
  Mouse_down_r: Extended;
  Mouse_down_Active: integer;
  Mouse_down_oldx: Extended;
  Mouse_down_oldy: Extended;
  Mouse_down_newx: Extended;
  Mouse_down_newy: Extended;
  End_Win: Boolean;
  Old_TickCount: Float;
  New_TickCount: Float;
  FramePerSec: Float;
  FrameDev4: Float;
  PerSec: Float;
  PerSecDev4: Float;
  Po3: array[0..1,0..696] of Extended;
  ServoMotor: array[0..1000] of G_object;
  ServoM: array[0..19] of Encoder_object;
  Servo_Locomotive: Encoder_object;
  Mouse_Down: Boolean;
  X_position: Integer;
  Selection_: Integer;
  Code_Action: Integer;
const
  Po1: array[0..3, 0..1] of Extended =
    (
    (65, -8),
    (-11, -8),
    (-11, 7),
    (65, 7)
    );

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Ttt();
var
  bmp: TBGRABitmap;
  x_ : Integer;
  y_ : Integer;
  i : Integer;
  i2 : Extended;
  c: TBGRAPixel;
  Text_: string;
begin
  bmp := TBGRABitmap.Create(Image1.Width,Image1.Height, ColorToBGRA(rgb(255,255,255)));   //clBtnFace

  bmp.Canvas2D.lineWidth:=1;
  bmp.Canvas2D.strokeStyle ('rgb(55,255,55)');
  bmp.Canvas2D.stroke();

  bmp.Canvas2D.fillStyle(rgb(240,240,240));
  bmp.Canvas2D.fillRect(30,54,1030,12);
  bmp.Canvas2D.fillStyle(rgb(245,245,245));
  bmp.Canvas2D.fillRect(30,57,1030,6);

  bmp.Canvas2D.fillStyle(rgb(240,240,240));
  bmp.Canvas2D.fillRect(1,27,1090,6);
  bmp.Canvas2D.fillStyle(rgb(245,245,245));
  bmp.Canvas2D.fillRect(1,30,1090,3);

  c := ColorToBGRA(rgb(0,0,0));
  bmp.JoinStyle := pjsBevel;
  bmp.PenStyle := psSolid;
  bmp.DrawPolyLineAntialias([PointF(0,0), PointF(0,150)],c,1);
  bmp.DrawPolyLineAntialias([PointF(29,0), PointF(29,150)],c,1);    //30
  bmp.DrawPolyLineAntialias([PointF(1060,0), PointF(1060,150)],c,1);    //1010
  bmp.DrawPolyLineAntialias([PointF(1060+30,0), PointF(1060+30,150)],c,1);

  bmp.Canvas.Font.Name:='Arial';
  bmp.Canvas.Font.Height:=13;
  bmp.FontName := 'Arial';
  bmp.FontFullHeight:=13;
  bmp.FontQuality:= fqFineAntialiasing;
  i:=round(1060/2)-round(bmp.Canvas.TextExtent('8240 mm.').cx/2);
  bmp.DrawPolyLineAntialias([PointF(30,3), PointF(i-1,3)],c,1);
  i:=round(1060/2)+round(bmp.Canvas.TextExtent('8240 mm.').cx/2);
  bmp.DrawPolyLineAntialias([PointF(i+1,3), PointF(1060,3)],c,1);

  i:=round(1060/2)-round(bmp.Canvas.TextExtent('8240 mm.').cx/2);
  bmp.TextOut(i,0,'8240 mm.',ColorToBGRA(rgb(255,0,0)));

  //c := ColorToBGRA(ColorToRGB(clWindowText));
  bmp.Canvas.Font.Name:='Arial';
  bmp.Canvas.Font.Height:=10;
  bmp.FontName := 'Arial';
  bmp.FontFullHeight:=10;
  bmp.FontQuality:= fqFineAntialiasing;
  //bmp.FontQuality := fqFineClearTypeRGB;
  for i:=0 to 19 do
  Begin
    bmp.Canvas2D.fillStyle(ServoM[i].Color_);
    c := ColorToBGRA(rgb(0,0,255));
    x_ := ServoM[i].CurrentScreen;
    y_ := 50;

    bmp.Canvas2D.fillRect(x_,y_,20,20);

    bmp.Canvas2D.strokeStyle ('rgb(0,0,255)');
    bmp.JoinStyle := pjsBevel;
    bmp.PenStyle := psDashDot;    //psDot
    //bmp.Canvas2D.strokeRect(x_,y_,20,20);
    bmp.DrawPolyLineAntialias([PointF(x_+1,y_), PointF(x_+19,y_), PointF(x_+19,y_+19), PointF(x_,y_+19), PointF(x_,y_)],c,1);

    //bmp.TextOut(1,1,'sdasd',c);
    //Text_ := IntToStr(i);
    Text_:=FormatFloat('#00',i);
    bmp.TextOut(x_+5,y_+5,Text_,BGRABlack);

    Text_:=FloatToStr((ServoM[i].Random_Position +ServoM[i].PositionOffset)*1);
    c := ColorToBGRA(ColorToRGB(clBtnText)); //retrieve default text color
    bmp.TextOutAngle(x_+7,y_+25,-450,Text_,c, taLeftJustify);
  end;

  bmp.Canvas2D.fillStyle(Servo_Locomotive.Color_);
  c := ColorToBGRA(rgb(0,0,255));
  x_ := Servo_Locomotive.CurrentScreen;
  y_ := 22;
  bmp.Canvas2D.fillRect(x_,y_,20,20);
  bmp.DrawPolyLineAntialias([PointF(x_+1,y_), PointF(x_+19,y_), PointF(x_+19,y_+19), PointF(x_,y_+19), PointF(x_,y_)],c,1);

  bmp.FontQuality:= fqFineAntialiasing;
  Text_:='L';
  bmp.TextOut(x_+8,y_+5,Text_,BGRABlack);

  Text_:=FloatToStr((Servo_Locomotive.Random_Position +Servo_Locomotive.PositionOffset)*1);
  i:=round(bmp.Canvas.TextExtent(Text_).cx/2);
  x_:=round(x_+(20/2)-i);
  bmp.TextOut(x_-1,y_-10,Text_,BGRABlack);


  bmp.Canvas2D.fillStyle(ServoM[i].Color_);
  bmp.Canvas2D.fillRect(950,150,60,60);
  c := ColorToBGRA(rgb(0,0,255));
  bmp.DrawPolyLineAntialias([PointF(950+3,150+2), PointF(950+58,150+2), PointF(950+58,150+58), PointF(950+2,150+58), PointF(950+2,150+2)],c,2);

  bmp.Canvas.Font.Name:='Arial';
  bmp.Canvas.Font.Height:=30;
  bmp.FontName := 'Arial';
  bmp.FontFullHeight:=30;
  bmp.FontQuality:= fqFineAntialiasing;
  Text_:=FormatFloat('#00',0);
  bmp.TextOut(950+((60/2)-15),150+((60/2)-15),Text_,BGRABlack);

  bmp.FontName := 'Arial';
  bmp.FontFullHeight:=12;
  bmp.FontQuality:= fqFineAntialiasing;

  c := ColorToBGRA(rgb(0,0,0));
  bmp.JoinStyle := pjsBevel;
  bmp.PenStyle := psSolid;
  bmp.DrawPolyLineAntialias([PointF(950-25,150), PointF(950,150)],c,1);
  bmp.DrawPolyLineAntialias([PointF(950-25,150+60), PointF(950,150+60)],c,1);

  i2:=round(bmp.Canvas.TextExtent('160 mm.').cy/2);
  bmp.DrawPolyLineAntialias([PointF(950-12,150), PointF(950-12,150+30-i2)],c,1);
  bmp.DrawPolyLineAntialias([PointF(950-12,150+60), PointF(950-12,150+30+i2)],c,1);

  bmp.Canvas.Font.Name:='Arial';
  bmp.Canvas.Font.Height:=12;
  bmp.FontName := 'Arial';
  bmp.FontFullHeight:=12;
  bmp.FontQuality:= fqFineAntialiasing;
  i:=round(945)-round(bmp.Canvas.TextExtent('160 mm.').cx);
  i2:=round(150+30)-round(bmp.Canvas.TextExtent('160 mm.').cy/2);
  bmp.TextOut(i,i2,'160 mm.',ColorToBGRA(rgb(255,0,0)));


  bmp.DrawPolyLineAntialias([PointF(950,150-25), PointF(950,150)],c,1);
  bmp.DrawPolyLineAntialias([PointF(950+60,150-25), PointF(950+60,150)],c,1);

  i:=round(bmp.Canvas.TextExtent('160 mm.').cx/2);
  bmp.DrawPolyLineAntialias([PointF(950,150-14), PointF(950+26-i,150-14)],c,1);
  bmp.DrawPolyLineAntialias([PointF(950+60,150-14), PointF(950+62-30+i,150-14)],c,1);

  i:=round(950+27)-round(bmp.Canvas.TextExtent('160 mm.').cx/2);
  i2:=round(150-12)-round(bmp.Canvas.TextExtent('160 mm.').cy/2);
  bmp.TextOut(i,i2,'160 mm.',ColorToBGRA(rgb(255,0,0)));

  bmp.Draw(Image1.Canvas,0,0);
  bmp.Free;
  image1.Refresh;

  if Button1.Caption = 'Current screen' then
  begin
    Label1.Caption:=FloatToStr(ServoM[0].CurrentPosition);
    Label2.Caption:=FloatToStr(ServoM[1].CurrentPosition);
    Label3.Caption:=FloatToStr(ServoM[2].CurrentPosition);
    Label4.Caption:=FloatToStr(ServoM[3].CurrentPosition);
    Label5.Caption:=FloatToStr(ServoM[4].CurrentPosition);
    Label6.Caption:=FloatToStr(ServoM[5].CurrentPosition);
    Label7.Caption:=FloatToStr(ServoM[6].CurrentPosition);
    Label8.Caption:=FloatToStr(ServoM[7].CurrentPosition);
    Label9.Caption:=FloatToStr(ServoM[8].CurrentPosition);
    Label10.Caption:=FloatToStr(ServoM[9].CurrentPosition);
    Label11.Caption:=FloatToStr(ServoM[10].CurrentPosition);
    Label12.Caption:=FloatToStr(ServoM[11].CurrentPosition);
    Label13.Caption:=FloatToStr(ServoM[12].CurrentPosition);
    Label14.Caption:=FloatToStr(ServoM[13].CurrentPosition);
    Label15.Caption:=FloatToStr(ServoM[14].CurrentPosition);
    Label16.Caption:=FloatToStr(ServoM[15].CurrentPosition);
    Label17.Caption:=FloatToStr(ServoM[16].CurrentPosition);
    Label18.Caption:=FloatToStr(ServoM[17].CurrentPosition);
    Label19.Caption:=FloatToStr(ServoM[18].CurrentPosition);
    Label20.Caption:=FloatToStr(ServoM[19].CurrentPosition);
  end
  else
  begin
    Label1.Caption:=FloatToStr(ServoM[0].CurrentScreen);
    Label2.Caption:=FloatToStr(ServoM[1].CurrentScreen);
    Label3.Caption:=FloatToStr(ServoM[2].CurrentScreen);
    Label4.Caption:=FloatToStr(ServoM[3].CurrentScreen);
    Label5.Caption:=FloatToStr(ServoM[4].CurrentScreen);
    Label6.Caption:=FloatToStr(ServoM[5].CurrentScreen);
    Label7.Caption:=FloatToStr(ServoM[6].CurrentScreen);
    Label8.Caption:=FloatToStr(ServoM[7].CurrentScreen);
    Label9.Caption:=FloatToStr(ServoM[8].CurrentScreen);
    Label10.Caption:=FloatToStr(ServoM[9].CurrentScreen);
    Label11.Caption:=FloatToStr(ServoM[10].CurrentScreen);
    Label12.Caption:=FloatToStr(ServoM[11].CurrentScreen);
    Label13.Caption:=FloatToStr(ServoM[12].CurrentScreen);
    Label14.Caption:=FloatToStr(ServoM[13].CurrentScreen);
    Label15.Caption:=FloatToStr(ServoM[14].CurrentScreen);
    Label16.Caption:=FloatToStr(ServoM[15].CurrentScreen);
    Label17.Caption:=FloatToStr(ServoM[16].CurrentScreen);
    Label18.Caption:=FloatToStr(ServoM[17].CurrentScreen);
    Label19.Caption:=FloatToStr(ServoM[18].CurrentScreen);
    Label20.Caption:=FloatToStr(ServoM[19].CurrentScreen);

  end;

  Label21.Caption:=FloatToStr(ServoM[0].PositionOffset);
  Label22.Caption:=FloatToStr(ServoM[1].PositionOffset);
  Label23.Caption:=FloatToStr(ServoM[2].PositionOffset);
  Label24.Caption:=FloatToStr(ServoM[3].PositionOffset);
  Label25.Caption:=FloatToStr(ServoM[4].PositionOffset);
  Label26.Caption:=FloatToStr(ServoM[5].PositionOffset);
  Label27.Caption:=FloatToStr(ServoM[6].PositionOffset);
  Label28.Caption:=FloatToStr(ServoM[7].PositionOffset);
  Label29.Caption:=FloatToStr(ServoM[8].PositionOffset);
  Label30.Caption:=FloatToStr(ServoM[9].PositionOffset);
  Label31.Caption:=FloatToStr(ServoM[10].PositionOffset);
  Label32.Caption:=FloatToStr(ServoM[11].PositionOffset);
  Label33.Caption:=FloatToStr(ServoM[12].PositionOffset);
  Label34.Caption:=FloatToStr(ServoM[13].PositionOffset);
  Label35.Caption:=FloatToStr(ServoM[14].PositionOffset);
  Label36.Caption:=FloatToStr(ServoM[15].PositionOffset);
  Label37.Caption:=FloatToStr(ServoM[16].PositionOffset);
  Label38.Caption:=FloatToStr(ServoM[17].PositionOffset);
  Label39.Caption:=FloatToStr(ServoM[18].PositionOffset);
  Label40.Caption:=FloatToStr(ServoM[19].PositionOffset);

  Label41.Caption:=FloatToStr(ServoM[0].Random_Position+ServoM[0].PositionOffset);
  Label42.Caption:=FloatToStr(ServoM[1].Random_Position+ServoM[1].PositionOffset);
  Label43.Caption:=FloatToStr(ServoM[2].Random_Position+ServoM[2].PositionOffset);
  Label44.Caption:=FloatToStr(ServoM[3].Random_Position+ServoM[3].PositionOffset);
  Label45.Caption:=FloatToStr(ServoM[4].Random_Position+ServoM[4].PositionOffset);
  Label46.Caption:=FloatToStr(ServoM[5].Random_Position+ServoM[5].PositionOffset);
  Label47.Caption:=FloatToStr(ServoM[6].Random_Position+ServoM[6].PositionOffset);
  Label48.Caption:=FloatToStr(ServoM[7].Random_Position+ServoM[7].PositionOffset);
  Label49.Caption:=FloatToStr(ServoM[8].Random_Position+ServoM[8].PositionOffset);
  Label50.Caption:=FloatToStr(ServoM[9].Random_Position+ServoM[9].PositionOffset);
  Label51.Caption:=FloatToStr(ServoM[10].Random_Position+ServoM[10].PositionOffset);
  Label52.Caption:=FloatToStr(ServoM[11].Random_Position+ServoM[11].PositionOffset);
  Label53.Caption:=FloatToStr(ServoM[12].Random_Position+ServoM[12].PositionOffset);
  Label54.Caption:=FloatToStr(ServoM[13].Random_Position+ServoM[13].PositionOffset);
  Label55.Caption:=FloatToStr(ServoM[14].Random_Position+ServoM[14].PositionOffset);
  Label56.Caption:=FloatToStr(ServoM[15].Random_Position+ServoM[15].PositionOffset);
  Label57.Caption:=FloatToStr(ServoM[16].Random_Position+ServoM[16].PositionOffset);
  Label58.Caption:=FloatToStr(ServoM[17].Random_Position+ServoM[17].PositionOffset);
  Label59.Caption:=FloatToStr(ServoM[18].Random_Position+ServoM[18].PositionOffset);
  Label60.Caption:=FloatToStr(ServoM[19].Random_Position+ServoM[19].PositionOffset);

  Label62.Caption:=FloatToStr(Servo_Locomotive.PositionOffset);
  Label67.Caption:=FloatToStr(Servo_Locomotive.Random_Position);
  Label63.Caption:=FloatToStr(Servo_Locomotive.Random_Position+Servo_Locomotive.PositionOffset);

  i:=ComboBox1.ItemIndex;
  Label65.Caption:=FloatToStr(ServoM[i].PositionOffset);
  Label64.Caption:=FloatToStr(ServoM[i].Random_Position+ServoM[i].PositionOffset);
  Label72.Caption:=FloatToStr(ServoM[i].Random_Position);

  for i := 0 to 20 do
  begin
    application.ProcessMessages;
  end;

end;

procedure TForm1.FormActivate(Sender: TObject);
var
  i:integer;
begin
    for i := 0 to 12000 do
      begin
        application.ProcessMessages;
      end;
  Ttt;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if Button1.Caption = 'Current position' then
  begin
    Button1.Caption :='Current screen';
    Label1.Caption:=FloatToStr(ServoM[0].CurrentPosition);
    Label2.Caption:=FloatToStr(ServoM[1].CurrentPosition);
    Label3.Caption:=FloatToStr(ServoM[2].CurrentPosition);
    Label4.Caption:=FloatToStr(ServoM[3].CurrentPosition);
    Label5.Caption:=FloatToStr(ServoM[4].CurrentPosition);
    Label6.Caption:=FloatToStr(ServoM[5].CurrentPosition);
    Label7.Caption:=FloatToStr(ServoM[6].CurrentPosition);
    Label8.Caption:=FloatToStr(ServoM[7].CurrentPosition);
    Label9.Caption:=FloatToStr(ServoM[8].CurrentPosition);
    Label10.Caption:=FloatToStr(ServoM[9].CurrentPosition);
    Label11.Caption:=FloatToStr(ServoM[10].CurrentPosition);
    Label12.Caption:=FloatToStr(ServoM[11].CurrentPosition);
    Label13.Caption:=FloatToStr(ServoM[12].CurrentPosition);
    Label14.Caption:=FloatToStr(ServoM[13].CurrentPosition);
    Label15.Caption:=FloatToStr(ServoM[14].CurrentPosition);
    Label16.Caption:=FloatToStr(ServoM[15].CurrentPosition);
    Label17.Caption:=FloatToStr(ServoM[16].CurrentPosition);
    Label18.Caption:=FloatToStr(ServoM[17].CurrentPosition);
    Label19.Caption:=FloatToStr(ServoM[18].CurrentPosition);
    Label20.Caption:=FloatToStr(ServoM[19].CurrentPosition);
  end
  else
  begin
    Button1.Caption := 'Current position';
    Label1.Caption:=FloatToStr(ServoM[0].CurrentScreen);
    Label2.Caption:=FloatToStr(ServoM[1].CurrentScreen);
    Label3.Caption:=FloatToStr(ServoM[2].CurrentScreen);
    Label4.Caption:=FloatToStr(ServoM[3].CurrentScreen);
    Label5.Caption:=FloatToStr(ServoM[4].CurrentScreen);
    Label6.Caption:=FloatToStr(ServoM[5].CurrentScreen);
    Label7.Caption:=FloatToStr(ServoM[6].CurrentScreen);
    Label8.Caption:=FloatToStr(ServoM[7].CurrentScreen);
    Label9.Caption:=FloatToStr(ServoM[8].CurrentScreen);
    Label10.Caption:=FloatToStr(ServoM[9].CurrentScreen);
    Label11.Caption:=FloatToStr(ServoM[10].CurrentScreen);
    Label12.Caption:=FloatToStr(ServoM[11].CurrentScreen);
    Label13.Caption:=FloatToStr(ServoM[12].CurrentScreen);
    Label14.Caption:=FloatToStr(ServoM[13].CurrentScreen);
    Label15.Caption:=FloatToStr(ServoM[14].CurrentScreen);
    Label16.Caption:=FloatToStr(ServoM[15].CurrentScreen);
    Label17.Caption:=FloatToStr(ServoM[16].CurrentScreen);
    Label18.Caption:=FloatToStr(ServoM[17].CurrentScreen);
    Label19.Caption:=FloatToStr(ServoM[18].CurrentScreen);
    Label20.Caption:=FloatToStr(ServoM[19].CurrentScreen);

  end;

end;

procedure TForm1.Button11Click(Sender: TObject);
var
  i:integer;
begin
  i:=ComboBox1.ItemIndex;
  ServoM[i].PositionOffset := StrToFloat(Edit23.Caption)-ServoM[i].Random_Position;
  Ttt;
  if i = 0 then Edit1.Caption :=  FloatToStr(ServoM[i].PositionOffset);
  if i = 1 then Edit2.Caption :=  FloatToStr(ServoM[i].PositionOffset);
  if i = 2 then Edit3.Caption :=  FloatToStr(ServoM[i].PositionOffset);
  if i = 3 then Edit4.Caption :=  FloatToStr(ServoM[i].PositionOffset);
  if i = 4 then Edit5.Caption :=  FloatToStr(ServoM[i].PositionOffset);
  if i = 5 then Edit6.Caption :=  FloatToStr(ServoM[i].PositionOffset);
  if i = 6 then Edit7.Caption :=  FloatToStr(ServoM[i].PositionOffset);
  if i = 7 then Edit8.Caption :=  FloatToStr(ServoM[i].PositionOffset);
  if i = 8 then Edit9.Caption :=  FloatToStr(ServoM[i].PositionOffset);
  if i = 9 then Edit10.Caption :=  FloatToStr(ServoM[i].PositionOffset);
  if i = 10 then Edit11.Caption :=  FloatToStr(ServoM[i].PositionOffset);
  if i = 11 then Edit12.Caption :=  FloatToStr(ServoM[i].PositionOffset);
  if i = 12 then Edit13.Caption :=  FloatToStr(ServoM[i].PositionOffset);
  if i = 13 then Edit14.Caption :=  FloatToStr(ServoM[i].PositionOffset);
  if i = 14 then Edit15.Caption :=  FloatToStr(ServoM[i].PositionOffset);
  if i = 15 then Edit16.Caption :=  FloatToStr(ServoM[i].PositionOffset);
  if i = 16 then Edit17.Caption :=  FloatToStr(ServoM[i].PositionOffset);
  if i = 17 then Edit18.Caption :=  FloatToStr(ServoM[i].PositionOffset);
  if i = 18 then Edit19.Caption :=  FloatToStr(ServoM[i].PositionOffset);
  if i = 19 then Edit20.Caption :=  FloatToStr(ServoM[i].PositionOffset);

  if i = 0 then Edit22.Caption := Edit1.Caption;
  if i = 1 then Edit22.Caption := Edit2.Caption;
  if i = 2 then Edit22.Caption := Edit3.Caption;
  if i = 3 then Edit22.Caption := Edit4.Caption;
  if i = 4 then Edit22.Caption := Edit5.Caption;
  if i = 5 then Edit22.Caption := Edit6.Caption;
  if i = 6 then Edit22.Caption := Edit7.Caption;
  if i = 7 then Edit22.Caption := Edit8.Caption;
  if i = 8 then Edit22.Caption := Edit9.Caption;
  if i = 9 then Edit22.Caption := Edit10.Caption;
  if i = 10 then Edit22.Caption := Edit11.Caption;
  if i = 11 then Edit22.Caption := Edit12.Caption;
  if i = 12 then Edit22.Caption := Edit13.Caption;
  if i = 13 then Edit22.Caption := Edit14.Caption;
  if i = 14 then Edit22.Caption := Edit15.Caption;
  if i = 15 then Edit22.Caption := Edit16.Caption;
  if i = 16 then Edit22.Caption := Edit17.Caption;
  if i = 17 then Edit22.Caption := Edit18.Caption;
  if i = 18 then Edit22.Caption := Edit19.Caption;
  if i = 19 then Edit22.Caption := Edit20.Caption;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  Servo_Locomotive.PositionOffset := 0-Servo_Locomotive.Random_Position;
  Ttt;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ServoM[0].PositionOffset := StrToFloat(Edit1.Caption);
  ServoM[1].PositionOffset := StrToFloat(Edit2.Caption);
  ServoM[2].PositionOffset := StrToFloat(Edit3.Caption);
  ServoM[3].PositionOffset := StrToFloat(Edit4.Caption);
  ServoM[4].PositionOffset := StrToFloat(Edit5.Caption);
  ServoM[5].PositionOffset := StrToFloat(Edit6.Caption);
  ServoM[6].PositionOffset := StrToFloat(Edit7.Caption);
  ServoM[7].PositionOffset := StrToFloat(Edit8.Caption);
  ServoM[8].PositionOffset := StrToFloat(Edit9.Caption);
  ServoM[9].PositionOffset := StrToFloat(Edit10.Caption);
  ServoM[10].PositionOffset := StrToFloat(Edit11.Caption);
  ServoM[11].PositionOffset := StrToFloat(Edit12.Caption);
  ServoM[12].PositionOffset := StrToFloat(Edit13.Caption);
  ServoM[13].PositionOffset := StrToFloat(Edit14.Caption);
  ServoM[14].PositionOffset := StrToFloat(Edit15.Caption);
  ServoM[15].PositionOffset := StrToFloat(Edit16.Caption);
  ServoM[16].PositionOffset := StrToFloat(Edit17.Caption);
  ServoM[17].PositionOffset := StrToFloat(Edit18.Caption);
  ServoM[18].PositionOffset := StrToFloat(Edit19.Caption);
  ServoM[19].PositionOffset := StrToFloat(Edit20.Caption);

  Label21.Caption:=FloatToStr(ServoM[0].PositionOffset);
  Label22.Caption:=FloatToStr(ServoM[1].PositionOffset);
  Label23.Caption:=FloatToStr(ServoM[2].PositionOffset);
  Label24.Caption:=FloatToStr(ServoM[3].PositionOffset);
  Label25.Caption:=FloatToStr(ServoM[4].PositionOffset);
  Label26.Caption:=FloatToStr(ServoM[5].PositionOffset);
  Label27.Caption:=FloatToStr(ServoM[6].PositionOffset);
  Label28.Caption:=FloatToStr(ServoM[7].PositionOffset);
  Label29.Caption:=FloatToStr(ServoM[8].PositionOffset);
  Label30.Caption:=FloatToStr(ServoM[9].PositionOffset);
  Label31.Caption:=FloatToStr(ServoM[10].PositionOffset);
  Label32.Caption:=FloatToStr(ServoM[11].PositionOffset);
  Label33.Caption:=FloatToStr(ServoM[12].PositionOffset);
  Label34.Caption:=FloatToStr(ServoM[13].PositionOffset);
  Label35.Caption:=FloatToStr(ServoM[14].PositionOffset);
  Label36.Caption:=FloatToStr(ServoM[15].PositionOffset);
  Label37.Caption:=FloatToStr(ServoM[16].PositionOffset);
  Label38.Caption:=FloatToStr(ServoM[17].PositionOffset);
  Label39.Caption:=FloatToStr(ServoM[18].PositionOffset);
  Label40.Caption:=FloatToStr(ServoM[19].PositionOffset);
  Ttt;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Servo_Locomotive.PositionOffset := StrToFloat(Edit21.Caption);

  Label62.Caption:=FloatToStr(Servo_Locomotive.PositionOffset);
  Label67.Caption:=FloatToStr(Servo_Locomotive.Random_Position);
  Ttt;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  NotMove:Boolean;
begin
  NotMove:=False;
  Servo_Locomotive.CurrentPosition:=Servo_Locomotive.CurrentPosition-1;
  Servo_Locomotive.Random_Position:=Servo_Locomotive.Random_Position-1;

  Servo_Locomotive.CurrentScreen:=Round(Servo_Locomotive.CurrentPosition/8);

  if (Servo_Locomotive.CurrentScreen <=1) then begin Servo_Locomotive.CurrentScreen := 1; NotMove:=True; end;

  if (NotMove = true) and ((Servo_Locomotive.CurrentScreen * 8) > Servo_Locomotive.CurrentPosition) then
  begin
    Servo_Locomotive.CurrentPosition:=Servo_Locomotive.CurrentPosition+1;
    Servo_Locomotive.Random_Position:=Servo_Locomotive.Random_Position+1;
  end;

  Ttt;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  NotMove:Boolean;
begin
  NotMove:=False;
  Servo_Locomotive.CurrentPosition:=Servo_Locomotive.CurrentPosition+1;
  Servo_Locomotive.Random_Position:=Servo_Locomotive.Random_Position+1;

  Servo_Locomotive.CurrentScreen:=Round(Servo_Locomotive.CurrentPosition/8);

  if (Servo_Locomotive.CurrentScreen >=1060+30-20) then begin Servo_Locomotive.CurrentScreen := 1060+30-20; NotMove:=True; end;

  if (NotMove = true) and ((Servo_Locomotive.CurrentScreen * 8) < Servo_Locomotive.CurrentPosition) then
  begin
    Servo_Locomotive.CurrentPosition:=Servo_Locomotive.CurrentPosition-1;
    Servo_Locomotive.Random_Position:=Servo_Locomotive.Random_Position-1;
  end;

  Ttt;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  i:integer;
begin

  i:=ComboBox1.ItemIndex;
  ServoM[i].PositionOffset := StrToFloat(Edit22.Caption);
  Label65.Caption:=FloatToStr(ServoM[i].PositionOffset);
  Ttt;

  if i = 0 then Edit1.Caption :=  Edit22.Caption;
  if i = 1 then Edit2.Caption :=  Edit22.Caption;
  if i = 2 then Edit3.Caption :=  Edit22.Caption;
  if i = 3 then Edit4.Caption :=  Edit22.Caption;
  if i = 4 then Edit5.Caption :=  Edit22.Caption;
  if i = 5 then Edit6.Caption :=  Edit22.Caption;
  if i = 6 then Edit7.Caption :=  Edit22.Caption;
  if i = 7 then Edit8.Caption :=  Edit22.Caption;
  if i = 8 then Edit9.Caption :=  Edit22.Caption;
  if i = 9 then Edit10.Caption :=  Edit22.Caption;
  if i = 10 then Edit11.Caption :=  Edit22.Caption;
  if i = 11 then Edit12.Caption :=  Edit22.Caption;
  if i = 12 then Edit13.Caption :=  Edit22.Caption;
  if i = 13 then Edit14.Caption :=  Edit22.Caption;
  if i = 14 then Edit15.Caption :=  Edit22.Caption;
  if i = 15 then Edit16.Caption :=  Edit22.Caption;
  if i = 16 then Edit17.Caption :=  Edit22.Caption;
  if i = 17 then Edit18.Caption :=  Edit22.Caption;
  if i = 18 then Edit19.Caption :=  Edit22.Caption;
  if i = 19 then Edit20.Caption :=  Edit22.Caption;
end;

procedure TForm1.Button7Click(Sender: TObject);
var
  NotMove:Boolean;
begin
  NotMove:=False;
  Selection_:=ComboBox1.ItemIndex;
  ServoM[Selection_].CurrentPosition:=ServoM[Selection_].CurrentPosition+1;
  ServoM[Selection_].Random_Position:=ServoM[Selection_].Random_Position+1;

  ServoM[Selection_].CurrentScreen:=Round(ServoM[Selection_].CurrentPosition/8);

  if (Selection_>0) and (Selection_<19) and (ServoM[Selection_].CurrentScreen >=ServoM[Selection_+1].CurrentScreen-20) then begin ServoM[Selection_].CurrentScreen := ServoM[Selection_+1].CurrentScreen -20; end;
  if (Selection_>0) and (Selection_<19) and (ServoM[Selection_].CurrentPosition > ServoM[Selection_+1].CurrentPosition-160) then
  begin
    NotMove:=True;
  end;


  if (Selection_=0) and (ServoM[Selection_].CurrentScreen  >=ServoM[Selection_+1].CurrentScreen-20) then begin ServoM[Selection_].CurrentScreen := ServoM[Selection_+1].CurrentScreen -20; end;
  if (Selection_=0) and (ServoM[Selection_].CurrentPosition  > ServoM[Selection_+1].CurrentPosition-160) then
  begin
    NotMove:=True;
  end;


  if (Selection_=19) and (ServoM[Selection_].CurrentScreen  >=1060-20) then begin ServoM[Selection_].CurrentScreen := 1060-20; end;
  if (Selection_=19) and (ServoM[Selection_].CurrentPosition  > 8320) then
  begin
    NotMove:=True;
  end;

  if (NotMove = true) then
  begin
    ServoM[Selection_].CurrentPosition:=ServoM[Selection_].CurrentPosition-1;
    ServoM[Selection_].Random_Position:=ServoM[Selection_].Random_Position-1;
  end;

  Ttt;
end;

procedure TForm1.Button8Click(Sender: TObject);
var
  NotMove:Boolean;
begin
  NotMove:=False;
  Selection_:=ComboBox1.ItemIndex;
  ServoM[Selection_].CurrentPosition:=ServoM[Selection_].CurrentPosition-1;
  ServoM[Selection_].Random_Position:=ServoM[Selection_].Random_Position-1;

  ServoM[Selection_].CurrentScreen:=Round(ServoM[Selection_].CurrentPosition/8);


  if (Selection_>0) and (Selection_<19) and (ServoM[Selection_].CurrentScreen <=ServoM[Selection_-1].CurrentScreen+20) then begin ServoM[Selection_].CurrentScreen := ServoM[Selection_-1].CurrentScreen +20; end;
  if (Selection_>0) and (Selection_<19) and (ServoM[Selection_].CurrentPosition < ServoM[Selection_-1].CurrentPosition+160) then
  begin
    NotMove:=True;
  end;

  if (Selection_=0) and (ServoM[Selection_].CurrentScreen  <=30) then begin ServoM[Selection_].CurrentScreen := 30; end;
  if (Selection_=0) and (ServoM[Selection_].CurrentPosition  < 240) then
  begin
    NotMove:=True;
  end;

  if (Selection_=19) and (ServoM[Selection_].CurrentScreen <=ServoM[Selection_-1].CurrentScreen+20) then begin ServoM[Selection_].CurrentScreen := ServoM[Selection_-1].CurrentScreen +20; end;
  if (Selection_=19) and (ServoM[Selection_].CurrentPosition < ServoM[Selection_-1].CurrentPosition+160) then
  begin
    NotMove:=True;
  end;

  if (NotMove = true) then
  begin
    ServoM[Selection_].CurrentPosition:=ServoM[Selection_].CurrentPosition+1;
    ServoM[Selection_].Random_Position:=ServoM[Selection_].Random_Position+1;
  end;

  Ttt;

end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  if Button9.Caption='Search Knife' then
  begin
    label66.Caption:='Action = 0';
    label66.Caption:=label66.Caption+chr(13)+'Current Locomotive position = ' + FloatToStr(Servo_Locomotive.CurrentPosition);
    label66.Caption:=label66.Caption+chr(13)+'Current Screen Locomotive = ' + FloatToStr(Servo_Locomotive.CurrentScreen);
    label66.Caption:=label66.Caption+chr(13)+'Current encoder Locomotive = ' + FloatToStr(Servo_Locomotive.Random_Position);
    label66.Caption:=label66.Caption+chr(13)+'Offset Locomotive = ' + FloatToStr(Servo_Locomotive.PositionOffset);
    Selection_:=0;
    Code_Action:=0;
    New_TickCount := LCLIntf.GetTickCount;
    Old_TickCount := New_TickCount;
    //label66.Caption:=label66.Caption+chr(13)+'LCLIntf.GetTickCount = ' + FloatToStr(New_TickCount) + ' ' + FloatToStr(Old_TickCount);
    Timer1.Enabled:=True;
    Button9.Caption:='Stop Search';
  end
  else
  begin
    Timer1.Enabled:=False;
    Button9.Caption:='Search Knife';
  end;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
var
  i:integer;
begin
  Ttt();
  i:=ComboBox1.ItemIndex;
  Edit23.Caption := '0';
  Label69.Caption := 'Knife number ' + FormatFloat('#00',i);
  if i = 0 then Edit22.Caption :=  Edit1.Caption;
  if i = 1 then Edit22.Caption :=  Edit2.Caption;
  if i = 2 then Edit22.Caption :=  Edit3.Caption;
  if i = 3 then Edit22.Caption :=  Edit4.Caption;
  if i = 4 then Edit22.Caption :=  Edit5.Caption;
  if i = 5 then Edit22.Caption :=  Edit6.Caption;
  if i = 6 then Edit22.Caption :=  Edit7.Caption;
  if i = 7 then Edit22.Caption :=  Edit8.Caption;
  if i = 8 then Edit22.Caption :=  Edit9.Caption;
  if i = 9 then Edit22.Caption :=  Edit10.Caption;
  if i = 10 then Edit22.Caption :=  Edit11.Caption;
  if i = 11 then Edit22.Caption :=  Edit12.Caption;
  if i = 12 then Edit22.Caption :=  Edit13.Caption;
  if i = 13 then Edit22.Caption :=  Edit14.Caption;
  if i = 14 then Edit22.Caption :=  Edit15.Caption;
  if i = 15 then Edit22.Caption :=  Edit16.Caption;
  if i = 16 then Edit22.Caption :=  Edit17.Caption;
  if i = 17 then Edit22.Caption :=  Edit18.Caption;
  if i = 18 then Edit22.Caption :=  Edit19.Caption;
  if i = 19 then Edit22.Caption :=  Edit20.Caption;
end;

procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  End_Win:=True;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: boolean);
begin
  End_Win:=True;
end;

procedure TForm1.FormShow(Sender: TObject);
var
  y_ : Extended;
  i : Integer;
begin
  Mouse_Down:=False;
  X_position:=0;
  Old_TickCount:=0;
  New_TickCount:=0;
  for i:=0 to Image1.Width do
  begin
    Po3[0,i]:=0;
    Po3[1,i]:=0;
  end;
  for i:=5 to Image1.Width-10 do
  begin
    y_:= sin(i/(30*1))*(30*1);
    Po3[0,i]:=(i);
    Po3[1,i]:=(y_)+125;
  end;
  for i:=0 To 1000 do
  begin
    ServoMotor[i].Life:=True;
    ServoMotor[i].PositionArray:=0;
    ServoMotor[i].Current_X:=0;
    ServoMotor[i].Current_Y:=0;
    ServoMotor[i].Speed:=2;
    ServoMotor[i].Type_object:=0;
  end;
  ServoMotor[1].Life:=True;
  ServoMotor[2].Life:=True;
  End_Win:=False;

  Randomize;
  for i:=0 To 19 do
  begin
    ServoM[i].PositionOffset:=Random(20000 - 5) + 5;       //Ramdom Form 5 to 20000
    ServoM[i].CurrentScreen:=Random(30) + (i*50)+30;       //Begin position much be over locomotive position
    ServoM[i].CurrentPosition:=ServoM[i].CurrentScreen*8;
    ServoM[i].Random_Position:=((ServoM[i].CurrentScreen+ServoM[i].PositionOffset)*11);
    ServoM[i].PositionOffset:=0;
    ServoM[i].Start_Stoper:=0;
    ServoM[i].End_Stoper:=0;
    //ServoM[i].Color_ := rgb(Random(255),Random(255),Random(255));
    ServoM[i].Color_ := rgb(220,220,220);

    Servo_Locomotive.PositionOffset:=0;
    Servo_Locomotive.CurrentScreen:=1;
    Servo_Locomotive.CurrentPosition:=8;
    Servo_Locomotive.Random_Position:=Random(20000 - 5);
    Servo_Locomotive.Start_Stoper:=Servo_Locomotive.Random_Position;
    Servo_Locomotive.End_Stoper:=Servo_Locomotive.Random_Position+8552;
    Servo_Locomotive.PositionOffset:=(-1)*Servo_Locomotive.Random_Position;
    Servo_Locomotive.Color_:=rgb(160,220,160);
    Edit21.Caption:=FloatToStr(Servo_Locomotive.PositionOffset);

  end;
end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  i:Integer;
begin
  for i:= 0 to 19 do
  begin
    if (ServoM[i].CurrentScreen<= x) and (ServoM[i].CurrentScreen+20>=x) and (50<= y) and (50+20>= y) then
    begin
      Selection_ := i;
      Mouse_Down := True;
      X_position := X;
      ComboBox1.ItemIndex:=i;
      Edit23.Caption := '0';
      Label69.Caption := 'Knife number ' + FormatFloat('#00',i);
      Label64.Caption := FloatToStr(ServoM[i].Random_Position+ServoM[i].PositionOffset);
      Label72.Caption := FloatToStr(ServoM[i].Random_Position);
      Label65.Caption := FloatToStr(ServoM[i].PositionOffset);
      Timer1.Enabled := False;
      Button9.Caption:='Search Knife';
    end;
  end;
  if Selection_ = 0 then Edit22.Caption := Edit1.Caption;
  if Selection_ = 1 then Edit22.Caption := Edit2.Caption;
  if Selection_ = 2 then Edit22.Caption := Edit3.Caption;
  if Selection_ = 3 then Edit22.Caption := Edit4.Caption;
  if Selection_ = 4 then Edit22.Caption := Edit5.Caption;
  if Selection_ = 5 then Edit22.Caption := Edit6.Caption;
  if Selection_ = 6 then Edit22.Caption := Edit7.Caption;
  if Selection_ = 7 then Edit22.Caption := Edit8.Caption;
  if Selection_ = 8 then Edit22.Caption := Edit9.Caption;
  if Selection_ = 9 then Edit22.Caption := Edit10.Caption;
  if Selection_ = 10 then Edit22.Caption := Edit11.Caption;
  if Selection_ = 11 then Edit22.Caption := Edit12.Caption;
  if Selection_ = 12 then Edit22.Caption := Edit13.Caption;
  if Selection_ = 13 then Edit22.Caption := Edit14.Caption;
  if Selection_ = 14 then Edit22.Caption := Edit15.Caption;
  if Selection_ = 15 then Edit22.Caption := Edit16.Caption;
  if Selection_ = 16 then Edit22.Caption := Edit17.Caption;
  if Selection_ = 17 then Edit22.Caption := Edit18.Caption;
  if Selection_ = 18 then Edit22.Caption := Edit19.Caption;
  if Selection_ = 19 then Edit22.Caption := Edit20.Caption;
  if (Servo_Locomotive.CurrentScreen<= x) and (Servo_Locomotive.CurrentScreen+20>=x) and (22<= y) and (22+20>= y) then
  begin
    Selection_:=20;
    Mouse_Down:=True;
    X_position:=X;
    Timer1.Enabled:=False;
    Button9.Caption:='Search Knife';
  end;
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  i:Integer;
  Chk_: boolean;
  OldCurrentPosition:Extended;
begin
  Chk_:=False;

  if (Mouse_Down = True) then
  begin
    if (Selection_>0) and (Selection_<19) and (ServoM[Selection_].CurrentScreen+(X-X_position) >=ServoM[Selection_+1].CurrentScreen-20) then ServoM[Selection_].CurrentScreen := ServoM[Selection_+1].CurrentScreen -20;
    if (Selection_>0) and (Selection_<19) and (ServoM[Selection_].CurrentScreen+(X-X_position) <=ServoM[Selection_-1].CurrentScreen+20) then ServoM[Selection_].CurrentScreen := ServoM[Selection_-1].CurrentScreen +20;
    if (Selection_>0) and (Selection_<19) and (ServoM[Selection_].CurrentScreen+(X-X_position) <=ServoM[Selection_+1].CurrentScreen-20) and
       (ServoM[Selection_].CurrentScreen+(X-X_position) >=ServoM[Selection_-1].CurrentScreen+20) then
      ServoM[Selection_].CurrentScreen:=ServoM[Selection_].CurrentScreen+(X-X_position);
    if (Selection_=0) and (ServoM[Selection_].CurrentScreen+(X-X_position) >=ServoM[Selection_+1].CurrentScreen-20) then ServoM[Selection_].CurrentScreen := ServoM[Selection_+1].CurrentScreen -20;
    if (Selection_=0) and (ServoM[Selection_].CurrentScreen+(X-X_position) <=30) then ServoM[Selection_].CurrentScreen := 30;
    if (Selection_=0) and (ServoM[Selection_].CurrentScreen+(X-X_position) <=ServoM[Selection_+1].CurrentScreen-20)
        and (ServoM[Selection_].CurrentScreen+(X-X_position) >=30) then
      ServoM[Selection_].CurrentScreen:=ServoM[Selection_].CurrentScreen+(X-X_position);
    if (Selection_=19) and (ServoM[Selection_].CurrentScreen+(X-X_position) <=ServoM[Selection_-1].CurrentScreen+20) then ServoM[Selection_].CurrentScreen := ServoM[Selection_-1].CurrentScreen +20;
    if (Selection_=19) and (ServoM[Selection_].CurrentScreen+(X-X_position) >=1060-20) then ServoM[Selection_].CurrentScreen := 1060-20;
    if (Selection_=19) and (ServoM[Selection_].CurrentScreen+(X-X_position) >=ServoM[Selection_-1].CurrentScreen+20)
        and (ServoM[Selection_].CurrentScreen+(X-X_position) <=1060-20) then
      ServoM[Selection_].CurrentScreen:=ServoM[Selection_].CurrentScreen+(X-X_position);

    if (Selection_=20) and (Servo_Locomotive.CurrentScreen+(X-X_position) <=1) then Servo_Locomotive.CurrentScreen := 1;
    if (Selection_=20) and (Servo_Locomotive.CurrentScreen+(X-X_position) >=1060+30-20) then Servo_Locomotive.CurrentScreen := 1060+30-20;
    if (Selection_=20) and (Servo_Locomotive.CurrentScreen+(X-X_position) >=1) and (Servo_Locomotive.CurrentScreen+(X-X_position) <=1060+30-20) then
      Servo_Locomotive.CurrentScreen:=Servo_Locomotive.CurrentScreen+(X-X_position);

    if (Selection_>=0) and (Selection_<=19) then
    begin
      X_position:=X;
      OldCurrentPosition:=ServoM[Selection_].CurrentPosition;
      ServoM[Selection_].CurrentPosition:=ServoM[Selection_].CurrentScreen*8;
      ServoM[Selection_].Random_Position:=ServoM[Selection_].Random_Position+(ServoM[Selection_].CurrentPosition-OldCurrentPosition);
    end;
    if (Selection_=20) then
    begin
      X_position:=X;
      OldCurrentPosition:=Servo_Locomotive.CurrentPosition;
      Servo_Locomotive.CurrentPosition:=Servo_Locomotive.CurrentScreen*8;
      Servo_Locomotive.Random_Position:=Servo_Locomotive.Random_Position+(Servo_Locomotive.CurrentPosition-OldCurrentPosition);
    end;
    Ttt;
  end;

   for i:= 0 to 19 do
  begin
    if (ServoM[i].CurrentScreen<= x) and (ServoM[i].CurrentScreen+20>=x) and (50<= y) and (50+20>= y) then
    begin
      Label61.Caption:=IntToStr(i) + ' ' + IntToStr(X) + ' ' + IntToStr(X_position) + ' ' + IntToStr(ServoM[i].CurrentScreen);
      Chk_:=True;
    end;
  end;
  if (Servo_Locomotive.CurrentScreen<=x) and (Servo_Locomotive.CurrentScreen+20>=x) and (22<=y) and (22+20>=y) then
  begin
    Label61.Caption:='Locomotive' + ' ' + IntToStr(X) + ' ' + IntToStr(X_position) + ' ' + IntToStr(Servo_Locomotive.CurrentScreen);
    Chk_:=True;
  end;
  if (Chk_ = False) and (Label61.Caption<>'') then Label61.Caption:='';
end;

procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Mouse_Down:=False;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  NotMove:Boolean;
begin
  New_TickCount := LCLIntf.GetTickCount;
  NotMove:=False;
  if Code_Action = 0 then
  begin
    Servo_Locomotive.CurrentPosition := Servo_Locomotive.CurrentPosition+New_TickCount-Old_TickCount;
    Servo_Locomotive.Random_Position := Servo_Locomotive.Random_Position+New_TickCount-Old_TickCount;
    if Servo_Locomotive.Random_Position >= Servo_Locomotive.End_Stoper then
    begin
      Servo_Locomotive.Random_Position := Servo_Locomotive.End_Stoper;
      Servo_Locomotive.CurrentPosition := 8552+8;
      Code_Action:=1;
    end;
    Servo_Locomotive.CurrentScreen := Round(Servo_Locomotive.CurrentPosition/8);
  end;

  if Code_Action = 1 then
  begin
    label66.Caption:='Action = 1';
    label66.Caption:=label66.Caption+chr(13)+'Current Locomotive position = ' + FloatToStr(Servo_Locomotive.CurrentPosition);
    label66.Caption:=label66.Caption+chr(13)+'Current Screen Locomotive = ' + FloatToStr(Servo_Locomotive.CurrentScreen);
    label66.Caption:=label66.Caption+chr(13)+'Current encoder Locomotive = ' + FloatToStr(Servo_Locomotive.Random_Position);
    label66.Caption:=label66.Caption+chr(13)+'Offset Locomotive = ' + FloatToStr(Servo_Locomotive.PositionOffset);
    if New_TickCount-Old_TickCount >= 1000 then
    begin
      Code_Action:=2;
      Old_TickCount := New_TickCount
    end;
  end;

  if Code_Action = 2 then
  begin
    label66.Caption:='Action = 2';
    label66.Caption:=label66.Caption+chr(13)+'Current Locomotive position = ' + FloatToStr(Servo_Locomotive.CurrentPosition);
    label66.Caption:=label66.Caption+chr(13)+'Current Screen Locomotive = ' + FloatToStr(Servo_Locomotive.CurrentScreen);
    label66.Caption:=label66.Caption+chr(13)+'Current encoder Locomotive = ' + FloatToStr(Servo_Locomotive.Random_Position);
    label66.Caption:=label66.Caption+chr(13)+'Offset Locomotive = ' + FloatToStr(Servo_Locomotive.PositionOffset);
    Servo_Locomotive.CurrentPosition := Servo_Locomotive.CurrentPosition-(New_TickCount-Old_TickCount);
    Servo_Locomotive.Random_Position := Servo_Locomotive.Random_Position-(New_TickCount-Old_TickCount);
    if Servo_Locomotive.Random_Position <= Servo_Locomotive.Start_Stoper  then
    begin
      Servo_Locomotive.Random_Position := Servo_Locomotive.Start_Stoper;
      Servo_Locomotive.CurrentPosition := 8;
      Code_Action:=3;
    end;
    Servo_Locomotive.CurrentScreen:=Round(Servo_Locomotive.CurrentPosition/8);
  end;

  if Code_Action = 3 then
  begin
    label66.Caption:='Action = 3';
    label66.Caption:=label66.Caption+chr(13)+'Current Locomotive position = ' + FloatToStr(Servo_Locomotive.CurrentPosition);
    label66.Caption:=label66.Caption+chr(13)+'Current Screen Locomotive = ' + FloatToStr(Servo_Locomotive.CurrentScreen);
    label66.Caption:=label66.Caption+chr(13)+'Current encoder Locomotive = ' + FloatToStr(Servo_Locomotive.Random_Position);
    label66.Caption:=label66.Caption+chr(13)+'Offset Locomotive = ' + FloatToStr(Servo_Locomotive.PositionOffset);
    if New_TickCount-Old_TickCount >= 1000 then
    begin
      Code_Action:=4;
      Old_TickCount := New_TickCount
    end;
  end;

  if Code_Action = 4 then
  begin
    label66.Caption:='Action = 4';
    label66.Caption:=label66.Caption+chr(13)+'Current Locomotive position = ' + FloatToStr(Servo_Locomotive.CurrentPosition);
    label66.Caption:=label66.Caption+chr(13)+'Current Screen Locomotive = ' + FloatToStr(Servo_Locomotive.CurrentScreen);
    label66.Caption:=label66.Caption+chr(13)+'Current encoder Locomotive = ' + FloatToStr(Servo_Locomotive.Random_Position);
    label66.Caption:=label66.Caption+chr(13)+'Offset Locomotive = ' + FloatToStr(Servo_Locomotive.PositionOffset);
    label66.Caption:=label66.Caption+chr(13)+'Current knife position = ??????';
    label66.Caption:=label66.Caption+chr(13)+'Knife = ??';
    Servo_Locomotive.CurrentPosition:=Servo_Locomotive.CurrentPosition+Round((New_TickCount-Old_TickCount)/2);
    Servo_Locomotive.Random_Position:=Servo_Locomotive.Random_Position+Round((New_TickCount-Old_TickCount)/2);
    if Servo_Locomotive.CurrentPosition >= ServoM[Selection_].CurrentPosition then
    begin
      Servo_Locomotive.CurrentPosition:=ServoM[Selection_].CurrentPosition;
      Servo_Locomotive.Random_Position:=Servo_Locomotive.Start_Stoper+Servo_Locomotive.CurrentPosition-8;
      ServoM[Selection_].PositionOffset:=(Servo_Locomotive.Random_Position+Servo_Locomotive.PositionOffset-232)-ServoM[Selection_].Random_Position;
      Code_Action:=5;
    end;
    Servo_Locomotive.CurrentScreen:=Round(Servo_Locomotive.CurrentPosition/8);
  end;

  if Code_Action = 5 then
  begin
    label66.Caption:='Action = 5';
    label66.Caption:=label66.Caption+chr(13)+'Current Locomotive position = ' + FloatToStr(Servo_Locomotive.CurrentPosition);
    label66.Caption:=label66.Caption+chr(13)+'Current Screen Locomotive = ' + FloatToStr(Servo_Locomotive.CurrentScreen);
    label66.Caption:=label66.Caption+chr(13)+'Current encoder Locomotive = ' + FloatToStr(Servo_Locomotive.Random_Position);
    label66.Caption:=label66.Caption+chr(13)+'Offset Locomotive = ' + FloatToStr(Servo_Locomotive.PositionOffset);
    label66.Caption:=label66.Caption+chr(13)+'Current knife position = ' + FloatToStr(ServoM[Selection_].CurrentPosition);
    label66.Caption:=label66.Caption+chr(13)+'Knife = ' + IntToStr(Selection_);
    if Selection_ = 0 then Edit1.Caption :=  FloatToStr(ServoM[Selection_].PositionOffset);
    if Selection_ = 1 then Edit2.Caption :=  FloatToStr(ServoM[Selection_].PositionOffset);
    if Selection_ = 2 then Edit3.Caption :=  FloatToStr(ServoM[Selection_].PositionOffset);
    if Selection_ = 3 then Edit4.Caption :=  FloatToStr(ServoM[Selection_].PositionOffset);
    if Selection_ = 4 then Edit5.Caption :=  FloatToStr(ServoM[Selection_].PositionOffset);
    if Selection_ = 5 then Edit6.Caption :=  FloatToStr(ServoM[Selection_].PositionOffset);
    if Selection_ = 6 then Edit7.Caption :=  FloatToStr(ServoM[Selection_].PositionOffset);
    if Selection_ = 7 then Edit8.Caption :=  FloatToStr(ServoM[Selection_].PositionOffset);
    if Selection_ = 8 then Edit9.Caption :=  FloatToStr(ServoM[Selection_].PositionOffset);
    if Selection_ = 9 then Edit10.Caption :=  FloatToStr(ServoM[Selection_].PositionOffset);
    if Selection_ = 10 then Edit11.Caption :=  FloatToStr(ServoM[Selection_].PositionOffset);
    if Selection_ = 11 then Edit12.Caption :=  FloatToStr(ServoM[Selection_].PositionOffset);
    if Selection_ = 12 then Edit13.Caption :=  FloatToStr(ServoM[Selection_].PositionOffset);
    if Selection_ = 13 then Edit14.Caption :=  FloatToStr(ServoM[Selection_].PositionOffset);
    if Selection_ = 14 then Edit15.Caption :=  FloatToStr(ServoM[Selection_].PositionOffset);
    if Selection_ = 15 then Edit16.Caption :=  FloatToStr(ServoM[Selection_].PositionOffset);
    if Selection_ = 16 then Edit17.Caption :=  FloatToStr(ServoM[Selection_].PositionOffset);
    if Selection_ = 17 then Edit18.Caption :=  FloatToStr(ServoM[Selection_].PositionOffset);
    if Selection_ = 18 then Edit19.Caption :=  FloatToStr(ServoM[Selection_].PositionOffset);
    if Selection_ = 19 then Edit20.Caption :=  FloatToStr(ServoM[Selection_].PositionOffset);
    if ComboBox1.ItemIndex = 0 then Edit22.Caption := Edit1.Caption;
    if ComboBox1.ItemIndex = 1 then Edit22.Caption := Edit2.Caption;
    if ComboBox1.ItemIndex = 2 then Edit22.Caption := Edit3.Caption;
    if ComboBox1.ItemIndex = 3 then Edit22.Caption := Edit4.Caption;
    if ComboBox1.ItemIndex = 4 then Edit22.Caption := Edit5.Caption;
    if ComboBox1.ItemIndex = 5 then Edit22.Caption := Edit6.Caption;
    if ComboBox1.ItemIndex = 6 then Edit22.Caption := Edit7.Caption;
    if ComboBox1.ItemIndex = 7 then Edit22.Caption := Edit8.Caption;
    if ComboBox1.ItemIndex = 8 then Edit22.Caption := Edit9.Caption;
    if ComboBox1.ItemIndex = 9 then Edit22.Caption := Edit10.Caption;
    if ComboBox1.ItemIndex = 10 then Edit22.Caption := Edit11.Caption;
    if ComboBox1.ItemIndex = 11 then Edit22.Caption := Edit12.Caption;
    if ComboBox1.ItemIndex = 12 then Edit22.Caption := Edit13.Caption;
    if ComboBox1.ItemIndex = 13 then Edit22.Caption := Edit14.Caption;
    if ComboBox1.ItemIndex = 14 then Edit22.Caption := Edit15.Caption;
    if ComboBox1.ItemIndex = 15 then Edit22.Caption := Edit16.Caption;
    if ComboBox1.ItemIndex = 16 then Edit22.Caption := Edit17.Caption;
    if ComboBox1.ItemIndex = 17 then Edit22.Caption := Edit18.Caption;
    if ComboBox1.ItemIndex = 18 then Edit22.Caption := Edit19.Caption;
    if ComboBox1.ItemIndex = 19 then Edit22.Caption := Edit20.Caption;
    if New_TickCount-Old_TickCount >= 500 then
    begin
      Code_Action:=4;
      Selection_:=Selection_+1;
      if Selection_ >= 20 then Code_Action:=6;
      Old_TickCount := New_TickCount
    end;
  end;

  if Code_Action = 6 then
  begin
    Servo_Locomotive.CurrentPosition := Servo_Locomotive.CurrentPosition+New_TickCount-Old_TickCount;
    Servo_Locomotive.Random_Position := Servo_Locomotive.Random_Position+New_TickCount-Old_TickCount;
    if Servo_Locomotive.Random_Position >= Servo_Locomotive.End_Stoper then
    begin
      Servo_Locomotive.Random_Position := Servo_Locomotive.End_Stoper;
      Servo_Locomotive.CurrentPosition := 8552+8;
      Code_Action:=100;
    end;
    Servo_Locomotive.CurrentScreen := Round(Servo_Locomotive.CurrentPosition/8);
  end;

  if (Code_Action <> 1) and (Code_Action <> 3) and (Code_Action <> 5) then Old_TickCount := New_TickCount;
  if Code_Action = 100 then
  begin
    Timer1.Enabled:=False;
    Button9.Caption:='Search Knife';
    Label66.Caption := 'Status: Locomotive ready'
  end;
  Ttt;
end;

end.
