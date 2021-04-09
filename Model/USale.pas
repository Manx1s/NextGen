unit USale;

interface
  uses System.SysUtils, System.Generics.Defaults, System.Generics.Collections, System.Types, UProductDescription, UMoney, USalesLineItem, UDate, UPayment;
type
  Sale = class
  private
  LineItems:TList <SalesLineItem>;
  date:Date;
  isComplete:boolean;
  payment:Payment;
  public
  function getBalance(): Money;
  function getTotal(): Money;
  procedure becomeComplete();
  procedure makeLineItem(desc:ProductDescription; quantity:integer);
  procedure makePayment(cashTendered:Money);
  end;

implementation

{ Sale }

procedure Sale.becomeComplete;
begin
  isComplete:=true;
end;

function Sale.getBalance: Money;
begin
  result:=payment.getAmount().minus(getTotal());
end;

function Sale.getTotal: Money;
var total,subtotal:Money; lineItem:SalesLineItem;
begin
  total:=Money.Create(0);
  subtotal:=Money.Create(0);
  for LineItem in LineItems do
    begin
      subtotal:=lineItem.getSubTotal();
      total.add(subtotal);
    end;
end;

procedure Sale.makeLineItem(desc: ProductDescription; quantity: integer);
begin
 lineitems.Add(salesLineItem.Create(desc, quantity));
end;

procedure Sale.makePayment(cashTendered: Money);
begin
  Payment:=Payment.Create(cashTendered);
end;

end.
