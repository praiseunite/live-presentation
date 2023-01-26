module Http {
    public type HeaderField = (Text, Text);
    
    public type HttpRequest = {
        url : Text;
        method : Text;
        headers : [HeaderField];
        body : Blob;
    };

    public type HttpResponse = {
        status_code: Nat16;
        headers: [HeaderField];
        body: Blob;
        streaming_strategy: ?StreamingStrategy;
    };
    
    public type StreamingStrategy = {
        #Callback: {
            callback : StreamingCallback;
            token    : StreamingCallbackToken;
        };
    };
    public type StreamingCallback = query (StreamingCallbackToken) -> async (StreamingCallbackResponse);

    public type StreamingCallbackToken =  {
        content_encoding : Text;
        index            : Nat;
        key              : Text;
    };

    public type StreamingCallbackResponse = {
        body  : Blob;
        token : ?StreamingCallbackToken;
    };
}