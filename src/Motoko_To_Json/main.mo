import JSON "mo:json/JSON";
import HashMap "mo:base/HashMap";
import Text "mo:base/Text";
import Debug "mo:base/Debug";
import Int "mo:base/Int";
actor {
  public func print(doituong : Text): async Text  {
      let doituongx : JSON.JSON = #String(doituong);
      return JSON.show(doituongx);
  };
  public func objPrint() :  async Text {
    let objMap : JSON.ObjectMap = JSON.emptyObjectMap();
    let obj    : JSON.JSON      = #Object(objMap);

    Debug.print(JSON.show(obj));
    // {}

    objMap.put("username", #String("di-wu"));

    Debug.print(JSON.show(obj));
    // {"username": "di-wu"}

    let name = JSON.emptyObjectMap();
    name.put("firstName", #String("quint"));
    objMap.put("name", #Object(name));
    Debug.print(debug_show(JSON.show(obj)));
    // {"name": {"firstName": "quint"}, "username": "di-wu"}
    return JSON.show(obj);
    };
  public func arrayPrint() : async Text{
    let p = JSON.Parser();

    let v : JSON.JSON = #Array([p.parse("[ 5, 3 ,2 ,1 ]")]);
    return JSON.show(v);
  };
}
