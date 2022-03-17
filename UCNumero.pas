unit UCNumero;

interface

Uses
SysUtils, Math;
  type
    NumeroNatural = class
  Private
    Numero:int64;
  Public
    Constructor create;
    Procedure SetValor(n:int64);
    Function GetValor():int64;
    Function GetCantDigitos():integer;
    Function DigitosPares():byte;
    Procedure ElimDigPos(pos:byte);
    Procedure InsertDig (dig,pos:byte);
    Procedure ModifDig(pos,dig:byte);
    Function DigEnPos(pos:byte):integer;
    Procedure InvertirNum();
    Function Dec_bin():int64;
    Function Dec_oct():int64;
    Function Dec_hex():string;
    Function Dec_BaseN(n:integer):string;
    Function EnRomano():string;
    Function EnLiteral():string;
    Function Menor_dig():integer;
    Function Mayor_dig():integer;
    Procedure EjerGuido();
    Procedure Ascendente();
    Procedure Descendente();
    Procedure InsertIzq(v:word);
    Procedure InsertDer(v:word);
    Function EsPrimo(n:word):boolean;
    Procedure examenp();

    end;

implementation
{ NumeroNatural }

Procedure NumeroNatural.Ascendente;
var dig:word; acum,vf,alm:int64; digM:integer;
begin
digM:=Mayor_dig;  vf:=numero; acum:=0;  dig:=0; alm:=numero;
 while digM>=0 do begin
    repeat
      dig:=vf mod 10;
      if dig=digM then begin
        acum:=acum*10+dig;
      end;
      vf:=vf div 10;
    until vf<=0 ;
    vf:=alm;
    digM:=digM-1;
 end;
 numero:=acum;
end;


Procedure NumeroNatural.Descendente;
var dig:word; acum,vf,alm:int64; digM:integer;
begin
digm:=menor_dig;  vf:=numero; acum:=0;  dig:=0; alm:=numero;
 while digm<=9 do begin
    repeat
      dig:=vf mod 10;
      if dig=digm then begin
        acum:=acum*10+dig;
      end;
      vf:=vf div 10;
    until vf<=0 ;
    vf:=alm;
    digm:=digm+1;
 end;
 numero:=acum;
end;


constructor NumeroNatural.create;
begin
  Numero:=0;
end;

function NumeroNatural.GetCantDigitos: integer;
var aux,i:integer;
begin
  aux:=numero;
  i:= trunc(log10(aux))+1;
  result:=i;
end;

function NumeroNatural.GetValor: int64;
begin
  result:=Numero;
end;

function NumeroNatural.DigitosPares: byte;
var aux,cant,dig:integer;
begin
  aux:=numero;
  cant:=0;
  while aux<>0 do begin
    dig:=aux mod 10;
    if dig mod 2=0 then cant:=cant+1;
    aux:=aux div 10;
  end;
  result:=cant;
end;


procedure NumeroNatural.EjerGuido;
var n:int64; dig:integer; paco:boolean; res:int64;  longnc,longnv:word;
begin
  n:=numero;  paco:=false;
  res:=0;
  while n<>0 do begin

    if paco=false then begin
        descendente;
        dig:=numero mod 10;
        numero:=numero div 10;
        paco:=true;
    end else begin
      longnc:=trunc(log10(n)+1);
      if numero=0 then begin
        longnv:=1;
      end else begin
        longnv:=getcantdigitos;
      end;
      ascendente;
     if longnv<>longnc then begin
      dig:=0;
     end else begin
      dig:=numero mod 10;
      numero:=numero div 10;
     end;

     paco:=false;
    end;
    res:=res*10+dig;
     n:= n div 10;
  end;
  Numero:=res;
end;

