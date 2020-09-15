unit global;




interface

uses Classes;


type

  TReceipt = class(TObject);
  private
    FItemSay   :Integer;
    F


  TItemStatus=(isBekliyor, isYeni, isAyrac, isNormal);
  TItem = class(TObject)
  Private
    FElemanSay      :Integer;
    FPrinterCopy    :TStrings;
//Protected
  Public
    function Fis :TStrings;
//    procedure Sil;
    property FPrinterTopy: TStrings read FPrinterCopy;
    property ElemanSay: Integer read FElemanSay;
  end;

var

  a:record
     iItemCount     :integer;
     gndTotal       :Double;
     iIslemNo       :Integer;
     xIslemZaman    :TDateTime;
     sIslemiYapan   :String;
  end;



implementation

function TItem.Fis :TStrings;
begin
  result.Add('abc');
end;

end.
