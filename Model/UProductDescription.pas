unit UProductDescription;

interface

uses UItemID, UMoney;

type
  TProductDescription = class
  private
    id: TItemId;
    price: TMoney;
    description: string;
  public
    function getId: TItemId;
    function getPrice: TMoney;
    function getDescription: string;
    constructor Create(id: TItemId; price: TMoney; description: string);
  end;

implementation

{ ProductDescription }

constructor TProductDescription.Create(id: TItemId; price: TMoney;
  description: string);
begin
  Self.id := id;
  Self.price := price;
  Self.description := description;
end;

function TProductDescription.getDescription: string;
begin
  Result:=description;
end;

function TProductDescription.getId: TItemId;
begin
  Result:=id;
end;

function TProductDescription.getPrice: TMoney;
begin
  Result:=price;
end;

end.
