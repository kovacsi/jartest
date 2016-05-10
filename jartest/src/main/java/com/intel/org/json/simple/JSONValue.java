package com.intel.org.json.simple;

import com.intel.moe.natj.general.Pointer;
import com.intel.moe.natj.general.ann.RegisterOnStartup;
import com.intel.moe.natj.objc.ObjCRuntime;
import com.intel.moe.natj.objc.ann.ObjCClassName;
import com.intel.moe.natj.objc.ann.Selector;
import ios.NSObject;
import org.json.simple.parser.ParseException;
import java.io.IOException;
import java.io.Reader;
import java.io.Writer;

@ObjCClassName("JSONValue")
@RegisterOnStartup
@com.intel.moe.natj.general.ann.Runtime(ObjCRuntime.class)
public class JSONValue extends NSObject {

    protected JSONValue(Pointer peer) {
        super(peer);
    }

//    /** @deprecated */
//    @Selector("parse:")
//    public static Object parse(Reader in) {
//        return JSONValue.parse(in);
//    }
//
//    /** @deprecated */
//    @Selector("parse:")
//    public static Object parse(String s) {
//        return JSONValue.parse(s);
//    }
//
//    @Selector("parseWithException:")
//    public static Object parseWithException(Reader in) throws IOException, ParseException {
//        return JSONValue.parseWithException(in);
//    }
//
//    @Selector("parseWithException:")
//    public static Object parseWithException(String s) throws ParseException {
//        return JSONValue.parseWithException(s);
//    }
//
//    @Selector("writeJSONString::")
//    public static void writeJSONString(Object value, Writer out) throws IOException {
//        JSONValue.writeJSONString(value, out);
//    }
//
//    @Selector("toJSONString:")
//    public static String toJSONString(Object value) {
//        return JSONValue.toJSONString(value);
//    }

    @Selector("escape:")
    public static String escape(String s) {
        return org.json.simple.JSONValue.escape(s);
    }

}
