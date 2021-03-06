unit uFrame1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UI.Standard, UI.Base, UI.Frame, UI.Dialog, FMX.Layouts;

type
  TFrame1 = class(TFrame)
    LinearLayout1: TLinearLayout;
    TextView17: TTextView;
    tvTitle: TTextView;
    VertScrollBox1: TVertScrollBox;
    LinearLayout2: TLinearLayout;
    ButtonView1: TButtonView;
    ButtonView2: TButtonView;
    ButtonView3: TButtonView;
    TextView1: TTextView;
    ButtonView4: TButtonView;
    ButtonView5: TButtonView;
    ButtonView6: TButtonView;
    procedure TextView17Click(Sender: TObject);
    procedure ButtonView1Click(Sender: TObject);
    procedure ButtonView2Click(Sender: TObject);
    procedure ButtonView3Click(Sender: TObject);
    procedure TextView1Click(Sender: TObject);
    procedure ButtonView4Click(Sender: TObject);
    procedure ButtonView5Click(Sender: TObject);
    procedure ButtonView6Click(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure DoHide(); override;
    procedure DoReStart(); override;
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

uses
  ui_CustomListView,
  ui_PopupMenu,
  uFrameProgressView,
  uFrameMore,
  uFrameDialog,
  uFrame3,
  uFrame2;

procedure TFrame1.ButtonView1Click(Sender: TObject);
begin
  StartFrame(TFrame2);
end;

procedure TFrame1.ButtonView2Click(Sender: TObject);
begin
  StartFrame(TFrame3);
end;

procedure TFrame1.ButtonView3Click(Sender: TObject);
begin
  StartFrame(TFrmaeDialog, TButtonView(Sender).Text, TFrameAniType.FadeInOut)
end;

procedure TFrame1.ButtonView4Click(Sender: TObject);
begin
  StartFrame(TCustomListview);
end;

procedure TFrame1.ButtonView5Click(Sender: TObject);
begin
  TDialog.ShowView(Self, ButtonView5, TMainPopupMenu, -50, ButtonView5.Height, TDialogViewPosition.Center);
end;

procedure TFrame1.ButtonView6Click(Sender: TObject);
begin
  StartFrame(TFrameProgressView);
end;

procedure TFrame1.DoHide;
begin
  inherited DoHide;
end;

procedure TFrame1.DoReStart;
begin
  inherited DoReStart;
end;

procedure TFrame1.TextView17Click(Sender: TObject);
begin
  Finish();
end;

procedure TFrame1.TextView1Click(Sender: TObject);
begin
  StartFrame(TFrameMore, '��������')
end;

end.