procedure NumeroNatural.ElimDigPos(pos:byte);
var n,m,cont:integer;
begin
  n:=numero;  m:=0;  cont:=1;
  if ((pos>0)and(pos<=GetCantDigitos)) then begin

    while (cont<=pos-1) do begin
      m:=(m*10)+ (n mod 10);
      n:=n div 10;
      cont:=cont+1;
    end;
      n:=n div 10;

    while m>0 do begin
      n:=(n * 10)+ m mod 10;
      m:=m div 10;
    end;
      Numero:=n;
  end;

end;

Procedure NumeroNatural.InsertIzq(v: word);
var p:word; n:int64;
begin
  n:=numero;
  P:=trunc(power(10,getcantdigitos));
  numero:=v*p+n;
end;

Procedure NumeroNatural.InsertDer(v: word);
var p:word;
begin
  P:=trunc(power(10,trunc(log10(v)+1)));
  numero:=numero*p+v;
end;
procedure NumeroNatural.InsertDig(dig, pos: byte);
var num1,num2:integer;
begin
  num1:=Numero;
  num2:=num1 mod trunc(Power(10,pos-1));
  num1:=((num1 div trunc(Power(10,pos-1)))*10+dig)*trunc(Power(10,pos-1))+num2;
  Numero:=num1;
end;

function NumeroNatural.Mayor_dig: integer;
var dig,mayor:integer; n:int64;
begin
n:=numero;
mayor:=0;
  while n<>0 do begin
    dig:=n mod 10;
    n:= n div 10;
    if dig>mayor then begin
      mayor:=dig;
    end;
  end;
Result:=mayor;
end;

function NumeroNatural.Menor_dig: integer;
var dig,menor:integer; n:int64;
begin
n:=numero;
menor:=9;
  while n<>0 do begin
    dig:=n mod 10;
    n:= n div 10;
    if dig<menor then begin
      menor:=dig;
    end;
  end;
Result:=menor;
end;

procedure NumeroNatural.ModifDig(pos, dig: byte);
var num1,num2,k:integer;
begin
  num1:=Numero;
  k:=trunc(Power(10,pos-1));
  num2:=num1 mod k;
  num1:=((num1 div trunc(Power(10,pos)))*10+dig)*k+num2;
  Numero:=num1;
  end;

procedure NumeroNatural.InvertirNum;
var inv,d,n:integer;
begin
  inv:=0;   n:=numero;
  repeat
    d:=n mod 10;
    n:=n div 10;
    inv:= inv*10+d;
  until n<=0;
  numero:=inv;
end;

function NumeroNatural.DigEnPos(pos: byte): integer;
var k,dig,n:integer;
begin
  n:=Numero;
  k:=trunc(power(10,pos-1));
  n:=n div k;
  dig:=n mod 10;
  result:=dig;
end;


procedure NumeroNatural.SetValor(n: int64);
begin
  Numero:=n;
end;

function NumeroNatural.Dec_oct: int64;
var oct,dec,k:int64; d:byte;
begin
  dec:=numero;
  k:=1; oct:=0;
  while dec>0 do begin
    d:= dec mod 8;
    dec:= dec div 8;
    oct:=d*k+oct;
    k:=k*10;
  end;
  result:=oct;
end;


function NumeroNatural.Dec_hex: string;
var dec,i:int64;  hex,num:string;
begin
  dec:=numero;  hex:='';  i:=0;
  num:='0123456789ABCDEF';
  if dec>0 then begin
  while dec>0 do begin
    i:= dec mod 16;
    dec:= dec div 16;
    hex:=num[i+1]+hex;
  end;
  end else begin
    hex:='0';
  end;
    result:=hex;
end;

function NumeroNatural.Dec_BaseN(n:integer): string;
var dec:int64;  base,num:string;  i:integer;
begin
  dec:=numero;  base:='';  i:=0;
  num:='0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  if dec>0 then begin
  while dec>0 do begin
    i:= dec mod n;
    dec:= dec div n;
    base:=num[i+1]+base;
  end;
  end else begin
    base:='0';
  end;
    result:=base;
end;

