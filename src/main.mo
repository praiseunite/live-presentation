import Http "http";
import Text "mo:base/Text";
actor {
    public type HttpResponse = Http.HttpResponse;
    public type HttpRequest = Http.HttpRequest;

    public query func http_request(req : HttpRequest) : async HttpResponse {
        let response = {
            status_code = 200 : Nat16;
            headers = [];
            body = Text.encodeUtf8("Hello, world!");
            streaming_strategy = null;
        };
        return response;
    };

};
