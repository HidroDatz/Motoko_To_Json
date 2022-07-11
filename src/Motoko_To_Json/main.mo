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
  public func objPrint() : (){
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
    return Debug.print(JSON.show(obj));
    // return JSON.show(obj);
    // {"name": {"firstName": "quint"}, "username": "di-wu"}
    };
}