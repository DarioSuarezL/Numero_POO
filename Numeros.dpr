program Numeros;

uses
  Vcl.Forms,
  UFPrincipal in 'UFPrincipal.pas' {Formulario},
  UCNumero in 'UCNumero.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Cobalt XEMedia');
  Application.CreateForm(TFormulario, Formulario);
  Application.Run;
end.
