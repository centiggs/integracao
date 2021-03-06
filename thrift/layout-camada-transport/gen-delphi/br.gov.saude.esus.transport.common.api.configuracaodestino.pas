(**
 * Autogenerated by Thrift Compiler (0.9.2)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *)

unit br.gov.saude.esus.transport.common.api.configuracaodestino;

interface

uses
  Classes,
  SysUtils,
  Generics.Collections,
  Thrift,
  Thrift.Utils,
  Thrift.Collections,
  Thrift.Protocol,
  Thrift.Transport;

const
  cbr_gov_saude_esus_transport_common_api_configuracaodestino_Option_AnsiStr_Binary = False;
  cbr_gov_saude_esus_transport_common_api_configuracaodestino_Option_Register_Types = False;
  cbr_gov_saude_esus_transport_common_api_configuracaodestino_Option_ConstPrefix    = False;
  cbr_gov_saude_esus_transport_common_api_configuracaodestino_Option_Events         = False;
  cbr_gov_saude_esus_transport_common_api_configuracaodestino_Option_XmlDoc         = False;

type
  IVersaoThrift = interface;

  IVersaoThrift = interface(IBase)
    function GetMajor: Integer;
    procedure SetMajor( const Value: Integer);
    function GetMinor: Integer;
    procedure SetMinor( const Value: Integer);
    function GetRevision: Integer;
    procedure SetRevision( const Value: Integer);

    property Major: Integer read GetMajor write SetMajor;
    property Minor: Integer read GetMinor write SetMinor;
    property Revision: Integer read GetRevision write SetRevision;


  end;

  TVersaoThriftImpl = class(TInterfacedObject, IBase, IVersaoThrift)
  private
    FMajor: Integer;
    FMinor: Integer;
    FRevision: Integer;
    
    
    function GetMajor: Integer;
    procedure SetMajor( const Value: Integer);
    function GetMinor: Integer;
    procedure SetMinor( const Value: Integer);
    function GetRevision: Integer;
    procedure SetRevision( const Value: Integer);

  public
    constructor Create;
    destructor Destroy; override;

    function ToString: string; override;

    // IBase
    procedure Read( const iprot: IProtocol);
    procedure Write( const oprot: IProtocol);

    // Properties
    property Major: Integer read GetMajor write SetMajor;
    property Minor: Integer read GetMinor write SetMinor;
    property Revision: Integer read GetRevision write SetRevision;

    // isset
  end;

implementation

constructor TVersaoThriftImpl.Create;
begin
  inherited;
end;

destructor TVersaoThriftImpl.Destroy;
begin
  inherited;
end;

function TVersaoThriftImpl.GetMajor: Integer;
begin
  Result := FMajor;
end;

procedure TVersaoThriftImpl.SetMajor( const Value: Integer);
begin
  FMajor := Value;
end;

function TVersaoThriftImpl.GetMinor: Integer;
begin
  Result := FMinor;
end;

procedure TVersaoThriftImpl.SetMinor( const Value: Integer);
begin
  FMinor := Value;
end;

function TVersaoThriftImpl.GetRevision: Integer;
begin
  Result := FRevision;
end;

procedure TVersaoThriftImpl.SetRevision( const Value: Integer);
begin
  FRevision := Value;
end;

procedure TVersaoThriftImpl.Read( const iprot: IProtocol);
var
  field_ : IField;
  struc : IStruct;
  _req_isset_Major : Boolean;
  _req_isset_Minor : Boolean;
  _req_isset_Revision : Boolean;

begin
  _req_isset_Major := FALSE;
  _req_isset_Minor := FALSE;
  _req_isset_Revision := FALSE;
  struc := iprot.ReadStructBegin;
  try
    while (true) do
    begin
      field_ := iprot.ReadFieldBegin();
      if (field_.Type_ = TType.Stop) then
      begin
        Break;
      end;
      case field_.ID of
        1: begin
          if (field_.Type_ = TType.I32) then
          begin
            Major := iprot.ReadI32();
            _req_isset_Major := TRUE;
          end else
          begin
            TProtocolUtil.Skip(iprot, field_.Type_);
          end;
        end;
        2: begin
          if (field_.Type_ = TType.I32) then
          begin
            Minor := iprot.ReadI32();
            _req_isset_Minor := TRUE;
          end else
          begin
            TProtocolUtil.Skip(iprot, field_.Type_);
          end;
        end;
        3: begin
          if (field_.Type_ = TType.I32) then
          begin
            Revision := iprot.ReadI32();
            _req_isset_Revision := TRUE;
          end else
          begin
            TProtocolUtil.Skip(iprot, field_.Type_);
          end;
        end
        else begin
          TProtocolUtil.Skip(iprot, field_.Type_);
        end;
      end;
      iprot.ReadFieldEnd;
    end;
  finally
    iprot.ReadStructEnd;
  end;
  if not _req_isset_Major
  then raise TProtocolException.Create( TProtocolException.INVALID_DATA, 'Major');
  if not _req_isset_Minor
  then raise TProtocolException.Create( TProtocolException.INVALID_DATA, 'Minor');
  if not _req_isset_Revision
  then raise TProtocolException.Create( TProtocolException.INVALID_DATA, 'Revision');
end;

procedure TVersaoThriftImpl.Write( const oprot: IProtocol);
var
  struc : IStruct;
  field_ : IField;
begin
  struc := TStructImpl.Create('VersaoThrift');
  oprot.WriteStructBegin(struc);
  field_ := TFieldImpl.Create;
  // required field
  field_.Name := 'major';
  field_.Type_  := TType.I32;
  field_.ID := 1;
  oprot.WriteFieldBegin(field_);
  oprot.WriteI32(Major);
  oprot.WriteFieldEnd();
  // required field
  field_.Name := 'minor';
  field_.Type_  := TType.I32;
  field_.ID := 2;
  oprot.WriteFieldBegin(field_);
  oprot.WriteI32(Minor);
  oprot.WriteFieldEnd();
  // required field
  field_.Name := 'revision';
  field_.Type_  := TType.I32;
  field_.ID := 3;
  oprot.WriteFieldBegin(field_);
  oprot.WriteI32(Revision);
  oprot.WriteFieldEnd();
  oprot.WriteFieldStop();
  oprot.WriteStructEnd();
end;

function TVersaoThriftImpl.ToString: string;
var
  _sb0 : TThriftStringBuilder;
begin
  _sb0 := TThriftStringBuilder.Create('(');
  try
    _sb0.Append(', Major: ');
    _sb0.Append(Major);
    _sb0.Append(', Minor: ');
    _sb0.Append(Minor);
    _sb0.Append(', Revision: ');
    _sb0.Append(Revision);
    _sb0.Append(')');
    Result := _sb0.ToString;
  finally
    _sb0.Free;
  end;
end;


initialization

finalization


end.
