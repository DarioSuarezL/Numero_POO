unit UFPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UCNumero, Vcl.StdCtrls, Vcl.Menus;

type
  TFormulario = class(TForm)
    Menú: TMainMenu;
    Mtodos1: TMenuItem;
    SetValor1: TMenuItem;
    GetValor1: TMenuItem;
    Edit1: TEdit;
    InsertarDig1: TMenuItem;
    ModificarDig1: TMenuItem;
    Edit2: TEdit;
    EliminarDig1: TMenuItem;
    Edit3: TEdit;
    Edit4: TEdit;
    DigitoEnPos1: TMenuItem;
    InvertirNum1: TMenuItem;
    CantidadDig1: TMenuItem;
    DgitosPares1: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DecimalaBinario1: TMenuItem;
    Decimalaoctal1: TMenuItem;
    DecimalaHexadecimal1: TMenuItem;
    DecimalaBaseN1: TMenuItem;
    Edit5: TEdit;
    Label5: TLabel;
    Ennumeroromano1: TMenuItem;
    EnLiteral1: TMenuItem;
    DigitoMayor1: TMenuItem;
    DigitoMenor1: TMenuItem;
    InsertarIzq1: TMenuItem;
    InsertarDer1: TMenuItem;
    Ascendente1: TMenuItem;
    Label6: TLabel;
    Label7: TLabel;
    Metodosparte21: TMenuItem;
    Mtodosescritura1: TMenuItem;
    Descendente1: TMenuItem;
    Intercalado1: TMenuItem;
    Examen11: TMenuItem;
    IntercalarPrimos1: TMenuItem;

    procedure FormCreate(Sender: TObject);
    procedure SetValor1Click(Sender: TObject);
    procedure GetValor1Click(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure Edit4Click(Sender: TObject);
    procedure Edit3Click(Sender: TObject);
    procedure InsertarDig1Click(Sender: TObject);
    procedure ModificarDig1Click(Sender: TObject);
    procedure EliminarDig1Click(Sender: TObject);
    procedure DigitoEnPos1Click(Sender: TObject);
    procedure InvertirNum1Click(Sender: TObject);
    procedure CantidadDig1Click(Sender: TObject);
    procedure DgitosPares1Click(Sender: TObject);
    procedure DecimalaBinario1Click(Sender: TObject);
    procedure Decimalaoctal1Click(Sender: TObject);
    procedure DecimalaHexadecimal1Click(Sender: TObject);
    procedure DecimalaBaseN1Click(Sender: TObject);
    procedure Ennumeroromano1Click(Sender: TObject);
    procedure EnLiteral1Click(Sender: TObject);
    procedure DigitoMayor1Click(Sender: TObject);
    procedure DigitoMenor1Click(Sender: TObject);
    procedure InsertarIzq1Click(Sender: TObject);
    procedure InsertarDer1Click(Sender: TObject);
    procedure Ascendente1Click(Sender: TObject);
    procedure Descendente1Click(Sender: TObject);
    procedure Intercalado1Click(Sender: TObject);
    procedure IntercalarPrimos1Click(Sender: TObject);

  private
    { Private declarations }
    n:NumeroNatural;
  public
    { Public declarations }
  end;

var
  Formulario: TFormulario;

implementation

{$R *.dfm}


procedure TFormulario.Ascendente1Click(Sender: TObject);
begin
n.Ascendente;
  Label7.Caption:=inttostr(n.GetValor);
end;

procedure TFormulario.CantidadDig1Click(Sender: TObject);
begin
  Edit1.Text:= IntToStr(n.GetCantDigitos);
end;
procedure TFormulario.DecimalaBaseN1Click(Sender: TObject);
var x:integer;
begin
  x:= strtoint(edit5.Text);
  Edit1.text:=n.Dec_BaseN(x);
end;

procedure TFormulario.DecimalaBinario1Click(Sender: TObject);
var x:int64;
begin
  x:=n.Dec_bin;
  edit1.Text:= inttostr(x);
end;

procedure TFormulario.DecimalaHexadecimal1Click(Sender: TObject);
begin
  edit1.Text:= n.Dec_hex;
end;

procedure TFormulario.Decimalaoctal1Click(Sender: TObject);
var x:int64;
begin
  x:=n.Dec_oct;
  edit1.Text:= inttostr(x);
end;

procedure TFormulario.Descendente1Click(Sender: TObject);
begin
n.Descendente;
  Label7.Caption:=inttostr(n.GetValor);
end;

procedure TFormulario.DgitosPares1Click(Sender: TObject);
var x:integer;
begin
  x:=n.DigitosPares;
  Edit1.Text:=inttostr(x);
end;

procedure TFormulario.DigitoEnPos1Click(Sender: TObject);
var dig,pos:byte;
begin
  pos:=strtoint(edit3.text);
  dig:=n.DigEnPos(pos);
  Edit1.Text:=inttostr(dig);
end;

procedure TFormulario.DigitoMayor1Click(Sender: TObject);
begin
  Edit1.Text:=inttostr(n.Mayor_dig);
end;

procedure TFormulario.DigitoMenor1Click(Sender: TObject);
begin
  Edit1.Text:=inttostr(n.Menor_dig);
end;

procedure TFormulario.Edit2Click(Sender: TObject);
begin
  Edit2.Text:='';
end;

procedure TFormulario.Edit3Click(Sender: TObject);
begin
  Edit3.Text:='';
end;

procedure TFormulario.Edit4Click(Sender: TObject);
begin
  Edit4.Text:='';
end;

procedure TFormulario.EliminarDig1Click(Sender: TObject);
var x:integer;
begin
  x:=StrToInt(edit3.text);
  n.ElimDigPos(x);
  Label7.Caption:=inttostr(n.GetValor);
end;

procedure TFormulario.EnLiteral1Click(Sender: TObject);
begin
  Edit1.Text:=n.EnLiteral;
end;

procedure TFormulario.Ennumeroromano1Click(Sender: TObject);
begin
  Edit1.Text:=n.EnRomano;
end;

procedure TFormulario.FormCreate(Sender: TObject);
begin
    n:=NumeroNatural.create;
end;

procedure TFormulario.GetValor1Click(Sender: TObject);
var x:cardinal;
begin
  x:=n.GetValor;
  Edit1.text:=inttostr(x);
  Label7.Caption:=inttostr(n.GetValor);
end;

procedure TFormulario.InsertarDer1Click(Sender: TObject);
begin
n.InsertDer(Strtoint(Edit4.Text));
  Label7.Caption:=inttostr(n.GetValor);
end;

procedure TFormulario.InsertarDig1Click(Sender: TObject);
var p,d:byte;
begin
  p:=strtoint(Edit3.Text);
  d:= strtoint(edit4.Text);
  n.InsertDig(d,p);
  Label7.Caption:=inttostr(n.GetValor);
end;

procedure TFormulario.InsertarIzq1Click(Sender: TObject);
begin
n.InsertIzq(Strtoint(Edit4.Text));
  Label7.Caption:=inttostr(n.GetValor);
end;

procedure TFormulario.Intercalado1Click(Sender: TObject);
begin
n.EjerGuido;
Label7.Caption:=inttostr(n.GetValor);
end;

procedure TFormulario.IntercalarPrimos1Click(Sender: TObject);
begin
n.examenp;
Label7.Caption:=inttostr(n.GetValor);
end;

procedure TFormulario.InvertirNum1Click(Sender: TObject);
begin
n.InvertirNum;
Label7.Caption:=inttostr(n.GetValor);
end;

procedure TFormulario.ModificarDig1Click(Sender: TObject);
var p,d:byte;
begin
  p:=strtoint(edit3.Text);
  d:= strtoint(edit4.Text);
  n.ModifDig(p,d);
  Label7.Caption:=inttostr(n.GetValor);
end;

procedure TFormulario.SetValor1Click(Sender: TObject);
begin
  n.SetValor(strtoint(Edit2.Text));
  Label7.Caption:=inttostr(n.GetValor);
end;

end.

