program Project1;

uses
  Vcl.Forms,
  Unit1 in 'View\Unit1.pas' {Form1},
  USale in 'Model\USale.pas',
  UCashPayment in 'Model\UCashPayment.pas',
  UCustomer in 'Model\UCustomer.pas',
  URegister in 'Model\URegister.pas',
  UCashier in 'Model\UCashier.pas',
  UStore in 'Model\UStore.pas',
  UItem in 'Model\UItem.pas',
  ULedger in 'Model\ULedger.pas',
  UProductCatalog in 'Model\UProductCatalog.pas',
  UProductDescription in 'Model\UProductDescription.pas',
  USalesLineItem in 'Model\USalesLineItem.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
