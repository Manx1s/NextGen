unit USalesLineItem;

interface
 uses UMoney, UProductDescription;
type
  SalesLineItem = class
  private
  public
  function getSubTotal():Money;
  constructor Create(desc:ProductDescription; quantity:integer);
  end;

implementation

{ SalesLineItem }

constructor SalesLineItem.Create(desc: ProductDescription; quantity: integer);
begin

end;

function SalesLineItem.getSubTotal: Money;
begin

end;

end.
