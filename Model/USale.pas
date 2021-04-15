unit USale;

interface

uses System.SysUtils, System.Generics.Defaults, System.Generics.Collections,
  System.Types, UProductDescription, UMoney, USalesLineItem, UDate, UPayment;

type
  TSale = class
  private
    LineItems: TList<TSalesLineItem>;
    date: TDate;
    isComplete: boolean;
    payment: TPayment;
  public
    function getBalance(): TMoney;
    function getTotal(): TMoney;
    procedure becomeComplete();
    procedure makeLineItem(desc: TProductDescription; quantity: integer);
    procedure makePayment(cashTendered: TMoney);
  end;

implementation

{ Sale }

procedure TSale.becomeComplete;
begin
  isComplete := true;
end;

function TSale.getBalance: TMoney;
begin
  result := payment.getAmount().minus(getTotal());
end;

function TSale.getTotal: TMoney;
var
  total, subtotal: TMoney;
  lineItem: TSalesLineItem;
begin
  total := TMoney.Create(0);
  subtotal := TMoney.Create(0);
  for lineItem in LineItems do
  begin
    subtotal := lineItem.getSubTotal();
    total.add(subtotal);
  end;
end;

procedure TSale.makeLineItem(desc: TProductDescription; quantity: integer);
begin
  LineItems.add(TSalesLineItem.Create(desc, quantity));
end;

procedure TSale.makePayment(cashTendered: TMoney);
begin
  payment := TPayment.Create(cashTendered);
end;

end.
