library googleapis.translate.v2.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;
import 'package:googleapis/common/common.dart' as common;
import 'package:googleapis/src/common_internal.dart' as common_internal;
import '../common/common_internal_test.dart' as common_test;

import 'package:googleapis/translate/v2.dart' as api;



buildUnnamed469() {
  var o = new core.List<api.DetectionsResource>();
  o.add(buildDetectionsResource());
  o.add(buildDetectionsResource());
  return o;
}

checkUnnamed469(core.List<api.DetectionsResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDetectionsResource(o[0]);
  checkDetectionsResource(o[1]);
}

core.int buildCounterDetectionsListResponse = 0;
buildDetectionsListResponse() {
  var o = new api.DetectionsListResponse();
  buildCounterDetectionsListResponse++;
  if (buildCounterDetectionsListResponse < 3) {
    o.detections = buildUnnamed469();
  }
  buildCounterDetectionsListResponse--;
  return o;
}

checkDetectionsListResponse(api.DetectionsListResponse o) {
  buildCounterDetectionsListResponse++;
  if (buildCounterDetectionsListResponse < 3) {
    checkUnnamed469(o.detections);
  }
  buildCounterDetectionsListResponse--;
}

core.int buildCounterDetectionsResourceElement = 0;
buildDetectionsResourceElement() {
  var o = new api.DetectionsResourceElement();
  buildCounterDetectionsResourceElement++;
  if (buildCounterDetectionsResourceElement < 3) {
    o.confidence = 42.0;
    o.isReliable = true;
    o.language = "foo";
  }
  buildCounterDetectionsResourceElement--;
  return o;
}

checkDetectionsResourceElement(api.DetectionsResourceElement o) {
  buildCounterDetectionsResourceElement++;
  if (buildCounterDetectionsResourceElement < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.isReliable, unittest.isTrue);
    unittest.expect(o.language, unittest.equals('foo'));
  }
  buildCounterDetectionsResourceElement--;
}

buildDetectionsResource() {
  var o = new api.DetectionsResource();
  o.add(buildDetectionsResourceElement());
  o.add(buildDetectionsResourceElement());
  return o;
}

checkDetectionsResource(api.DetectionsResource o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDetectionsResourceElement(o[0]);
  checkDetectionsResourceElement(o[1]);
}

buildUnnamed470() {
  var o = new core.List<api.LanguagesResource>();
  o.add(buildLanguagesResource());
  o.add(buildLanguagesResource());
  return o;
}

checkUnnamed470(core.List<api.LanguagesResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLanguagesResource(o[0]);
  checkLanguagesResource(o[1]);
}

core.int buildCounterLanguagesListResponse = 0;
buildLanguagesListResponse() {
  var o = new api.LanguagesListResponse();
  buildCounterLanguagesListResponse++;
  if (buildCounterLanguagesListResponse < 3) {
    o.languages = buildUnnamed470();
  }
  buildCounterLanguagesListResponse--;
  return o;
}

checkLanguagesListResponse(api.LanguagesListResponse o) {
  buildCounterLanguagesListResponse++;
  if (buildCounterLanguagesListResponse < 3) {
    checkUnnamed470(o.languages);
  }
  buildCounterLanguagesListResponse--;
}

core.int buildCounterLanguagesResource = 0;
buildLanguagesResource() {
  var o = new api.LanguagesResource();
  buildCounterLanguagesResource++;
  if (buildCounterLanguagesResource < 3) {
    o.language = "foo";
    o.name = "foo";
  }
  buildCounterLanguagesResource--;
  return o;
}

