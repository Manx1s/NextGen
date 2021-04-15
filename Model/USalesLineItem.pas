unit USalesLineItem;

interface
 uses UMoney, UProductDescription;
type
  TSalesLineItem = class
  private
  public
  function getSubTotal():TMoney;
  constructor Create(desc:TProductDescription; quantity:integer);
  end;

implementation

{ SalesLineItem }

constructor TSalesLineItem.Create(desc: TProductDescription; quantity: integer);
begin

end;

function TSalesLineItem.getSubTotal: TMoney;
begin

end;

end.
