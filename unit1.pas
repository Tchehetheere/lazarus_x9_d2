unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  EditBtn, ExtDlgs;

type

  { TForm1 }

  TForm1 = class(TForm)
    btn_tampil: TButton;
    btn_Pfoto: TButton;
    cbb_askot: TComboBox;
    openPictDial_foto: TOpenPictureDialog;
    tImage_foto: TImage;
    Label5: TLabel;
    rb_l: TRadioButton;
    rb_p: TRadioButton;
    trg_jk: TRadioGroup;
    tcb_pelajar: TCheckBox;
    dateE_ttl: TDateEdit;
    edit_nama: TEdit;
    edit_alamat: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    mem: TMemo;
    procedure btn_PfotoClick(Sender: TObject);
    procedure btn_tampilClick(Sender: TObject);
    procedure memChange(Sender: TObject);
    procedure tcb_pelajarChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure tImage_fotoClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.tcb_pelajarChange(Sender: TObject);
begin

end;

procedure TForm1.btn_tampilClick(Sender: TObject);
begin;

  mem.Lines.Clear();
  mem.Lines.Add('Nama: ' + edit_nama.Text);
  mem.Lines.Add('Alamat: ' + edit_alamat.Text);
  mem.Lines.Add('TTL: ' + dateE_ttl.Text);

  if tcb_pelajar.Checked then
     mem.Lines.Add('Pelajar')
  else
     mem.Lines.Add('Bukan Pelajar');

  mem.Lines.Add('Asal Kota: ' + cbb_askot.Text);

  if rb_l.Checked then
     mem.Lines.Add('Jenis Kelamin: Laki-laki')
  else
     mem.Lines.Add('Jenis Kelamin: Perempuan');


end;

procedure TForm1.btn_PfotoClick(Sender: TObject);
begin

  if openPictDial_foto.Execute then
     tImage_foto.Picture.LoadFromFile(openPictDial_foto.FileName);

end;

procedure TForm1.memChange(Sender: TObject);
begin

end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.Label4Click(Sender: TObject);
begin

end;

procedure TForm1.tImage_fotoClick(Sender: TObject);
begin

end;

end.