function NumeroNatural.EnLiteral: string;
Const Lit : Array[1..4,1..20] of String=(
('uno','dos','tres','cuatro','cinco','seis','siete','ocho','nueve','diez','once','doce','trece','catorce','quince','dieciseis','diecisiete','dieciocho','diecinueve','veinte'),
('','veinti','treinta','cuarenta','cincuenta','sesenta','setenta','ochenta','noventa','','','','','','','','','','',''),
('ciento', 'doscientos','trescientos','cuatrocientos','quinientos','seiscientos','setecientos','ochocientos','novecientos','','','','','','','','','','','' ),
('mil','dos mil','tres mil','cuatro mil','cinco mil','seis mil','siete mil','ocho mil','nueve mil','','','','','','','','','','',''));
var Literal:String;   c,d:Byte;   N:Cardinal;
begin
  N:=numero;
  c:=1;
  Literal:='';
  if N=100 then begin
    Literal:='Cien';
    N:=0;
  end else begin
    if (N mod 100>0) and (N mod 100<=20) then begin
      Literal := Lit[1,N mod 100] ;
      N:=N div 100;
      c:=3;
    end;
  end;

  while N>0 do begin
    d := N mod 10;
    if d>0 then begin
      if (c=2) and (d>2) and (Literal<>'') then begin
        Literal:='y '+ Literal;
      end;
      Literal:=Lit[c,d]+ ' '+Literal;
    end;
    Inc(c);
    N:=N div 10;
  end;

  if Literal[Length(Literal)] = ' ' then begin
    Delete(Literal,Length(Literal),1);
  end;
  result:=Literal;
end;


function NumeroNatural.EnRomano: string;
const R: array[1..4,1..9] of string= (
('I','II','III','IV','V','VI','VII','VIII','IX'),
('X','XX','XXX','XL','L','LX','LXX','LXXX','XC'),
('C','CC','CCC','CD','D','DC','DCC','DCCC','CM'),
('M','MM','MMM','iv','v','vi','vii','viii','ix'));
var n:int64;  i,d:byte; rom:string;
begin
  n:=numero;  rom:='';  i:=1;
    while n>0 do begin
    d:= n mod 10;
    n:= n div 10;
   if d>0 then rom:=R[i,d]+rom;
    i:=i+1;
  end;
  result:=rom;
end;

function NumeroNatural.EsPrimo(n: word): boolean;
var
  i,c: Integer;
begin
c:=0;
  for i := 1 to n do begin
    if n mod i=0 then inc(c);
  end;
  if c=2 then begin
    result:=true;
  end else result:=false;
end;

procedure NumeroNatural.examenp;
var aux,aux2,aux3,coaux:cardinal; d,i:byte; borrador:boolean;
begin

  for i := 0 to GetCantDigitos do begin
    if Borrador then begin
    coaux:=aux
    end else begin
    aux:=numero div trunc(power(10,GetCantDigitos-i));
    coaux:=aux mod 10;

      if i<GetCantDigitos then begin
      aux2:=numero mod trunc(power(10,GetCantDigitos-i-1));
      aux3:=aux2 mod 10;
      end;

    end;
      if i<GetCantDigitos then begin
      aux2:=numero mod trunc(power(10,GetCantDigitos-i));
      aux3:=aux2 mod 10;
      end;
    if (EsPrimo(coaux)and (aux3=0)) then begin
      ElimDigPos(GetCantDigitos-i-1);
      borrador:=true;
    end;
    if  (EsPrimo(aux3)and (coaux=0)) then begin
      ElimDigPos(GetCantDigitos-i);
    end;
    if  (not EsPrimo(aux3))and(not EsPrimo(coaux)) then borrador:=false;

  end;

end;

function NumeroNatural.Dec_bin:int64;
var bin,dec,k:int64; d:byte;
begin
  dec:=numero;
  k:=1; bin:=0;
  while dec>0 do begin
    d:= dec mod 2;
    dec:= dec div 2;
    bin:=d*k+bin;
    k:=k*10;
  end;
  result:=bin;
end;

end.