checkLanguagesResource(api.LanguagesResource o) {
  buildCounterLanguagesResource++;
  if (buildCounterLanguagesResource < 3) {
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLanguagesResource--;
}

buildUnnamed471() {
  var o = new core.List<api.TranslationsResource>();
  o.add(buildTranslationsResource());
  o.add(buildTranslationsResource());
  return o;
}

checkUnnamed471(core.List<api.TranslationsResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTranslationsResource(o[0]);
  checkTranslationsResource(o[1]);
}

core.int buildCounterTranslationsListResponse = 0;
buildTranslationsListResponse() {
  var o = new api.TranslationsListResponse();
  buildCounterTranslationsListResponse++;
  if (buildCounterTranslationsListResponse < 3) {
    o.translations = buildUnnamed471();
  }
  buildCounterTranslationsListResponse--;
  return o;
}

checkTranslationsListResponse(api.TranslationsListResponse o) {
  buildCounterTranslationsListResponse++;
  if (buildCounterTranslationsListResponse < 3) {
    checkUnnamed471(o.translations);
  }
  buildCounterTranslationsListResponse--;
}

core.int buildCounterTranslationsResource = 0;
buildTranslationsResource() {
  var o = new api.TranslationsResource();
  buildCounterTranslationsResource++;
  if (buildCounterTranslationsResource < 3) {
    o.detectedSourceLanguage = "foo";
    o.translatedText = "foo";
  }
  buildCounterTranslationsResource--;
  return o;
}

checkTranslationsResource(api.TranslationsResource o) {
  buildCounterTranslationsResource++;
  if (buildCounterTranslationsResource < 3) {
    unittest.expect(o.detectedSourceLanguage, unittest.equals('foo'));
    unittest.expect(o.translatedText, unittest.equals('foo'));
  }
  buildCounterTranslationsResource--;
}

buildUnnamed472() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed472(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed473() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed473(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed474() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed474(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}


main() {
  unittest.group("obj-schema-DetectionsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDetectionsListResponse();
      var od = new api.DetectionsListResponse.fromJson(o.toJson());
      checkDetectionsListResponse(od);
    });
  });


  unittest.group("obj-schema-DetectionsResourceElement", () {
    unittest.test("to-json--from-json", () {
      var o = buildDetectionsResourceElement();
      var od = new api.DetectionsResourceElement.fromJson(o.toJson());
      checkDetectionsResourceElement(od);
    });
  });


  unittest.group("obj-schema-DetectionsResource", () {
    unittest.test("to-json--from-json", () {
      var o = buildDetectionsResource();
      var od = new api.DetectionsResource.fromJson(o.toJson());
      checkDetectionsResource(od);
    });
  });


  unittest.group("obj-schema-LanguagesListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildLanguagesListResponse();
      var od = new api.LanguagesListResponse.fromJson(o.toJson());
      checkLanguagesListResponse(od);
    });
  });


  unittest.group("obj-schema-LanguagesResource", () {
    unittest.test("to-json--from-json", () {
      var o = buildLanguagesResource();
      var od = new api.LanguagesResource.fromJson(o.toJson());
      checkLanguagesResource(od);
    });
  });


  unittest.group("obj-schema-TranslationsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildTranslationsListResponse();
      var od = new api.TranslationsListResponse.fromJson(o.toJson());
      checkTranslationsListResponse(od);
    });
  });


  unittest.group("obj-schema-TranslationsResource", () {
    unittest.test("to-json--from-json", () {
      var o = buildTranslationsResource();
      var od = new api.TranslationsResource.fromJson(o.toJson());
      checkTranslationsResource(od);
    });
  });


  unittest.group("resource-DetectionsResourceApi", () {
    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.DetectionsResourceApi res = new api.TranslateApi(mock).detections;
      var arg_q = buildUnnamed472();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("language/translate/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("v2/detect"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["q"], unittest.equals(arg_q));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDetectionsListResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_q).then(unittest.expectAsync(((api.DetectionsListResponse response) {
        checkDetectionsListResponse(response);
      })));
    });

  });


  unittest.group("resource-LanguagesResourceApi", () {
    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.LanguagesResourceApi res = new api.TranslateApi(mock).languages;
      var arg_target = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("language/translate/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("v2/languages"));
        pathOffset += 12;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["target"].first, unittest.equals(arg_target));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLanguagesListResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(target: arg_target).then(unittest.expectAsync(((api.LanguagesListResponse response) {
        checkLanguagesListResponse(response);
      })));
    });

  });


  unittest.group("resource-TranslationsResourceApi", () {
    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.TranslationsResourceApi res = new api.TranslateApi(mock).translations;
      var arg_q = buildUnnamed473();
      var arg_target = "foo";
      var arg_cid = buildUnnamed474();
      var arg_format = "foo";
      var arg_source = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("language/translate/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 2), unittest.equals("v2"));
        pathOffset += 2;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["q"], unittest.equals(arg_q));
        unittest.expect(queryMap["target"].first, unittest.equals(arg_target));
        unittest.expect(queryMap["cid"], unittest.equals(arg_cid));
        unittest.expect(queryMap["format"].first, unittest.equals(arg_format));
        unittest.expect(queryMap["source"].first, unittest.equals(arg_source));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTranslationsListResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_q, arg_target, cid: arg_cid, format: arg_format, source: arg_source).then(unittest.expectAsync(((api.TranslationsListResponse response) {
        checkTranslationsListResponse(response);
      })));
    });

  });


}

