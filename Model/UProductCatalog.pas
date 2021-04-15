unit UProductCatalog;
interface
uses
System.Generics.Collections, UItemID, UProductDescription, UMoney;

type
  IProductCatalog = interface
    function getProductDescription(id: TItemID): TProductDescription;
  end;

  TProductCatalog = class(TInterfacedObject, IProductCatalog)
  private
    Map: TDictionary<TItemID, TProductDescription>;
    descriptions: TDictionary<TItemID, TProductDescription>;
  public
    constructor Create();
    function getProductDescription(id: TItemID): TProductDescription;
  end;

implementation

{ ProductCatalog }

constructor TProductCatalog.Create;
var id1,id2:TItemID;
price:TMoney;
desc:TProductDescription;
begin
  id1:=TItemID.Create(100);
  id2:=TItemID.Create(200);
  price:=TMoney.Create(3);
  desc:=TProductDescription.Create(id1,price,'�����1');
  descriptions.Add(id1,desc);
  desc:=TProductDescription.Create(id2,price,'�����2');
  end;
function TProductCatalog.getProductDescription(id: TItemID): TProductDescription;
begin
result:=descriptions[id];
end;

end.
