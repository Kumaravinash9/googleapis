// ignore_for_file: avoid_returning_null
// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis_beta/privateca/v1beta1.dart' as api;

import '../test_shared.dart';

core.int buildCounterAccessUrls = 0;
api.AccessUrls buildAccessUrls() {
  var o = api.AccessUrls();
  buildCounterAccessUrls++;
  if (buildCounterAccessUrls < 3) {
    o.caCertificateAccessUrl = 'foo';
    o.crlAccessUrl = 'foo';
  }
  buildCounterAccessUrls--;
  return o;
}

void checkAccessUrls(api.AccessUrls o) {
  buildCounterAccessUrls++;
  if (buildCounterAccessUrls < 3) {
    unittest.expect(
      o.caCertificateAccessUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.crlAccessUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterAccessUrls--;
}

core.int buildCounterActivateCertificateAuthorityRequest = 0;
api.ActivateCertificateAuthorityRequest
    buildActivateCertificateAuthorityRequest() {
  var o = api.ActivateCertificateAuthorityRequest();
  buildCounterActivateCertificateAuthorityRequest++;
  if (buildCounterActivateCertificateAuthorityRequest < 3) {
    o.pemCaCertificate = 'foo';
    o.requestId = 'foo';
    o.subordinateConfig = buildSubordinateConfig();
  }
  buildCounterActivateCertificateAuthorityRequest--;
  return o;
}

void checkActivateCertificateAuthorityRequest(
    api.ActivateCertificateAuthorityRequest o) {
  buildCounterActivateCertificateAuthorityRequest++;
  if (buildCounterActivateCertificateAuthorityRequest < 3) {
    unittest.expect(
      o.pemCaCertificate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
    checkSubordinateConfig(o.subordinateConfig! as api.SubordinateConfig);
  }
  buildCounterActivateCertificateAuthorityRequest--;
}

core.List<api.ReusableConfigWrapper> buildUnnamed7479() {
  var o = <api.ReusableConfigWrapper>[];
  o.add(buildReusableConfigWrapper());
  o.add(buildReusableConfigWrapper());
  return o;
}

void checkUnnamed7479(core.List<api.ReusableConfigWrapper> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReusableConfigWrapper(o[0] as api.ReusableConfigWrapper);
  checkReusableConfigWrapper(o[1] as api.ReusableConfigWrapper);
}

core.int buildCounterAllowedConfigList = 0;
api.AllowedConfigList buildAllowedConfigList() {
  var o = api.AllowedConfigList();
  buildCounterAllowedConfigList++;
  if (buildCounterAllowedConfigList < 3) {
    o.allowedConfigValues = buildUnnamed7479();
  }
  buildCounterAllowedConfigList--;
  return o;
}

void checkAllowedConfigList(api.AllowedConfigList o) {
  buildCounterAllowedConfigList++;
  if (buildCounterAllowedConfigList < 3) {
    checkUnnamed7479(o.allowedConfigValues!);
  }
  buildCounterAllowedConfigList--;
}

core.List<core.String> buildUnnamed7480() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7480(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed7481() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7481(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed7482() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7482(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed7483() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7483(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterAllowedSubjectAltNames = 0;
api.AllowedSubjectAltNames buildAllowedSubjectAltNames() {
  var o = api.AllowedSubjectAltNames();
  buildCounterAllowedSubjectAltNames++;
  if (buildCounterAllowedSubjectAltNames < 3) {
    o.allowCustomSans = true;
    o.allowGlobbingDnsWildcards = true;
    o.allowedDnsNames = buildUnnamed7480();
    o.allowedEmailAddresses = buildUnnamed7481();
    o.allowedIps = buildUnnamed7482();
    o.allowedUris = buildUnnamed7483();
  }
  buildCounterAllowedSubjectAltNames--;
  return o;
}

void checkAllowedSubjectAltNames(api.AllowedSubjectAltNames o) {
  buildCounterAllowedSubjectAltNames++;
  if (buildCounterAllowedSubjectAltNames < 3) {
    unittest.expect(o.allowCustomSans!, unittest.isTrue);
    unittest.expect(o.allowGlobbingDnsWildcards!, unittest.isTrue);
    checkUnnamed7480(o.allowedDnsNames!);
    checkUnnamed7481(o.allowedEmailAddresses!);
    checkUnnamed7482(o.allowedIps!);
    checkUnnamed7483(o.allowedUris!);
  }
  buildCounterAllowedSubjectAltNames--;
}

core.List<api.AuditLogConfig> buildUnnamed7484() {
  var o = <api.AuditLogConfig>[];
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

void checkUnnamed7484(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0] as api.AuditLogConfig);
  checkAuditLogConfig(o[1] as api.AuditLogConfig);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  var o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed7484();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed7484(o.auditLogConfigs!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed7485() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7485(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  var o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed7485();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed7485(o.exemptedMembers!);
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditLogConfig--;
}

core.List<api.GoogleApiServicecontrolV1ReportRequest> buildUnnamed7486() {
  var o = <api.GoogleApiServicecontrolV1ReportRequest>[];
  o.add(buildGoogleApiServicecontrolV1ReportRequest());
  o.add(buildGoogleApiServicecontrolV1ReportRequest());
  return o;
}

void checkUnnamed7486(core.List<api.GoogleApiServicecontrolV1ReportRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleApiServicecontrolV1ReportRequest(
      o[0] as api.GoogleApiServicecontrolV1ReportRequest);
  checkGoogleApiServicecontrolV1ReportRequest(
      o[1] as api.GoogleApiServicecontrolV1ReportRequest);
}

core.int buildCounterBillingView = 0;
api.BillingView buildBillingView() {
  var o = api.BillingView();
  buildCounterBillingView++;
  if (buildCounterBillingView < 3) {
    o.reportRequests = buildUnnamed7486();
  }
  buildCounterBillingView--;
  return o;
}

void checkBillingView(api.BillingView o) {
  buildCounterBillingView++;
  if (buildCounterBillingView < 3) {
    checkUnnamed7486(o.reportRequests!);
  }
  buildCounterBillingView--;
}

core.List<core.String> buildUnnamed7487() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7487(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  var o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed7487();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition! as api.Expr);
    checkUnnamed7487(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinding--;
}

core.int buildCounterCaOptions = 0;
api.CaOptions buildCaOptions() {
  var o = api.CaOptions();
  buildCounterCaOptions++;
  if (buildCounterCaOptions < 3) {
    o.isCa = true;
    o.maxIssuerPathLength = 42;
  }
  buildCounterCaOptions--;
  return o;
}

void checkCaOptions(api.CaOptions o) {
  buildCounterCaOptions++;
  if (buildCounterCaOptions < 3) {
    unittest.expect(o.isCa!, unittest.isTrue);
    unittest.expect(
      o.maxIssuerPathLength!,
      unittest.equals(42),
    );
  }
  buildCounterCaOptions--;
}

core.int buildCounterCancelOperationRequest = 0;
api.CancelOperationRequest buildCancelOperationRequest() {
  var o = api.CancelOperationRequest();
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
  return o;
}

void checkCancelOperationRequest(api.CancelOperationRequest o) {
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
}

core.Map<core.String, core.String> buildUnnamed7488() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7488(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed7489() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7489(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterCertificate = 0;
api.Certificate buildCertificate() {
  var o = api.Certificate();
  buildCounterCertificate++;
  if (buildCounterCertificate < 3) {
    o.certificateDescription = buildCertificateDescription();
    o.config = buildCertificateConfig();
    o.createTime = 'foo';
    o.labels = buildUnnamed7488();
    o.lifetime = 'foo';
    o.name = 'foo';
    o.pemCertificate = 'foo';
    o.pemCertificateChain = buildUnnamed7489();
    o.pemCsr = 'foo';
    o.revocationDetails = buildRevocationDetails();
    o.updateTime = 'foo';
  }
  buildCounterCertificate--;
  return o;
}

void checkCertificate(api.Certificate o) {
  buildCounterCertificate++;
  if (buildCounterCertificate < 3) {
    checkCertificateDescription(
        o.certificateDescription! as api.CertificateDescription);
    checkCertificateConfig(o.config! as api.CertificateConfig);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkUnnamed7488(o.labels!);
    unittest.expect(
      o.lifetime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pemCertificate!,
      unittest.equals('foo'),
    );
    checkUnnamed7489(o.pemCertificateChain!);
    unittest.expect(
      o.pemCsr!,
      unittest.equals('foo'),
    );
    checkRevocationDetails(o.revocationDetails! as api.RevocationDetails);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterCertificate--;
}

core.List<api.CertificateDescription> buildUnnamed7490() {
  var o = <api.CertificateDescription>[];
  o.add(buildCertificateDescription());
  o.add(buildCertificateDescription());
  return o;
}

void checkUnnamed7490(core.List<api.CertificateDescription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCertificateDescription(o[0] as api.CertificateDescription);
  checkCertificateDescription(o[1] as api.CertificateDescription);
}

core.Map<core.String, core.String> buildUnnamed7491() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7491(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed7492() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7492(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterCertificateAuthority = 0;
api.CertificateAuthority buildCertificateAuthority() {
  var o = api.CertificateAuthority();
  buildCounterCertificateAuthority++;
  if (buildCounterCertificateAuthority < 3) {
    o.accessUrls = buildAccessUrls();
    o.caCertificateDescriptions = buildUnnamed7490();
    o.certificatePolicy = buildCertificateAuthorityPolicy();
    o.config = buildCertificateConfig();
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.gcsBucket = 'foo';
    o.issuingOptions = buildIssuingOptions();
    o.keySpec = buildKeyVersionSpec();
    o.labels = buildUnnamed7491();
    o.lifetime = 'foo';
    o.name = 'foo';
    o.pemCaCertificates = buildUnnamed7492();
    o.state = 'foo';
    o.subordinateConfig = buildSubordinateConfig();
    o.tier = 'foo';
    o.type = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterCertificateAuthority--;
  return o;
}

void checkCertificateAuthority(api.CertificateAuthority o) {
  buildCounterCertificateAuthority++;
  if (buildCounterCertificateAuthority < 3) {
    checkAccessUrls(o.accessUrls! as api.AccessUrls);
    checkUnnamed7490(o.caCertificateDescriptions!);
    checkCertificateAuthorityPolicy(
        o.certificatePolicy! as api.CertificateAuthorityPolicy);
    checkCertificateConfig(o.config! as api.CertificateConfig);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deleteTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gcsBucket!,
      unittest.equals('foo'),
    );
    checkIssuingOptions(o.issuingOptions! as api.IssuingOptions);
    checkKeyVersionSpec(o.keySpec! as api.KeyVersionSpec);
    checkUnnamed7491(o.labels!);
    unittest.expect(
      o.lifetime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed7492(o.pemCaCertificates!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkSubordinateConfig(o.subordinateConfig! as api.SubordinateConfig);
    unittest.expect(
      o.tier!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterCertificateAuthority--;
}

core.List<core.String> buildUnnamed7493() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7493(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<api.Subject> buildUnnamed7494() {
  var o = <api.Subject>[];
  o.add(buildSubject());
  o.add(buildSubject());
  return o;
}

void checkUnnamed7494(core.List<api.Subject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubject(o[0] as api.Subject);
  checkSubject(o[1] as api.Subject);
}

core.int buildCounterCertificateAuthorityPolicy = 0;
api.CertificateAuthorityPolicy buildCertificateAuthorityPolicy() {
  var o = api.CertificateAuthorityPolicy();
  buildCounterCertificateAuthorityPolicy++;
  if (buildCounterCertificateAuthorityPolicy < 3) {
    o.allowedCommonNames = buildUnnamed7493();
    o.allowedConfigList = buildAllowedConfigList();
    o.allowedIssuanceModes = buildIssuanceModes();
    o.allowedLocationsAndOrganizations = buildUnnamed7494();
    o.allowedSans = buildAllowedSubjectAltNames();
    o.maximumLifetime = 'foo';
    o.overwriteConfigValues = buildReusableConfigWrapper();
  }
  buildCounterCertificateAuthorityPolicy--;
  return o;
}

void checkCertificateAuthorityPolicy(api.CertificateAuthorityPolicy o) {
  buildCounterCertificateAuthorityPolicy++;
  if (buildCounterCertificateAuthorityPolicy < 3) {
    checkUnnamed7493(o.allowedCommonNames!);
    checkAllowedConfigList(o.allowedConfigList! as api.AllowedConfigList);
    checkIssuanceModes(o.allowedIssuanceModes! as api.IssuanceModes);
    checkUnnamed7494(o.allowedLocationsAndOrganizations!);
    checkAllowedSubjectAltNames(o.allowedSans! as api.AllowedSubjectAltNames);
    unittest.expect(
      o.maximumLifetime!,
      unittest.equals('foo'),
    );
    checkReusableConfigWrapper(
        o.overwriteConfigValues! as api.ReusableConfigWrapper);
  }
  buildCounterCertificateAuthorityPolicy--;
}

core.int buildCounterCertificateConfig = 0;
api.CertificateConfig buildCertificateConfig() {
  var o = api.CertificateConfig();
  buildCounterCertificateConfig++;
  if (buildCounterCertificateConfig < 3) {
    o.publicKey = buildPublicKey();
    o.reusableConfig = buildReusableConfigWrapper();
    o.subjectConfig = buildSubjectConfig();
  }
  buildCounterCertificateConfig--;
  return o;
}

void checkCertificateConfig(api.CertificateConfig o) {
  buildCounterCertificateConfig++;
  if (buildCounterCertificateConfig < 3) {
    checkPublicKey(o.publicKey! as api.PublicKey);
    checkReusableConfigWrapper(o.reusableConfig! as api.ReusableConfigWrapper);
    checkSubjectConfig(o.subjectConfig! as api.SubjectConfig);
  }
  buildCounterCertificateConfig--;
}

core.List<core.String> buildUnnamed7495() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7495(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed7496() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7496(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterCertificateDescription = 0;
api.CertificateDescription buildCertificateDescription() {
  var o = api.CertificateDescription();
  buildCounterCertificateDescription++;
  if (buildCounterCertificateDescription < 3) {
    o.aiaIssuingCertificateUrls = buildUnnamed7495();
    o.authorityKeyId = buildKeyId();
    o.certFingerprint = buildCertificateFingerprint();
    o.configValues = buildReusableConfigValues();
    o.crlDistributionPoints = buildUnnamed7496();
    o.publicKey = buildPublicKey();
    o.subjectDescription = buildSubjectDescription();
    o.subjectKeyId = buildKeyId();
  }
  buildCounterCertificateDescription--;
  return o;
}

void checkCertificateDescription(api.CertificateDescription o) {
  buildCounterCertificateDescription++;
  if (buildCounterCertificateDescription < 3) {
    checkUnnamed7495(o.aiaIssuingCertificateUrls!);
    checkKeyId(o.authorityKeyId! as api.KeyId);
    checkCertificateFingerprint(
        o.certFingerprint! as api.CertificateFingerprint);
    checkReusableConfigValues(o.configValues! as api.ReusableConfigValues);
    checkUnnamed7496(o.crlDistributionPoints!);
    checkPublicKey(o.publicKey! as api.PublicKey);
    checkSubjectDescription(o.subjectDescription! as api.SubjectDescription);
    checkKeyId(o.subjectKeyId! as api.KeyId);
  }
  buildCounterCertificateDescription--;
}

core.int buildCounterCertificateFingerprint = 0;
api.CertificateFingerprint buildCertificateFingerprint() {
  var o = api.CertificateFingerprint();
  buildCounterCertificateFingerprint++;
  if (buildCounterCertificateFingerprint < 3) {
    o.sha256Hash = 'foo';
  }
  buildCounterCertificateFingerprint--;
  return o;
}

void checkCertificateFingerprint(api.CertificateFingerprint o) {
  buildCounterCertificateFingerprint++;
  if (buildCounterCertificateFingerprint < 3) {
    unittest.expect(
      o.sha256Hash!,
      unittest.equals('foo'),
    );
  }
  buildCounterCertificateFingerprint--;
}

core.Map<core.String, core.String> buildUnnamed7497() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7497(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.List<api.RevokedCertificate> buildUnnamed7498() {
  var o = <api.RevokedCertificate>[];
  o.add(buildRevokedCertificate());
  o.add(buildRevokedCertificate());
  return o;
}

void checkUnnamed7498(core.List<api.RevokedCertificate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRevokedCertificate(o[0] as api.RevokedCertificate);
  checkRevokedCertificate(o[1] as api.RevokedCertificate);
}

core.int buildCounterCertificateRevocationList = 0;
api.CertificateRevocationList buildCertificateRevocationList() {
  var o = api.CertificateRevocationList();
  buildCounterCertificateRevocationList++;
  if (buildCounterCertificateRevocationList < 3) {
    o.accessUrl = 'foo';
    o.createTime = 'foo';
    o.labels = buildUnnamed7497();
    o.name = 'foo';
    o.pemCrl = 'foo';
    o.revokedCertificates = buildUnnamed7498();
    o.sequenceNumber = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterCertificateRevocationList--;
  return o;
}

void checkCertificateRevocationList(api.CertificateRevocationList o) {
  buildCounterCertificateRevocationList++;
  if (buildCounterCertificateRevocationList < 3) {
    unittest.expect(
      o.accessUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkUnnamed7497(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pemCrl!,
      unittest.equals('foo'),
    );
    checkUnnamed7498(o.revokedCertificates!);
    unittest.expect(
      o.sequenceNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterCertificateRevocationList--;
}

core.int buildCounterDisableCertificateAuthorityRequest = 0;
api.DisableCertificateAuthorityRequest
    buildDisableCertificateAuthorityRequest() {
  var o = api.DisableCertificateAuthorityRequest();
  buildCounterDisableCertificateAuthorityRequest++;
  if (buildCounterDisableCertificateAuthorityRequest < 3) {
    o.requestId = 'foo';
  }
  buildCounterDisableCertificateAuthorityRequest--;
  return o;
}

void checkDisableCertificateAuthorityRequest(
    api.DisableCertificateAuthorityRequest o) {
  buildCounterDisableCertificateAuthorityRequest++;
  if (buildCounterDisableCertificateAuthorityRequest < 3) {
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterDisableCertificateAuthorityRequest--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  var o = api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

void checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.int buildCounterEnableCertificateAuthorityRequest = 0;
api.EnableCertificateAuthorityRequest buildEnableCertificateAuthorityRequest() {
  var o = api.EnableCertificateAuthorityRequest();
  buildCounterEnableCertificateAuthorityRequest++;
  if (buildCounterEnableCertificateAuthorityRequest < 3) {
    o.requestId = 'foo';
  }
  buildCounterEnableCertificateAuthorityRequest--;
  return o;
}

void checkEnableCertificateAuthorityRequest(
    api.EnableCertificateAuthorityRequest o) {
  buildCounterEnableCertificateAuthorityRequest++;
  if (buildCounterEnableCertificateAuthorityRequest < 3) {
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnableCertificateAuthorityRequest--;
}

core.Map<core.String, core.Object> buildUnnamed7499() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7499(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(
    casted1['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted1['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted1['string'],
    unittest.equals('foo'),
  );
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(
    casted2['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted2['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted2['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object>> buildUnnamed7500() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed7499());
  o.add(buildUnnamed7499());
  return o;
}

void checkUnnamed7500(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed7499(o[0]);
  checkUnnamed7499(o[1]);
}

core.int buildCounterExemplar = 0;
api.Exemplar buildExemplar() {
  var o = api.Exemplar();
  buildCounterExemplar++;
  if (buildCounterExemplar < 3) {
    o.attachments = buildUnnamed7500();
    o.timestamp = 'foo';
    o.value = 42.0;
  }
  buildCounterExemplar--;
  return o;
}

void checkExemplar(api.Exemplar o) {
  buildCounterExemplar++;
  if (buildCounterExemplar < 3) {
    checkUnnamed7500(o.attachments!);
    unittest.expect(
      o.timestamp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals(42.0),
    );
  }
  buildCounterExemplar--;
}

core.int buildCounterExpr = 0;
api.Expr buildExpr() {
  var o = api.Expr();
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    o.description = 'foo';
    o.expression = 'foo';
    o.location = 'foo';
    o.title = 'foo';
  }
  buildCounterExpr--;
  return o;
}

void checkExpr(api.Expr o) {
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expression!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterExpr--;
}

core.int buildCounterExtendedKeyUsageOptions = 0;
api.ExtendedKeyUsageOptions buildExtendedKeyUsageOptions() {
  var o = api.ExtendedKeyUsageOptions();
  buildCounterExtendedKeyUsageOptions++;
  if (buildCounterExtendedKeyUsageOptions < 3) {
    o.clientAuth = true;
    o.codeSigning = true;
    o.emailProtection = true;
    o.ocspSigning = true;
    o.serverAuth = true;
    o.timeStamping = true;
  }
  buildCounterExtendedKeyUsageOptions--;
  return o;
}

void checkExtendedKeyUsageOptions(api.ExtendedKeyUsageOptions o) {
  buildCounterExtendedKeyUsageOptions++;
  if (buildCounterExtendedKeyUsageOptions < 3) {
    unittest.expect(o.clientAuth!, unittest.isTrue);
    unittest.expect(o.codeSigning!, unittest.isTrue);
    unittest.expect(o.emailProtection!, unittest.isTrue);
    unittest.expect(o.ocspSigning!, unittest.isTrue);
    unittest.expect(o.serverAuth!, unittest.isTrue);
    unittest.expect(o.timeStamping!, unittest.isTrue);
  }
  buildCounterExtendedKeyUsageOptions--;
}

core.int buildCounterFetchCertificateAuthorityCsrResponse = 0;
api.FetchCertificateAuthorityCsrResponse
    buildFetchCertificateAuthorityCsrResponse() {
  var o = api.FetchCertificateAuthorityCsrResponse();
  buildCounterFetchCertificateAuthorityCsrResponse++;
  if (buildCounterFetchCertificateAuthorityCsrResponse < 3) {
    o.pemCsr = 'foo';
  }
  buildCounterFetchCertificateAuthorityCsrResponse--;
  return o;
}

void checkFetchCertificateAuthorityCsrResponse(
    api.FetchCertificateAuthorityCsrResponse o) {
  buildCounterFetchCertificateAuthorityCsrResponse++;
  if (buildCounterFetchCertificateAuthorityCsrResponse < 3) {
    unittest.expect(
      o.pemCsr!,
      unittest.equals('foo'),
    );
  }
  buildCounterFetchCertificateAuthorityCsrResponse--;
}

core.int buildCounterGoogleApiServicecontrolV1AttributeValue = 0;
api.GoogleApiServicecontrolV1AttributeValue
    buildGoogleApiServicecontrolV1AttributeValue() {
  var o = api.GoogleApiServicecontrolV1AttributeValue();
  buildCounterGoogleApiServicecontrolV1AttributeValue++;
  if (buildCounterGoogleApiServicecontrolV1AttributeValue < 3) {
    o.boolValue = true;
    o.intValue = 'foo';
    o.stringValue = buildGoogleApiServicecontrolV1TruncatableString();
  }
  buildCounterGoogleApiServicecontrolV1AttributeValue--;
  return o;
}

void checkGoogleApiServicecontrolV1AttributeValue(
    api.GoogleApiServicecontrolV1AttributeValue o) {
  buildCounterGoogleApiServicecontrolV1AttributeValue++;
  if (buildCounterGoogleApiServicecontrolV1AttributeValue < 3) {
    unittest.expect(o.boolValue!, unittest.isTrue);
    unittest.expect(
      o.intValue!,
      unittest.equals('foo'),
    );
    checkGoogleApiServicecontrolV1TruncatableString(
        o.stringValue! as api.GoogleApiServicecontrolV1TruncatableString);
  }
  buildCounterGoogleApiServicecontrolV1AttributeValue--;
}

core.Map<core.String, api.GoogleApiServicecontrolV1AttributeValue>
    buildUnnamed7501() {
  var o = <core.String, api.GoogleApiServicecontrolV1AttributeValue>{};
  o['x'] = buildGoogleApiServicecontrolV1AttributeValue();
  o['y'] = buildGoogleApiServicecontrolV1AttributeValue();
  return o;
}

void checkUnnamed7501(
    core.Map<core.String, api.GoogleApiServicecontrolV1AttributeValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleApiServicecontrolV1AttributeValue(
      o['x']! as api.GoogleApiServicecontrolV1AttributeValue);
  checkGoogleApiServicecontrolV1AttributeValue(
      o['y']! as api.GoogleApiServicecontrolV1AttributeValue);
}

core.int buildCounterGoogleApiServicecontrolV1Attributes = 0;
api.GoogleApiServicecontrolV1Attributes
    buildGoogleApiServicecontrolV1Attributes() {
  var o = api.GoogleApiServicecontrolV1Attributes();
  buildCounterGoogleApiServicecontrolV1Attributes++;
  if (buildCounterGoogleApiServicecontrolV1Attributes < 3) {
    o.attributeMap = buildUnnamed7501();
    o.droppedAttributesCount = 42;
  }
  buildCounterGoogleApiServicecontrolV1Attributes--;
  return o;
}

void checkGoogleApiServicecontrolV1Attributes(
    api.GoogleApiServicecontrolV1Attributes o) {
  buildCounterGoogleApiServicecontrolV1Attributes++;
  if (buildCounterGoogleApiServicecontrolV1Attributes < 3) {
    checkUnnamed7501(o.attributeMap!);
    unittest.expect(
      o.droppedAttributesCount!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleApiServicecontrolV1Attributes--;
}

core.List<core.String> buildUnnamed7502() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7502(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<api.Exemplar> buildUnnamed7503() {
  var o = <api.Exemplar>[];
  o.add(buildExemplar());
  o.add(buildExemplar());
  return o;
}

void checkUnnamed7503(core.List<api.Exemplar> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExemplar(o[0] as api.Exemplar);
  checkExemplar(o[1] as api.Exemplar);
}

core.int buildCounterGoogleApiServicecontrolV1Distribution = 0;
api.GoogleApiServicecontrolV1Distribution
    buildGoogleApiServicecontrolV1Distribution() {
  var o = api.GoogleApiServicecontrolV1Distribution();
  buildCounterGoogleApiServicecontrolV1Distribution++;
  if (buildCounterGoogleApiServicecontrolV1Distribution < 3) {
    o.bucketCounts = buildUnnamed7502();
    o.count = 'foo';
    o.exemplars = buildUnnamed7503();
    o.explicitBuckets = buildGoogleApiServicecontrolV1ExplicitBuckets();
    o.exponentialBuckets = buildGoogleApiServicecontrolV1ExponentialBuckets();
    o.linearBuckets = buildGoogleApiServicecontrolV1LinearBuckets();
    o.maximum = 42.0;
    o.mean = 42.0;
    o.minimum = 42.0;
    o.sumOfSquaredDeviation = 42.0;
  }
  buildCounterGoogleApiServicecontrolV1Distribution--;
  return o;
}

void checkGoogleApiServicecontrolV1Distribution(
    api.GoogleApiServicecontrolV1Distribution o) {
  buildCounterGoogleApiServicecontrolV1Distribution++;
  if (buildCounterGoogleApiServicecontrolV1Distribution < 3) {
    checkUnnamed7502(o.bucketCounts!);
    unittest.expect(
      o.count!,
      unittest.equals('foo'),
    );
    checkUnnamed7503(o.exemplars!);
    checkGoogleApiServicecontrolV1ExplicitBuckets(
        o.explicitBuckets! as api.GoogleApiServicecontrolV1ExplicitBuckets);
    checkGoogleApiServicecontrolV1ExponentialBuckets(o.exponentialBuckets!
        as api.GoogleApiServicecontrolV1ExponentialBuckets);
    checkGoogleApiServicecontrolV1LinearBuckets(
        o.linearBuckets! as api.GoogleApiServicecontrolV1LinearBuckets);
    unittest.expect(
      o.maximum!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.mean!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.minimum!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.sumOfSquaredDeviation!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleApiServicecontrolV1Distribution--;
}

core.List<core.double> buildUnnamed7504() {
  var o = <core.double>[];
  o.add(42.0);
  o.add(42.0);
  return o;
}

void checkUnnamed7504(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.int buildCounterGoogleApiServicecontrolV1ExplicitBuckets = 0;
api.GoogleApiServicecontrolV1ExplicitBuckets
    buildGoogleApiServicecontrolV1ExplicitBuckets() {
  var o = api.GoogleApiServicecontrolV1ExplicitBuckets();
  buildCounterGoogleApiServicecontrolV1ExplicitBuckets++;
  if (buildCounterGoogleApiServicecontrolV1ExplicitBuckets < 3) {
    o.bounds = buildUnnamed7504();
  }
  buildCounterGoogleApiServicecontrolV1ExplicitBuckets--;
  return o;
}

void checkGoogleApiServicecontrolV1ExplicitBuckets(
    api.GoogleApiServicecontrolV1ExplicitBuckets o) {
  buildCounterGoogleApiServicecontrolV1ExplicitBuckets++;
  if (buildCounterGoogleApiServicecontrolV1ExplicitBuckets < 3) {
    checkUnnamed7504(o.bounds!);
  }
  buildCounterGoogleApiServicecontrolV1ExplicitBuckets--;
}

core.int buildCounterGoogleApiServicecontrolV1ExponentialBuckets = 0;
api.GoogleApiServicecontrolV1ExponentialBuckets
    buildGoogleApiServicecontrolV1ExponentialBuckets() {
  var o = api.GoogleApiServicecontrolV1ExponentialBuckets();
  buildCounterGoogleApiServicecontrolV1ExponentialBuckets++;
  if (buildCounterGoogleApiServicecontrolV1ExponentialBuckets < 3) {
    o.growthFactor = 42.0;
    o.numFiniteBuckets = 42;
    o.scale = 42.0;
  }
  buildCounterGoogleApiServicecontrolV1ExponentialBuckets--;
  return o;
}

void checkGoogleApiServicecontrolV1ExponentialBuckets(
    api.GoogleApiServicecontrolV1ExponentialBuckets o) {
  buildCounterGoogleApiServicecontrolV1ExponentialBuckets++;
  if (buildCounterGoogleApiServicecontrolV1ExponentialBuckets < 3) {
    unittest.expect(
      o.growthFactor!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.numFiniteBuckets!,
      unittest.equals(42),
    );
    unittest.expect(
      o.scale!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleApiServicecontrolV1ExponentialBuckets--;
}

core.int buildCounterGoogleApiServicecontrolV1HttpRequest = 0;
api.GoogleApiServicecontrolV1HttpRequest
    buildGoogleApiServicecontrolV1HttpRequest() {
  var o = api.GoogleApiServicecontrolV1HttpRequest();
  buildCounterGoogleApiServicecontrolV1HttpRequest++;
  if (buildCounterGoogleApiServicecontrolV1HttpRequest < 3) {
    o.cacheFillBytes = 'foo';
    o.cacheHit = true;
    o.cacheLookup = true;
    o.cacheValidatedWithOriginServer = true;
    o.latency = 'foo';
    o.protocol = 'foo';
    o.referer = 'foo';
    o.remoteIp = 'foo';
    o.requestMethod = 'foo';
    o.requestSize = 'foo';
    o.requestUrl = 'foo';
    o.responseSize = 'foo';
    o.serverIp = 'foo';
    o.status = 42;
    o.userAgent = 'foo';
  }
  buildCounterGoogleApiServicecontrolV1HttpRequest--;
  return o;
}

void checkGoogleApiServicecontrolV1HttpRequest(
    api.GoogleApiServicecontrolV1HttpRequest o) {
  buildCounterGoogleApiServicecontrolV1HttpRequest++;
  if (buildCounterGoogleApiServicecontrolV1HttpRequest < 3) {
    unittest.expect(
      o.cacheFillBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(o.cacheHit!, unittest.isTrue);
    unittest.expect(o.cacheLookup!, unittest.isTrue);
    unittest.expect(o.cacheValidatedWithOriginServer!, unittest.isTrue);
    unittest.expect(
      o.latency!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.protocol!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.referer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.remoteIp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.responseSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serverIp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals(42),
    );
    unittest.expect(
      o.userAgent!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleApiServicecontrolV1HttpRequest--;
}

core.int buildCounterGoogleApiServicecontrolV1LinearBuckets = 0;
api.GoogleApiServicecontrolV1LinearBuckets
    buildGoogleApiServicecontrolV1LinearBuckets() {
  var o = api.GoogleApiServicecontrolV1LinearBuckets();
  buildCounterGoogleApiServicecontrolV1LinearBuckets++;
  if (buildCounterGoogleApiServicecontrolV1LinearBuckets < 3) {
    o.numFiniteBuckets = 42;
    o.offset = 42.0;
    o.width = 42.0;
  }
  buildCounterGoogleApiServicecontrolV1LinearBuckets--;
  return o;
}

void checkGoogleApiServicecontrolV1LinearBuckets(
    api.GoogleApiServicecontrolV1LinearBuckets o) {
  buildCounterGoogleApiServicecontrolV1LinearBuckets++;
  if (buildCounterGoogleApiServicecontrolV1LinearBuckets < 3) {
    unittest.expect(
      o.numFiniteBuckets!,
      unittest.equals(42),
    );
    unittest.expect(
      o.offset!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleApiServicecontrolV1LinearBuckets--;
}

core.Map<core.String, core.String> buildUnnamed7505() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7505(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object> buildUnnamed7506() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7506(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(
    casted3['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted3['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted3['string'],
    unittest.equals('foo'),
  );
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(
    casted4['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted4['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted4['string'],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object> buildUnnamed7507() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7507(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(
    casted5['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted5['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted5['string'],
    unittest.equals('foo'),
  );
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(
    casted6['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted6['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted6['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleApiServicecontrolV1LogEntry = 0;
api.GoogleApiServicecontrolV1LogEntry buildGoogleApiServicecontrolV1LogEntry() {
  var o = api.GoogleApiServicecontrolV1LogEntry();
  buildCounterGoogleApiServicecontrolV1LogEntry++;
  if (buildCounterGoogleApiServicecontrolV1LogEntry < 3) {
    o.httpRequest = buildGoogleApiServicecontrolV1HttpRequest();
    o.insertId = 'foo';
    o.labels = buildUnnamed7505();
    o.name = 'foo';
    o.operation = buildGoogleApiServicecontrolV1LogEntryOperation();
    o.protoPayload = buildUnnamed7506();
    o.severity = 'foo';
    o.sourceLocation = buildGoogleApiServicecontrolV1LogEntrySourceLocation();
    o.structPayload = buildUnnamed7507();
    o.textPayload = 'foo';
    o.timestamp = 'foo';
    o.trace = 'foo';
  }
  buildCounterGoogleApiServicecontrolV1LogEntry--;
  return o;
}

void checkGoogleApiServicecontrolV1LogEntry(
    api.GoogleApiServicecontrolV1LogEntry o) {
  buildCounterGoogleApiServicecontrolV1LogEntry++;
  if (buildCounterGoogleApiServicecontrolV1LogEntry < 3) {
    checkGoogleApiServicecontrolV1HttpRequest(
        o.httpRequest! as api.GoogleApiServicecontrolV1HttpRequest);
    unittest.expect(
      o.insertId!,
      unittest.equals('foo'),
    );
    checkUnnamed7505(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleApiServicecontrolV1LogEntryOperation(
        o.operation! as api.GoogleApiServicecontrolV1LogEntryOperation);
    checkUnnamed7506(o.protoPayload!);
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
    checkGoogleApiServicecontrolV1LogEntrySourceLocation(o.sourceLocation!
        as api.GoogleApiServicecontrolV1LogEntrySourceLocation);
    checkUnnamed7507(o.structPayload!);
    unittest.expect(
      o.textPayload!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timestamp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.trace!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleApiServicecontrolV1LogEntry--;
}

core.int buildCounterGoogleApiServicecontrolV1LogEntryOperation = 0;
api.GoogleApiServicecontrolV1LogEntryOperation
    buildGoogleApiServicecontrolV1LogEntryOperation() {
  var o = api.GoogleApiServicecontrolV1LogEntryOperation();
  buildCounterGoogleApiServicecontrolV1LogEntryOperation++;
  if (buildCounterGoogleApiServicecontrolV1LogEntryOperation < 3) {
    o.first = true;
    o.id = 'foo';
    o.last = true;
    o.producer = 'foo';
  }
  buildCounterGoogleApiServicecontrolV1LogEntryOperation--;
  return o;
}

void checkGoogleApiServicecontrolV1LogEntryOperation(
    api.GoogleApiServicecontrolV1LogEntryOperation o) {
  buildCounterGoogleApiServicecontrolV1LogEntryOperation++;
  if (buildCounterGoogleApiServicecontrolV1LogEntryOperation < 3) {
    unittest.expect(o.first!, unittest.isTrue);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(o.last!, unittest.isTrue);
    unittest.expect(
      o.producer!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleApiServicecontrolV1LogEntryOperation--;
}

core.int buildCounterGoogleApiServicecontrolV1LogEntrySourceLocation = 0;
api.GoogleApiServicecontrolV1LogEntrySourceLocation
    buildGoogleApiServicecontrolV1LogEntrySourceLocation() {
  var o = api.GoogleApiServicecontrolV1LogEntrySourceLocation();
  buildCounterGoogleApiServicecontrolV1LogEntrySourceLocation++;
  if (buildCounterGoogleApiServicecontrolV1LogEntrySourceLocation < 3) {
    o.file = 'foo';
    o.function = 'foo';
    o.line = 'foo';
  }
  buildCounterGoogleApiServicecontrolV1LogEntrySourceLocation--;
  return o;
}

void checkGoogleApiServicecontrolV1LogEntrySourceLocation(
    api.GoogleApiServicecontrolV1LogEntrySourceLocation o) {
  buildCounterGoogleApiServicecontrolV1LogEntrySourceLocation++;
  if (buildCounterGoogleApiServicecontrolV1LogEntrySourceLocation < 3) {
    unittest.expect(
      o.file!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.function!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.line!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleApiServicecontrolV1LogEntrySourceLocation--;
}

core.Map<core.String, core.String> buildUnnamed7508() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7508(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleApiServicecontrolV1MetricValue = 0;
api.GoogleApiServicecontrolV1MetricValue
    buildGoogleApiServicecontrolV1MetricValue() {
  var o = api.GoogleApiServicecontrolV1MetricValue();
  buildCounterGoogleApiServicecontrolV1MetricValue++;
  if (buildCounterGoogleApiServicecontrolV1MetricValue < 3) {
    o.boolValue = true;
    o.distributionValue = buildGoogleApiServicecontrolV1Distribution();
    o.doubleValue = 42.0;
    o.endTime = 'foo';
    o.int64Value = 'foo';
    o.labels = buildUnnamed7508();
    o.moneyValue = buildMoney();
    o.startTime = 'foo';
    o.stringValue = 'foo';
  }
  buildCounterGoogleApiServicecontrolV1MetricValue--;
  return o;
}

void checkGoogleApiServicecontrolV1MetricValue(
    api.GoogleApiServicecontrolV1MetricValue o) {
  buildCounterGoogleApiServicecontrolV1MetricValue++;
  if (buildCounterGoogleApiServicecontrolV1MetricValue < 3) {
    unittest.expect(o.boolValue!, unittest.isTrue);
    checkGoogleApiServicecontrolV1Distribution(
        o.distributionValue! as api.GoogleApiServicecontrolV1Distribution);
    unittest.expect(
      o.doubleValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.int64Value!,
      unittest.equals('foo'),
    );
    checkUnnamed7508(o.labels!);
    checkMoney(o.moneyValue! as api.Money);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stringValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleApiServicecontrolV1MetricValue--;
}

core.List<api.GoogleApiServicecontrolV1MetricValue> buildUnnamed7509() {
  var o = <api.GoogleApiServicecontrolV1MetricValue>[];
  o.add(buildGoogleApiServicecontrolV1MetricValue());
  o.add(buildGoogleApiServicecontrolV1MetricValue());
  return o;
}

void checkUnnamed7509(core.List<api.GoogleApiServicecontrolV1MetricValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleApiServicecontrolV1MetricValue(
      o[0] as api.GoogleApiServicecontrolV1MetricValue);
  checkGoogleApiServicecontrolV1MetricValue(
      o[1] as api.GoogleApiServicecontrolV1MetricValue);
}

core.int buildCounterGoogleApiServicecontrolV1MetricValueSet = 0;
api.GoogleApiServicecontrolV1MetricValueSet
    buildGoogleApiServicecontrolV1MetricValueSet() {
  var o = api.GoogleApiServicecontrolV1MetricValueSet();
  buildCounterGoogleApiServicecontrolV1MetricValueSet++;
  if (buildCounterGoogleApiServicecontrolV1MetricValueSet < 3) {
    o.metricName = 'foo';
    o.metricValues = buildUnnamed7509();
  }
  buildCounterGoogleApiServicecontrolV1MetricValueSet--;
  return o;
}

void checkGoogleApiServicecontrolV1MetricValueSet(
    api.GoogleApiServicecontrolV1MetricValueSet o) {
  buildCounterGoogleApiServicecontrolV1MetricValueSet++;
  if (buildCounterGoogleApiServicecontrolV1MetricValueSet < 3) {
    unittest.expect(
      o.metricName!,
      unittest.equals('foo'),
    );
    checkUnnamed7509(o.metricValues!);
  }
  buildCounterGoogleApiServicecontrolV1MetricValueSet--;
}

core.Map<core.String, core.Object> buildUnnamed7510() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7510(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(
    casted7['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted7['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted7['string'],
    unittest.equals('foo'),
  );
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(
    casted8['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted8['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted8['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object>> buildUnnamed7511() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed7510());
  o.add(buildUnnamed7510());
  return o;
}

void checkUnnamed7511(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed7510(o[0]);
  checkUnnamed7510(o[1]);
}

core.Map<core.String, core.String> buildUnnamed7512() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7512(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.List<api.GoogleApiServicecontrolV1LogEntry> buildUnnamed7513() {
  var o = <api.GoogleApiServicecontrolV1LogEntry>[];
  o.add(buildGoogleApiServicecontrolV1LogEntry());
  o.add(buildGoogleApiServicecontrolV1LogEntry());
  return o;
}

void checkUnnamed7513(core.List<api.GoogleApiServicecontrolV1LogEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleApiServicecontrolV1LogEntry(
      o[0] as api.GoogleApiServicecontrolV1LogEntry);
  checkGoogleApiServicecontrolV1LogEntry(
      o[1] as api.GoogleApiServicecontrolV1LogEntry);
}

core.List<api.GoogleApiServicecontrolV1MetricValueSet> buildUnnamed7514() {
  var o = <api.GoogleApiServicecontrolV1MetricValueSet>[];
  o.add(buildGoogleApiServicecontrolV1MetricValueSet());
  o.add(buildGoogleApiServicecontrolV1MetricValueSet());
  return o;
}

void checkUnnamed7514(
    core.List<api.GoogleApiServicecontrolV1MetricValueSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleApiServicecontrolV1MetricValueSet(
      o[0] as api.GoogleApiServicecontrolV1MetricValueSet);
  checkGoogleApiServicecontrolV1MetricValueSet(
      o[1] as api.GoogleApiServicecontrolV1MetricValueSet);
}

core.List<api.GoogleApiServicecontrolV1ResourceInfo> buildUnnamed7515() {
  var o = <api.GoogleApiServicecontrolV1ResourceInfo>[];
  o.add(buildGoogleApiServicecontrolV1ResourceInfo());
  o.add(buildGoogleApiServicecontrolV1ResourceInfo());
  return o;
}

void checkUnnamed7515(core.List<api.GoogleApiServicecontrolV1ResourceInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleApiServicecontrolV1ResourceInfo(
      o[0] as api.GoogleApiServicecontrolV1ResourceInfo);
  checkGoogleApiServicecontrolV1ResourceInfo(
      o[1] as api.GoogleApiServicecontrolV1ResourceInfo);
}

core.List<api.GoogleApiServicecontrolV1TraceSpan> buildUnnamed7516() {
  var o = <api.GoogleApiServicecontrolV1TraceSpan>[];
  o.add(buildGoogleApiServicecontrolV1TraceSpan());
  o.add(buildGoogleApiServicecontrolV1TraceSpan());
  return o;
}

void checkUnnamed7516(core.List<api.GoogleApiServicecontrolV1TraceSpan> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleApiServicecontrolV1TraceSpan(
      o[0] as api.GoogleApiServicecontrolV1TraceSpan);
  checkGoogleApiServicecontrolV1TraceSpan(
      o[1] as api.GoogleApiServicecontrolV1TraceSpan);
}

core.Map<core.String, core.String> buildUnnamed7517() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7517(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleApiServicecontrolV1Operation = 0;
api.GoogleApiServicecontrolV1Operation
    buildGoogleApiServicecontrolV1Operation() {
  var o = api.GoogleApiServicecontrolV1Operation();
  buildCounterGoogleApiServicecontrolV1Operation++;
  if (buildCounterGoogleApiServicecontrolV1Operation < 3) {
    o.consumerId = 'foo';
    o.endTime = 'foo';
    o.extensions = buildUnnamed7511();
    o.importance = 'foo';
    o.labels = buildUnnamed7512();
    o.logEntries = buildUnnamed7513();
    o.metricValueSets = buildUnnamed7514();
    o.operationId = 'foo';
    o.operationName = 'foo';
    o.quotaProperties = buildGoogleApiServicecontrolV1QuotaProperties();
    o.resources = buildUnnamed7515();
    o.startTime = 'foo';
    o.traceSpans = buildUnnamed7516();
    o.userLabels = buildUnnamed7517();
  }
  buildCounterGoogleApiServicecontrolV1Operation--;
  return o;
}

void checkGoogleApiServicecontrolV1Operation(
    api.GoogleApiServicecontrolV1Operation o) {
  buildCounterGoogleApiServicecontrolV1Operation++;
  if (buildCounterGoogleApiServicecontrolV1Operation < 3) {
    unittest.expect(
      o.consumerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkUnnamed7511(o.extensions!);
    unittest.expect(
      o.importance!,
      unittest.equals('foo'),
    );
    checkUnnamed7512(o.labels!);
    checkUnnamed7513(o.logEntries!);
    checkUnnamed7514(o.metricValueSets!);
    unittest.expect(
      o.operationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operationName!,
      unittest.equals('foo'),
    );
    checkGoogleApiServicecontrolV1QuotaProperties(
        o.quotaProperties! as api.GoogleApiServicecontrolV1QuotaProperties);
    checkUnnamed7515(o.resources!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    checkUnnamed7516(o.traceSpans!);
    checkUnnamed7517(o.userLabels!);
  }
  buildCounterGoogleApiServicecontrolV1Operation--;
}

core.int buildCounterGoogleApiServicecontrolV1QuotaProperties = 0;
api.GoogleApiServicecontrolV1QuotaProperties
    buildGoogleApiServicecontrolV1QuotaProperties() {
  var o = api.GoogleApiServicecontrolV1QuotaProperties();
  buildCounterGoogleApiServicecontrolV1QuotaProperties++;
  if (buildCounterGoogleApiServicecontrolV1QuotaProperties < 3) {
    o.quotaMode = 'foo';
  }
  buildCounterGoogleApiServicecontrolV1QuotaProperties--;
  return o;
}

void checkGoogleApiServicecontrolV1QuotaProperties(
    api.GoogleApiServicecontrolV1QuotaProperties o) {
  buildCounterGoogleApiServicecontrolV1QuotaProperties++;
  if (buildCounterGoogleApiServicecontrolV1QuotaProperties < 3) {
    unittest.expect(
      o.quotaMode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleApiServicecontrolV1QuotaProperties--;
}

core.List<api.GoogleApiServicecontrolV1Operation> buildUnnamed7518() {
  var o = <api.GoogleApiServicecontrolV1Operation>[];
  o.add(buildGoogleApiServicecontrolV1Operation());
  o.add(buildGoogleApiServicecontrolV1Operation());
  return o;
}

void checkUnnamed7518(core.List<api.GoogleApiServicecontrolV1Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleApiServicecontrolV1Operation(
      o[0] as api.GoogleApiServicecontrolV1Operation);
  checkGoogleApiServicecontrolV1Operation(
      o[1] as api.GoogleApiServicecontrolV1Operation);
}

core.int buildCounterGoogleApiServicecontrolV1ReportRequest = 0;
api.GoogleApiServicecontrolV1ReportRequest
    buildGoogleApiServicecontrolV1ReportRequest() {
  var o = api.GoogleApiServicecontrolV1ReportRequest();
  buildCounterGoogleApiServicecontrolV1ReportRequest++;
  if (buildCounterGoogleApiServicecontrolV1ReportRequest < 3) {
    o.operations = buildUnnamed7518();
    o.serviceConfigId = 'foo';
    o.serviceName = 'foo';
  }
  buildCounterGoogleApiServicecontrolV1ReportRequest--;
  return o;
}

void checkGoogleApiServicecontrolV1ReportRequest(
    api.GoogleApiServicecontrolV1ReportRequest o) {
  buildCounterGoogleApiServicecontrolV1ReportRequest++;
  if (buildCounterGoogleApiServicecontrolV1ReportRequest < 3) {
    checkUnnamed7518(o.operations!);
    unittest.expect(
      o.serviceConfigId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleApiServicecontrolV1ReportRequest--;
}

core.int buildCounterGoogleApiServicecontrolV1ResourceInfo = 0;
api.GoogleApiServicecontrolV1ResourceInfo
    buildGoogleApiServicecontrolV1ResourceInfo() {
  var o = api.GoogleApiServicecontrolV1ResourceInfo();
  buildCounterGoogleApiServicecontrolV1ResourceInfo++;
  if (buildCounterGoogleApiServicecontrolV1ResourceInfo < 3) {
    o.resourceContainer = 'foo';
    o.resourceLocation = 'foo';
    o.resourceName = 'foo';
  }
  buildCounterGoogleApiServicecontrolV1ResourceInfo--;
  return o;
}

void checkGoogleApiServicecontrolV1ResourceInfo(
    api.GoogleApiServicecontrolV1ResourceInfo o) {
  buildCounterGoogleApiServicecontrolV1ResourceInfo++;
  if (buildCounterGoogleApiServicecontrolV1ResourceInfo < 3) {
    unittest.expect(
      o.resourceContainer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceLocation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleApiServicecontrolV1ResourceInfo--;
}

core.int buildCounterGoogleApiServicecontrolV1TraceSpan = 0;
api.GoogleApiServicecontrolV1TraceSpan
    buildGoogleApiServicecontrolV1TraceSpan() {
  var o = api.GoogleApiServicecontrolV1TraceSpan();
  buildCounterGoogleApiServicecontrolV1TraceSpan++;
  if (buildCounterGoogleApiServicecontrolV1TraceSpan < 3) {
    o.attributes = buildGoogleApiServicecontrolV1Attributes();
    o.childSpanCount = 42;
    o.displayName = buildGoogleApiServicecontrolV1TruncatableString();
    o.endTime = 'foo';
    o.name = 'foo';
    o.parentSpanId = 'foo';
    o.sameProcessAsParentSpan = true;
    o.spanId = 'foo';
    o.spanKind = 'foo';
    o.startTime = 'foo';
    o.status = buildStatus();
  }
  buildCounterGoogleApiServicecontrolV1TraceSpan--;
  return o;
}

void checkGoogleApiServicecontrolV1TraceSpan(
    api.GoogleApiServicecontrolV1TraceSpan o) {
  buildCounterGoogleApiServicecontrolV1TraceSpan++;
  if (buildCounterGoogleApiServicecontrolV1TraceSpan < 3) {
    checkGoogleApiServicecontrolV1Attributes(
        o.attributes! as api.GoogleApiServicecontrolV1Attributes);
    unittest.expect(
      o.childSpanCount!,
      unittest.equals(42),
    );
    checkGoogleApiServicecontrolV1TruncatableString(
        o.displayName! as api.GoogleApiServicecontrolV1TruncatableString);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parentSpanId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.sameProcessAsParentSpan!, unittest.isTrue);
    unittest.expect(
      o.spanId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.spanKind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    checkStatus(o.status! as api.Status);
  }
  buildCounterGoogleApiServicecontrolV1TraceSpan--;
}

core.int buildCounterGoogleApiServicecontrolV1TruncatableString = 0;
api.GoogleApiServicecontrolV1TruncatableString
    buildGoogleApiServicecontrolV1TruncatableString() {
  var o = api.GoogleApiServicecontrolV1TruncatableString();
  buildCounterGoogleApiServicecontrolV1TruncatableString++;
  if (buildCounterGoogleApiServicecontrolV1TruncatableString < 3) {
    o.truncatedByteCount = 42;
    o.value = 'foo';
  }
  buildCounterGoogleApiServicecontrolV1TruncatableString--;
  return o;
}

void checkGoogleApiServicecontrolV1TruncatableString(
    api.GoogleApiServicecontrolV1TruncatableString o) {
  buildCounterGoogleApiServicecontrolV1TruncatableString++;
  if (buildCounterGoogleApiServicecontrolV1TruncatableString < 3) {
    unittest.expect(
      o.truncatedByteCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleApiServicecontrolV1TruncatableString--;
}

core.int buildCounterIssuanceModes = 0;
api.IssuanceModes buildIssuanceModes() {
  var o = api.IssuanceModes();
  buildCounterIssuanceModes++;
  if (buildCounterIssuanceModes < 3) {
    o.allowConfigBasedIssuance = true;
    o.allowCsrBasedIssuance = true;
  }
  buildCounterIssuanceModes--;
  return o;
}

void checkIssuanceModes(api.IssuanceModes o) {
  buildCounterIssuanceModes++;
  if (buildCounterIssuanceModes < 3) {
    unittest.expect(o.allowConfigBasedIssuance!, unittest.isTrue);
    unittest.expect(o.allowCsrBasedIssuance!, unittest.isTrue);
  }
  buildCounterIssuanceModes--;
}

core.int buildCounterIssuingOptions = 0;
api.IssuingOptions buildIssuingOptions() {
  var o = api.IssuingOptions();
  buildCounterIssuingOptions++;
  if (buildCounterIssuingOptions < 3) {
    o.includeCaCertUrl = true;
    o.includeCrlAccessUrl = true;
  }
  buildCounterIssuingOptions--;
  return o;
}

void checkIssuingOptions(api.IssuingOptions o) {
  buildCounterIssuingOptions++;
  if (buildCounterIssuingOptions < 3) {
    unittest.expect(o.includeCaCertUrl!, unittest.isTrue);
    unittest.expect(o.includeCrlAccessUrl!, unittest.isTrue);
  }
  buildCounterIssuingOptions--;
}

core.int buildCounterKeyId = 0;
api.KeyId buildKeyId() {
  var o = api.KeyId();
  buildCounterKeyId++;
  if (buildCounterKeyId < 3) {
    o.keyId = 'foo';
  }
  buildCounterKeyId--;
  return o;
}

void checkKeyId(api.KeyId o) {
  buildCounterKeyId++;
  if (buildCounterKeyId < 3) {
    unittest.expect(
      o.keyId!,
      unittest.equals('foo'),
    );
  }
  buildCounterKeyId--;
}

core.List<api.ObjectId> buildUnnamed7519() {
  var o = <api.ObjectId>[];
  o.add(buildObjectId());
  o.add(buildObjectId());
  return o;
}

void checkUnnamed7519(core.List<api.ObjectId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObjectId(o[0] as api.ObjectId);
  checkObjectId(o[1] as api.ObjectId);
}

core.int buildCounterKeyUsage = 0;
api.KeyUsage buildKeyUsage() {
  var o = api.KeyUsage();
  buildCounterKeyUsage++;
  if (buildCounterKeyUsage < 3) {
    o.baseKeyUsage = buildKeyUsageOptions();
    o.extendedKeyUsage = buildExtendedKeyUsageOptions();
    o.unknownExtendedKeyUsages = buildUnnamed7519();
  }
  buildCounterKeyUsage--;
  return o;
}

void checkKeyUsage(api.KeyUsage o) {
  buildCounterKeyUsage++;
  if (buildCounterKeyUsage < 3) {
    checkKeyUsageOptions(o.baseKeyUsage! as api.KeyUsageOptions);
    checkExtendedKeyUsageOptions(
        o.extendedKeyUsage! as api.ExtendedKeyUsageOptions);
    checkUnnamed7519(o.unknownExtendedKeyUsages!);
  }
  buildCounterKeyUsage--;
}

core.int buildCounterKeyUsageOptions = 0;
api.KeyUsageOptions buildKeyUsageOptions() {
  var o = api.KeyUsageOptions();
  buildCounterKeyUsageOptions++;
  if (buildCounterKeyUsageOptions < 3) {
    o.certSign = true;
    o.contentCommitment = true;
    o.crlSign = true;
    o.dataEncipherment = true;
    o.decipherOnly = true;
    o.digitalSignature = true;
    o.encipherOnly = true;
    o.keyAgreement = true;
    o.keyEncipherment = true;
  }
  buildCounterKeyUsageOptions--;
  return o;
}

void checkKeyUsageOptions(api.KeyUsageOptions o) {
  buildCounterKeyUsageOptions++;
  if (buildCounterKeyUsageOptions < 3) {
    unittest.expect(o.certSign!, unittest.isTrue);
    unittest.expect(o.contentCommitment!, unittest.isTrue);
    unittest.expect(o.crlSign!, unittest.isTrue);
    unittest.expect(o.dataEncipherment!, unittest.isTrue);
    unittest.expect(o.decipherOnly!, unittest.isTrue);
    unittest.expect(o.digitalSignature!, unittest.isTrue);
    unittest.expect(o.encipherOnly!, unittest.isTrue);
    unittest.expect(o.keyAgreement!, unittest.isTrue);
    unittest.expect(o.keyEncipherment!, unittest.isTrue);
  }
  buildCounterKeyUsageOptions--;
}

core.int buildCounterKeyVersionSpec = 0;
api.KeyVersionSpec buildKeyVersionSpec() {
  var o = api.KeyVersionSpec();
  buildCounterKeyVersionSpec++;
  if (buildCounterKeyVersionSpec < 3) {
    o.algorithm = 'foo';
    o.cloudKmsKeyVersion = 'foo';
  }
  buildCounterKeyVersionSpec--;
  return o;
}

void checkKeyVersionSpec(api.KeyVersionSpec o) {
  buildCounterKeyVersionSpec++;
  if (buildCounterKeyVersionSpec < 3) {
    unittest.expect(
      o.algorithm!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cloudKmsKeyVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterKeyVersionSpec--;
}

core.List<api.CertificateAuthority> buildUnnamed7520() {
  var o = <api.CertificateAuthority>[];
  o.add(buildCertificateAuthority());
  o.add(buildCertificateAuthority());
  return o;
}

void checkUnnamed7520(core.List<api.CertificateAuthority> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCertificateAuthority(o[0] as api.CertificateAuthority);
  checkCertificateAuthority(o[1] as api.CertificateAuthority);
}

core.List<core.String> buildUnnamed7521() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7521(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterListCertificateAuthoritiesResponse = 0;
api.ListCertificateAuthoritiesResponse
    buildListCertificateAuthoritiesResponse() {
  var o = api.ListCertificateAuthoritiesResponse();
  buildCounterListCertificateAuthoritiesResponse++;
  if (buildCounterListCertificateAuthoritiesResponse < 3) {
    o.certificateAuthorities = buildUnnamed7520();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed7521();
  }
  buildCounterListCertificateAuthoritiesResponse--;
  return o;
}

void checkListCertificateAuthoritiesResponse(
    api.ListCertificateAuthoritiesResponse o) {
  buildCounterListCertificateAuthoritiesResponse++;
  if (buildCounterListCertificateAuthoritiesResponse < 3) {
    checkUnnamed7520(o.certificateAuthorities!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7521(o.unreachable!);
  }
  buildCounterListCertificateAuthoritiesResponse--;
}

core.List<api.CertificateRevocationList> buildUnnamed7522() {
  var o = <api.CertificateRevocationList>[];
  o.add(buildCertificateRevocationList());
  o.add(buildCertificateRevocationList());
  return o;
}

void checkUnnamed7522(core.List<api.CertificateRevocationList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCertificateRevocationList(o[0] as api.CertificateRevocationList);
  checkCertificateRevocationList(o[1] as api.CertificateRevocationList);
}

core.List<core.String> buildUnnamed7523() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7523(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterListCertificateRevocationListsResponse = 0;
api.ListCertificateRevocationListsResponse
    buildListCertificateRevocationListsResponse() {
  var o = api.ListCertificateRevocationListsResponse();
  buildCounterListCertificateRevocationListsResponse++;
  if (buildCounterListCertificateRevocationListsResponse < 3) {
    o.certificateRevocationLists = buildUnnamed7522();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed7523();
  }
  buildCounterListCertificateRevocationListsResponse--;
  return o;
}

void checkListCertificateRevocationListsResponse(
    api.ListCertificateRevocationListsResponse o) {
  buildCounterListCertificateRevocationListsResponse++;
  if (buildCounterListCertificateRevocationListsResponse < 3) {
    checkUnnamed7522(o.certificateRevocationLists!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7523(o.unreachable!);
  }
  buildCounterListCertificateRevocationListsResponse--;
}

core.List<api.Certificate> buildUnnamed7524() {
  var o = <api.Certificate>[];
  o.add(buildCertificate());
  o.add(buildCertificate());
  return o;
}

void checkUnnamed7524(core.List<api.Certificate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCertificate(o[0] as api.Certificate);
  checkCertificate(o[1] as api.Certificate);
}

core.List<core.String> buildUnnamed7525() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7525(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterListCertificatesResponse = 0;
api.ListCertificatesResponse buildListCertificatesResponse() {
  var o = api.ListCertificatesResponse();
  buildCounterListCertificatesResponse++;
  if (buildCounterListCertificatesResponse < 3) {
    o.certificates = buildUnnamed7524();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed7525();
  }
  buildCounterListCertificatesResponse--;
  return o;
}

void checkListCertificatesResponse(api.ListCertificatesResponse o) {
  buildCounterListCertificatesResponse++;
  if (buildCounterListCertificatesResponse < 3) {
    checkUnnamed7524(o.certificates!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7525(o.unreachable!);
  }
  buildCounterListCertificatesResponse--;
}

core.List<api.Location> buildUnnamed7526() {
  var o = <api.Location>[];
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

void checkUnnamed7526(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0] as api.Location);
  checkLocation(o[1] as api.Location);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  var o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed7526();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed7526(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed7527() {
  var o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed7527(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0] as api.Operation);
  checkOperation(o[1] as api.Operation);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  var o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed7527();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7527(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.ReusableConfig> buildUnnamed7528() {
  var o = <api.ReusableConfig>[];
  o.add(buildReusableConfig());
  o.add(buildReusableConfig());
  return o;
}

void checkUnnamed7528(core.List<api.ReusableConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReusableConfig(o[0] as api.ReusableConfig);
  checkReusableConfig(o[1] as api.ReusableConfig);
}

core.List<core.String> buildUnnamed7529() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7529(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterListReusableConfigsResponse = 0;
api.ListReusableConfigsResponse buildListReusableConfigsResponse() {
  var o = api.ListReusableConfigsResponse();
  buildCounterListReusableConfigsResponse++;
  if (buildCounterListReusableConfigsResponse < 3) {
    o.nextPageToken = 'foo';
    o.reusableConfigs = buildUnnamed7528();
    o.unreachable = buildUnnamed7529();
  }
  buildCounterListReusableConfigsResponse--;
  return o;
}

void checkListReusableConfigsResponse(api.ListReusableConfigsResponse o) {
  buildCounterListReusableConfigsResponse++;
  if (buildCounterListReusableConfigsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7528(o.reusableConfigs!);
    checkUnnamed7529(o.unreachable!);
  }
  buildCounterListReusableConfigsResponse--;
}

core.Map<core.String, core.String> buildUnnamed7530() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7530(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object> buildUnnamed7531() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7531(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o['x']!) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(
    casted9['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted9['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted9['string'],
    unittest.equals('foo'),
  );
  var casted10 = (o['y']!) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(
    casted10['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted10['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted10['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  var o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed7530();
    o.locationId = 'foo';
    o.metadata = buildUnnamed7531();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed7530(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed7531(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.int buildCounterMoney = 0;
api.Money buildMoney() {
  var o = api.Money();
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    o.currencyCode = 'foo';
    o.nanos = 42;
    o.units = 'foo';
  }
  buildCounterMoney--;
  return o;
}

void checkMoney(api.Money o) {
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nanos!,
      unittest.equals(42),
    );
    unittest.expect(
      o.units!,
      unittest.equals('foo'),
    );
  }
  buildCounterMoney--;
}

core.List<core.int> buildUnnamed7532() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed7532(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.int buildCounterObjectId = 0;
api.ObjectId buildObjectId() {
  var o = api.ObjectId();
  buildCounterObjectId++;
  if (buildCounterObjectId < 3) {
    o.objectIdPath = buildUnnamed7532();
  }
  buildCounterObjectId--;
  return o;
}

void checkObjectId(api.ObjectId o) {
  buildCounterObjectId++;
  if (buildCounterObjectId < 3) {
    checkUnnamed7532(o.objectIdPath!);
  }
  buildCounterObjectId--;
}

core.Map<core.String, core.Object> buildUnnamed7533() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7533(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted11 = (o['x']!) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(
    casted11['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted11['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted11['string'],
    unittest.equals('foo'),
  );
  var casted12 = (o['y']!) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(
    casted12['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted12['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted12['string'],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object> buildUnnamed7534() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7534(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted13 = (o['x']!) as core.Map;
  unittest.expect(casted13, unittest.hasLength(3));
  unittest.expect(
    casted13['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted13['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted13['string'],
    unittest.equals('foo'),
  );
  var casted14 = (o['y']!) as core.Map;
  unittest.expect(casted14, unittest.hasLength(3));
  unittest.expect(
    casted14['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted14['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted14['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  var o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed7533();
    o.name = 'foo';
    o.response = buildUnnamed7534();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error! as api.Status);
    checkUnnamed7533(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed7534(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterOperationMetadata = 0;
api.OperationMetadata buildOperationMetadata() {
  var o = api.OperationMetadata();
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    o.apiVersion = 'foo';
    o.createTime = 'foo';
    o.endTime = 'foo';
    o.requestedCancellation = true;
    o.statusMessage = 'foo';
    o.target = 'foo';
    o.verb = 'foo';
  }
  buildCounterOperationMetadata--;
  return o;
}

void checkOperationMetadata(api.OperationMetadata o) {
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    unittest.expect(
      o.apiVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.requestedCancellation!, unittest.isTrue);
    unittest.expect(
      o.statusMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.target!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.verb!,
      unittest.equals('foo'),
    );
  }
  buildCounterOperationMetadata--;
}

core.List<api.AuditConfig> buildUnnamed7535() {
  var o = <api.AuditConfig>[];
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

void checkUnnamed7535(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0] as api.AuditConfig);
  checkAuditConfig(o[1] as api.AuditConfig);
}

core.List<api.Binding> buildUnnamed7536() {
  var o = <api.Binding>[];
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

void checkUnnamed7536(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0] as api.Binding);
  checkBinding(o[1] as api.Binding);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  var o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed7535();
    o.bindings = buildUnnamed7536();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed7535(o.auditConfigs!);
    checkUnnamed7536(o.bindings!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals(42),
    );
  }
  buildCounterPolicy--;
}

core.int buildCounterPublicKey = 0;
api.PublicKey buildPublicKey() {
  var o = api.PublicKey();
  buildCounterPublicKey++;
  if (buildCounterPublicKey < 3) {
    o.key = 'foo';
    o.type = 'foo';
  }
  buildCounterPublicKey--;
  return o;
}

void checkPublicKey(api.PublicKey o) {
  buildCounterPublicKey++;
  if (buildCounterPublicKey < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterPublicKey--;
}

core.int buildCounterRestoreCertificateAuthorityRequest = 0;
api.RestoreCertificateAuthorityRequest
    buildRestoreCertificateAuthorityRequest() {
  var o = api.RestoreCertificateAuthorityRequest();
  buildCounterRestoreCertificateAuthorityRequest++;
  if (buildCounterRestoreCertificateAuthorityRequest < 3) {
    o.requestId = 'foo';
  }
  buildCounterRestoreCertificateAuthorityRequest--;
  return o;
}

void checkRestoreCertificateAuthorityRequest(
    api.RestoreCertificateAuthorityRequest o) {
  buildCounterRestoreCertificateAuthorityRequest++;
  if (buildCounterRestoreCertificateAuthorityRequest < 3) {
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRestoreCertificateAuthorityRequest--;
}

core.Map<core.String, core.String> buildUnnamed7537() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7537(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterReusableConfig = 0;
api.ReusableConfig buildReusableConfig() {
  var o = api.ReusableConfig();
  buildCounterReusableConfig++;
  if (buildCounterReusableConfig < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.labels = buildUnnamed7537();
    o.name = 'foo';
    o.updateTime = 'foo';
    o.values = buildReusableConfigValues();
  }
  buildCounterReusableConfig--;
  return o;
}

void checkReusableConfig(api.ReusableConfig o) {
  buildCounterReusableConfig++;
  if (buildCounterReusableConfig < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed7537(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkReusableConfigValues(o.values! as api.ReusableConfigValues);
  }
  buildCounterReusableConfig--;
}

core.List<api.X509Extension> buildUnnamed7538() {
  var o = <api.X509Extension>[];
  o.add(buildX509Extension());
  o.add(buildX509Extension());
  return o;
}

void checkUnnamed7538(core.List<api.X509Extension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkX509Extension(o[0] as api.X509Extension);
  checkX509Extension(o[1] as api.X509Extension);
}

core.List<core.String> buildUnnamed7539() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7539(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<api.ObjectId> buildUnnamed7540() {
  var o = <api.ObjectId>[];
  o.add(buildObjectId());
  o.add(buildObjectId());
  return o;
}

void checkUnnamed7540(core.List<api.ObjectId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObjectId(o[0] as api.ObjectId);
  checkObjectId(o[1] as api.ObjectId);
}

core.int buildCounterReusableConfigValues = 0;
api.ReusableConfigValues buildReusableConfigValues() {
  var o = api.ReusableConfigValues();
  buildCounterReusableConfigValues++;
  if (buildCounterReusableConfigValues < 3) {
    o.additionalExtensions = buildUnnamed7538();
    o.aiaOcspServers = buildUnnamed7539();
    o.caOptions = buildCaOptions();
    o.keyUsage = buildKeyUsage();
    o.policyIds = buildUnnamed7540();
  }
  buildCounterReusableConfigValues--;
  return o;
}

void checkReusableConfigValues(api.ReusableConfigValues o) {
  buildCounterReusableConfigValues++;
  if (buildCounterReusableConfigValues < 3) {
    checkUnnamed7538(o.additionalExtensions!);
    checkUnnamed7539(o.aiaOcspServers!);
    checkCaOptions(o.caOptions! as api.CaOptions);
    checkKeyUsage(o.keyUsage! as api.KeyUsage);
    checkUnnamed7540(o.policyIds!);
  }
  buildCounterReusableConfigValues--;
}

core.int buildCounterReusableConfigWrapper = 0;
api.ReusableConfigWrapper buildReusableConfigWrapper() {
  var o = api.ReusableConfigWrapper();
  buildCounterReusableConfigWrapper++;
  if (buildCounterReusableConfigWrapper < 3) {
    o.reusableConfig = 'foo';
    o.reusableConfigValues = buildReusableConfigValues();
  }
  buildCounterReusableConfigWrapper--;
  return o;
}

void checkReusableConfigWrapper(api.ReusableConfigWrapper o) {
  buildCounterReusableConfigWrapper++;
  if (buildCounterReusableConfigWrapper < 3) {
    unittest.expect(
      o.reusableConfig!,
      unittest.equals('foo'),
    );
    checkReusableConfigValues(
        o.reusableConfigValues! as api.ReusableConfigValues);
  }
  buildCounterReusableConfigWrapper--;
}

core.int buildCounterRevocationDetails = 0;
api.RevocationDetails buildRevocationDetails() {
  var o = api.RevocationDetails();
  buildCounterRevocationDetails++;
  if (buildCounterRevocationDetails < 3) {
    o.revocationState = 'foo';
    o.revocationTime = 'foo';
  }
  buildCounterRevocationDetails--;
  return o;
}

void checkRevocationDetails(api.RevocationDetails o) {
  buildCounterRevocationDetails++;
  if (buildCounterRevocationDetails < 3) {
    unittest.expect(
      o.revocationState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revocationTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterRevocationDetails--;
}

core.int buildCounterRevokeCertificateRequest = 0;
api.RevokeCertificateRequest buildRevokeCertificateRequest() {
  var o = api.RevokeCertificateRequest();
  buildCounterRevokeCertificateRequest++;
  if (buildCounterRevokeCertificateRequest < 3) {
    o.reason = 'foo';
    o.requestId = 'foo';
  }
  buildCounterRevokeCertificateRequest--;
  return o;
}

void checkRevokeCertificateRequest(api.RevokeCertificateRequest o) {
  buildCounterRevokeCertificateRequest++;
  if (buildCounterRevokeCertificateRequest < 3) {
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRevokeCertificateRequest--;
}

core.int buildCounterRevokedCertificate = 0;
api.RevokedCertificate buildRevokedCertificate() {
  var o = api.RevokedCertificate();
  buildCounterRevokedCertificate++;
  if (buildCounterRevokedCertificate < 3) {
    o.certificate = 'foo';
    o.hexSerialNumber = 'foo';
    o.revocationReason = 'foo';
  }
  buildCounterRevokedCertificate--;
  return o;
}

void checkRevokedCertificate(api.RevokedCertificate o) {
  buildCounterRevokedCertificate++;
  if (buildCounterRevokedCertificate < 3) {
    unittest.expect(
      o.certificate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hexSerialNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revocationReason!,
      unittest.equals('foo'),
    );
  }
  buildCounterRevokedCertificate--;
}

core.int buildCounterScheduleDeleteCertificateAuthorityRequest = 0;
api.ScheduleDeleteCertificateAuthorityRequest
    buildScheduleDeleteCertificateAuthorityRequest() {
  var o = api.ScheduleDeleteCertificateAuthorityRequest();
  buildCounterScheduleDeleteCertificateAuthorityRequest++;
  if (buildCounterScheduleDeleteCertificateAuthorityRequest < 3) {
    o.ignoreActiveCertificates = true;
    o.requestId = 'foo';
  }
  buildCounterScheduleDeleteCertificateAuthorityRequest--;
  return o;
}

void checkScheduleDeleteCertificateAuthorityRequest(
    api.ScheduleDeleteCertificateAuthorityRequest o) {
  buildCounterScheduleDeleteCertificateAuthorityRequest++;
  if (buildCounterScheduleDeleteCertificateAuthorityRequest < 3) {
    unittest.expect(o.ignoreActiveCertificates!, unittest.isTrue);
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterScheduleDeleteCertificateAuthorityRequest--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  var o = api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
    o.updateMask = 'foo';
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

void checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy! as api.Policy);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetIamPolicyRequest--;
}

core.Map<core.String, core.Object> buildUnnamed7541() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7541(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted15 = (o['x']!) as core.Map;
  unittest.expect(casted15, unittest.hasLength(3));
  unittest.expect(
    casted15['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted15['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted15['string'],
    unittest.equals('foo'),
  );
  var casted16 = (o['y']!) as core.Map;
  unittest.expect(casted16, unittest.hasLength(3));
  unittest.expect(
    casted16['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted16['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted16['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object>> buildUnnamed7542() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed7541());
  o.add(buildUnnamed7541());
  return o;
}

void checkUnnamed7542(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed7541(o[0]);
  checkUnnamed7541(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed7542();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed7542(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterSubject = 0;
api.Subject buildSubject() {
  var o = api.Subject();
  buildCounterSubject++;
  if (buildCounterSubject < 3) {
    o.countryCode = 'foo';
    o.locality = 'foo';
    o.organization = 'foo';
    o.organizationalUnit = 'foo';
    o.postalCode = 'foo';
    o.province = 'foo';
    o.streetAddress = 'foo';
  }
  buildCounterSubject--;
  return o;
}

void checkSubject(api.Subject o) {
  buildCounterSubject++;
  if (buildCounterSubject < 3) {
    unittest.expect(
      o.countryCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locality!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.organization!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.organizationalUnit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postalCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.province!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.streetAddress!,
      unittest.equals('foo'),
    );
  }
  buildCounterSubject--;
}

core.List<api.X509Extension> buildUnnamed7543() {
  var o = <api.X509Extension>[];
  o.add(buildX509Extension());
  o.add(buildX509Extension());
  return o;
}

void checkUnnamed7543(core.List<api.X509Extension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkX509Extension(o[0] as api.X509Extension);
  checkX509Extension(o[1] as api.X509Extension);
}

core.List<core.String> buildUnnamed7544() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7544(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed7545() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7545(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed7546() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7546(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed7547() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7547(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterSubjectAltNames = 0;
api.SubjectAltNames buildSubjectAltNames() {
  var o = api.SubjectAltNames();
  buildCounterSubjectAltNames++;
  if (buildCounterSubjectAltNames < 3) {
    o.customSans = buildUnnamed7543();
    o.dnsNames = buildUnnamed7544();
    o.emailAddresses = buildUnnamed7545();
    o.ipAddresses = buildUnnamed7546();
    o.uris = buildUnnamed7547();
  }
  buildCounterSubjectAltNames--;
  return o;
}

void checkSubjectAltNames(api.SubjectAltNames o) {
  buildCounterSubjectAltNames++;
  if (buildCounterSubjectAltNames < 3) {
    checkUnnamed7543(o.customSans!);
    checkUnnamed7544(o.dnsNames!);
    checkUnnamed7545(o.emailAddresses!);
    checkUnnamed7546(o.ipAddresses!);
    checkUnnamed7547(o.uris!);
  }
  buildCounterSubjectAltNames--;
}

core.int buildCounterSubjectConfig = 0;
api.SubjectConfig buildSubjectConfig() {
  var o = api.SubjectConfig();
  buildCounterSubjectConfig++;
  if (buildCounterSubjectConfig < 3) {
    o.commonName = 'foo';
    o.subject = buildSubject();
    o.subjectAltName = buildSubjectAltNames();
  }
  buildCounterSubjectConfig--;
  return o;
}

void checkSubjectConfig(api.SubjectConfig o) {
  buildCounterSubjectConfig++;
  if (buildCounterSubjectConfig < 3) {
    unittest.expect(
      o.commonName!,
      unittest.equals('foo'),
    );
    checkSubject(o.subject! as api.Subject);
    checkSubjectAltNames(o.subjectAltName! as api.SubjectAltNames);
  }
  buildCounterSubjectConfig--;
}

core.int buildCounterSubjectDescription = 0;
api.SubjectDescription buildSubjectDescription() {
  var o = api.SubjectDescription();
  buildCounterSubjectDescription++;
  if (buildCounterSubjectDescription < 3) {
    o.commonName = 'foo';
    o.hexSerialNumber = 'foo';
    o.lifetime = 'foo';
    o.notAfterTime = 'foo';
    o.notBeforeTime = 'foo';
    o.subject = buildSubject();
    o.subjectAltName = buildSubjectAltNames();
  }
  buildCounterSubjectDescription--;
  return o;
}

void checkSubjectDescription(api.SubjectDescription o) {
  buildCounterSubjectDescription++;
  if (buildCounterSubjectDescription < 3) {
    unittest.expect(
      o.commonName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hexSerialNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lifetime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.notAfterTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.notBeforeTime!,
      unittest.equals('foo'),
    );
    checkSubject(o.subject! as api.Subject);
    checkSubjectAltNames(o.subjectAltName! as api.SubjectAltNames);
  }
  buildCounterSubjectDescription--;
}

core.int buildCounterSubordinateConfig = 0;
api.SubordinateConfig buildSubordinateConfig() {
  var o = api.SubordinateConfig();
  buildCounterSubordinateConfig++;
  if (buildCounterSubordinateConfig < 3) {
    o.certificateAuthority = 'foo';
    o.pemIssuerChain = buildSubordinateConfigChain();
  }
  buildCounterSubordinateConfig--;
  return o;
}

void checkSubordinateConfig(api.SubordinateConfig o) {
  buildCounterSubordinateConfig++;
  if (buildCounterSubordinateConfig < 3) {
    unittest.expect(
      o.certificateAuthority!,
      unittest.equals('foo'),
    );
    checkSubordinateConfigChain(
        o.pemIssuerChain! as api.SubordinateConfigChain);
  }
  buildCounterSubordinateConfig--;
}

core.List<core.String> buildUnnamed7548() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7548(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterSubordinateConfigChain = 0;
api.SubordinateConfigChain buildSubordinateConfigChain() {
  var o = api.SubordinateConfigChain();
  buildCounterSubordinateConfigChain++;
  if (buildCounterSubordinateConfigChain < 3) {
    o.pemCertificates = buildUnnamed7548();
  }
  buildCounterSubordinateConfigChain--;
  return o;
}

void checkSubordinateConfigChain(api.SubordinateConfigChain o) {
  buildCounterSubordinateConfigChain++;
  if (buildCounterSubordinateConfigChain < 3) {
    checkUnnamed7548(o.pemCertificates!);
  }
  buildCounterSubordinateConfigChain--;
}

core.List<core.String> buildUnnamed7549() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7549(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  var o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed7549();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed7549(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed7550() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7550(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  var o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed7550();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed7550(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterX509Extension = 0;
api.X509Extension buildX509Extension() {
  var o = api.X509Extension();
  buildCounterX509Extension++;
  if (buildCounterX509Extension < 3) {
    o.critical = true;
    o.objectId = buildObjectId();
    o.value = 'foo';
  }
  buildCounterX509Extension--;
  return o;
}

void checkX509Extension(api.X509Extension o) {
  buildCounterX509Extension++;
  if (buildCounterX509Extension < 3) {
    unittest.expect(o.critical!, unittest.isTrue);
    checkObjectId(o.objectId! as api.ObjectId);
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterX509Extension--;
}

void main() {
  unittest.group('obj-schema-AccessUrls', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAccessUrls();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.AccessUrls.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAccessUrls(od as api.AccessUrls);
    });
  });

  unittest.group('obj-schema-ActivateCertificateAuthorityRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildActivateCertificateAuthorityRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ActivateCertificateAuthorityRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActivateCertificateAuthorityRequest(
          od as api.ActivateCertificateAuthorityRequest);
    });
  });

  unittest.group('obj-schema-AllowedConfigList', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAllowedConfigList();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AllowedConfigList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAllowedConfigList(od as api.AllowedConfigList);
    });
  });

  unittest.group('obj-schema-AllowedSubjectAltNames', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAllowedSubjectAltNames();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AllowedSubjectAltNames.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAllowedSubjectAltNames(od as api.AllowedSubjectAltNames);
    });
  });

  unittest.group('obj-schema-AuditConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAuditConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AuditConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuditConfig(od as api.AuditConfig);
    });
  });

  unittest.group('obj-schema-AuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAuditLogConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AuditLogConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuditLogConfig(od as api.AuditLogConfig);
    });
  });

  unittest.group('obj-schema-BillingView', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBillingView();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BillingView.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBillingView(od as api.BillingView);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBinding();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Binding.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBinding(od as api.Binding);
    });
  });

  unittest.group('obj-schema-CaOptions', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCaOptions();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.CaOptions.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCaOptions(od as api.CaOptions);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCancelOperationRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelOperationRequest(od as api.CancelOperationRequest);
    });
  });

  unittest.group('obj-schema-Certificate', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCertificate();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Certificate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCertificate(od as api.Certificate);
    });
  });

  unittest.group('obj-schema-CertificateAuthority', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCertificateAuthority();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CertificateAuthority.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCertificateAuthority(od as api.CertificateAuthority);
    });
  });

  unittest.group('obj-schema-CertificateAuthorityPolicy', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCertificateAuthorityPolicy();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CertificateAuthorityPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCertificateAuthorityPolicy(od as api.CertificateAuthorityPolicy);
    });
  });

  unittest.group('obj-schema-CertificateConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCertificateConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CertificateConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCertificateConfig(od as api.CertificateConfig);
    });
  });

  unittest.group('obj-schema-CertificateDescription', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCertificateDescription();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CertificateDescription.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCertificateDescription(od as api.CertificateDescription);
    });
  });

  unittest.group('obj-schema-CertificateFingerprint', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCertificateFingerprint();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CertificateFingerprint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCertificateFingerprint(od as api.CertificateFingerprint);
    });
  });

  unittest.group('obj-schema-CertificateRevocationList', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCertificateRevocationList();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CertificateRevocationList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCertificateRevocationList(od as api.CertificateRevocationList);
    });
  });

  unittest.group('obj-schema-DisableCertificateAuthorityRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDisableCertificateAuthorityRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.DisableCertificateAuthorityRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDisableCertificateAuthorityRequest(
          od as api.DisableCertificateAuthorityRequest);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      var o = buildEmpty();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-EnableCertificateAuthorityRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildEnableCertificateAuthorityRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.EnableCertificateAuthorityRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnableCertificateAuthorityRequest(
          od as api.EnableCertificateAuthorityRequest);
    });
  });

  unittest.group('obj-schema-Exemplar', () {
    unittest.test('to-json--from-json', () async {
      var o = buildExemplar();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Exemplar.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExemplar(od as api.Exemplar);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () async {
      var o = buildExpr();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Expr.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExpr(od as api.Expr);
    });
  });

  unittest.group('obj-schema-ExtendedKeyUsageOptions', () {
    unittest.test('to-json--from-json', () async {
      var o = buildExtendedKeyUsageOptions();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ExtendedKeyUsageOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExtendedKeyUsageOptions(od as api.ExtendedKeyUsageOptions);
    });
  });

  unittest.group('obj-schema-FetchCertificateAuthorityCsrResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildFetchCertificateAuthorityCsrResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.FetchCertificateAuthorityCsrResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFetchCertificateAuthorityCsrResponse(
          od as api.FetchCertificateAuthorityCsrResponse);
    });
  });

  unittest.group('obj-schema-GoogleApiServicecontrolV1AttributeValue', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleApiServicecontrolV1AttributeValue();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleApiServicecontrolV1AttributeValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleApiServicecontrolV1AttributeValue(
          od as api.GoogleApiServicecontrolV1AttributeValue);
    });
  });

  unittest.group('obj-schema-GoogleApiServicecontrolV1Attributes', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleApiServicecontrolV1Attributes();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleApiServicecontrolV1Attributes.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleApiServicecontrolV1Attributes(
          od as api.GoogleApiServicecontrolV1Attributes);
    });
  });

  unittest.group('obj-schema-GoogleApiServicecontrolV1Distribution', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleApiServicecontrolV1Distribution();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleApiServicecontrolV1Distribution.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleApiServicecontrolV1Distribution(
          od as api.GoogleApiServicecontrolV1Distribution);
    });
  });

  unittest.group('obj-schema-GoogleApiServicecontrolV1ExplicitBuckets', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleApiServicecontrolV1ExplicitBuckets();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleApiServicecontrolV1ExplicitBuckets.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleApiServicecontrolV1ExplicitBuckets(
          od as api.GoogleApiServicecontrolV1ExplicitBuckets);
    });
  });

  unittest.group('obj-schema-GoogleApiServicecontrolV1ExponentialBuckets', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleApiServicecontrolV1ExponentialBuckets();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleApiServicecontrolV1ExponentialBuckets.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleApiServicecontrolV1ExponentialBuckets(
          od as api.GoogleApiServicecontrolV1ExponentialBuckets);
    });
  });

  unittest.group('obj-schema-GoogleApiServicecontrolV1HttpRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleApiServicecontrolV1HttpRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleApiServicecontrolV1HttpRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleApiServicecontrolV1HttpRequest(
          od as api.GoogleApiServicecontrolV1HttpRequest);
    });
  });

  unittest.group('obj-schema-GoogleApiServicecontrolV1LinearBuckets', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleApiServicecontrolV1LinearBuckets();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleApiServicecontrolV1LinearBuckets.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleApiServicecontrolV1LinearBuckets(
          od as api.GoogleApiServicecontrolV1LinearBuckets);
    });
  });

  unittest.group('obj-schema-GoogleApiServicecontrolV1LogEntry', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleApiServicecontrolV1LogEntry();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleApiServicecontrolV1LogEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleApiServicecontrolV1LogEntry(
          od as api.GoogleApiServicecontrolV1LogEntry);
    });
  });

  unittest.group('obj-schema-GoogleApiServicecontrolV1LogEntryOperation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleApiServicecontrolV1LogEntryOperation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleApiServicecontrolV1LogEntryOperation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleApiServicecontrolV1LogEntryOperation(
          od as api.GoogleApiServicecontrolV1LogEntryOperation);
    });
  });

  unittest.group('obj-schema-GoogleApiServicecontrolV1LogEntrySourceLocation',
      () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleApiServicecontrolV1LogEntrySourceLocation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleApiServicecontrolV1LogEntrySourceLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleApiServicecontrolV1LogEntrySourceLocation(
          od as api.GoogleApiServicecontrolV1LogEntrySourceLocation);
    });
  });

  unittest.group('obj-schema-GoogleApiServicecontrolV1MetricValue', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleApiServicecontrolV1MetricValue();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleApiServicecontrolV1MetricValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleApiServicecontrolV1MetricValue(
          od as api.GoogleApiServicecontrolV1MetricValue);
    });
  });

  unittest.group('obj-schema-GoogleApiServicecontrolV1MetricValueSet', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleApiServicecontrolV1MetricValueSet();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleApiServicecontrolV1MetricValueSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleApiServicecontrolV1MetricValueSet(
          od as api.GoogleApiServicecontrolV1MetricValueSet);
    });
  });

  unittest.group('obj-schema-GoogleApiServicecontrolV1Operation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleApiServicecontrolV1Operation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleApiServicecontrolV1Operation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleApiServicecontrolV1Operation(
          od as api.GoogleApiServicecontrolV1Operation);
    });
  });

  unittest.group('obj-schema-GoogleApiServicecontrolV1QuotaProperties', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleApiServicecontrolV1QuotaProperties();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleApiServicecontrolV1QuotaProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleApiServicecontrolV1QuotaProperties(
          od as api.GoogleApiServicecontrolV1QuotaProperties);
    });
  });

  unittest.group('obj-schema-GoogleApiServicecontrolV1ReportRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleApiServicecontrolV1ReportRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleApiServicecontrolV1ReportRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleApiServicecontrolV1ReportRequest(
          od as api.GoogleApiServicecontrolV1ReportRequest);
    });
  });

  unittest.group('obj-schema-GoogleApiServicecontrolV1ResourceInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleApiServicecontrolV1ResourceInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleApiServicecontrolV1ResourceInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleApiServicecontrolV1ResourceInfo(
          od as api.GoogleApiServicecontrolV1ResourceInfo);
    });
  });

  unittest.group('obj-schema-GoogleApiServicecontrolV1TraceSpan', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleApiServicecontrolV1TraceSpan();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleApiServicecontrolV1TraceSpan.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleApiServicecontrolV1TraceSpan(
          od as api.GoogleApiServicecontrolV1TraceSpan);
    });
  });

  unittest.group('obj-schema-GoogleApiServicecontrolV1TruncatableString', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleApiServicecontrolV1TruncatableString();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleApiServicecontrolV1TruncatableString.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleApiServicecontrolV1TruncatableString(
          od as api.GoogleApiServicecontrolV1TruncatableString);
    });
  });

  unittest.group('obj-schema-IssuanceModes', () {
    unittest.test('to-json--from-json', () async {
      var o = buildIssuanceModes();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.IssuanceModes.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIssuanceModes(od as api.IssuanceModes);
    });
  });

  unittest.group('obj-schema-IssuingOptions', () {
    unittest.test('to-json--from-json', () async {
      var o = buildIssuingOptions();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.IssuingOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIssuingOptions(od as api.IssuingOptions);
    });
  });

  unittest.group('obj-schema-KeyId', () {
    unittest.test('to-json--from-json', () async {
      var o = buildKeyId();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.KeyId.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkKeyId(od as api.KeyId);
    });
  });

  unittest.group('obj-schema-KeyUsage', () {
    unittest.test('to-json--from-json', () async {
      var o = buildKeyUsage();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.KeyUsage.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkKeyUsage(od as api.KeyUsage);
    });
  });

  unittest.group('obj-schema-KeyUsageOptions', () {
    unittest.test('to-json--from-json', () async {
      var o = buildKeyUsageOptions();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.KeyUsageOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkKeyUsageOptions(od as api.KeyUsageOptions);
    });
  });

  unittest.group('obj-schema-KeyVersionSpec', () {
    unittest.test('to-json--from-json', () async {
      var o = buildKeyVersionSpec();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.KeyVersionSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkKeyVersionSpec(od as api.KeyVersionSpec);
    });
  });

  unittest.group('obj-schema-ListCertificateAuthoritiesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListCertificateAuthoritiesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListCertificateAuthoritiesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCertificateAuthoritiesResponse(
          od as api.ListCertificateAuthoritiesResponse);
    });
  });

  unittest.group('obj-schema-ListCertificateRevocationListsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListCertificateRevocationListsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListCertificateRevocationListsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCertificateRevocationListsResponse(
          od as api.ListCertificateRevocationListsResponse);
    });
  });

  unittest.group('obj-schema-ListCertificatesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListCertificatesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListCertificatesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCertificatesResponse(od as api.ListCertificatesResponse);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListLocationsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListLocationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListLocationsResponse(od as api.ListLocationsResponse);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListOperationsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOperationsResponse(od as api.ListOperationsResponse);
    });
  });

  unittest.group('obj-schema-ListReusableConfigsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListReusableConfigsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListReusableConfigsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListReusableConfigsResponse(od as api.ListReusableConfigsResponse);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      var o = buildLocation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Location.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLocation(od as api.Location);
    });
  });

  unittest.group('obj-schema-Money', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMoney();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Money.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMoney(od as api.Money);
    });
  });

  unittest.group('obj-schema-ObjectId', () {
    unittest.test('to-json--from-json', () async {
      var o = buildObjectId();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.ObjectId.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkObjectId(od as api.ObjectId);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOperation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Operation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOperation(od as api.Operation);
    });
  });

  unittest.group('obj-schema-OperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOperationMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.OperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOperationMetadata(od as api.OperationMetadata);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPolicy();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Policy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPolicy(od as api.Policy);
    });
  });

  unittest.group('obj-schema-PublicKey', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPublicKey();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.PublicKey.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPublicKey(od as api.PublicKey);
    });
  });

  unittest.group('obj-schema-RestoreCertificateAuthorityRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRestoreCertificateAuthorityRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.RestoreCertificateAuthorityRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRestoreCertificateAuthorityRequest(
          od as api.RestoreCertificateAuthorityRequest);
    });
  });

  unittest.group('obj-schema-ReusableConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildReusableConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ReusableConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReusableConfig(od as api.ReusableConfig);
    });
  });

  unittest.group('obj-schema-ReusableConfigValues', () {
    unittest.test('to-json--from-json', () async {
      var o = buildReusableConfigValues();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ReusableConfigValues.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReusableConfigValues(od as api.ReusableConfigValues);
    });
  });

  unittest.group('obj-schema-ReusableConfigWrapper', () {
    unittest.test('to-json--from-json', () async {
      var o = buildReusableConfigWrapper();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ReusableConfigWrapper.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReusableConfigWrapper(od as api.ReusableConfigWrapper);
    });
  });

  unittest.group('obj-schema-RevocationDetails', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRevocationDetails();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.RevocationDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRevocationDetails(od as api.RevocationDetails);
    });
  });

  unittest.group('obj-schema-RevokeCertificateRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRevokeCertificateRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.RevokeCertificateRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRevokeCertificateRequest(od as api.RevokeCertificateRequest);
    });
  });

  unittest.group('obj-schema-RevokedCertificate', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRevokedCertificate();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.RevokedCertificate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRevokedCertificate(od as api.RevokedCertificate);
    });
  });

  unittest.group('obj-schema-ScheduleDeleteCertificateAuthorityRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildScheduleDeleteCertificateAuthorityRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ScheduleDeleteCertificateAuthorityRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkScheduleDeleteCertificateAuthorityRequest(
          od as api.ScheduleDeleteCertificateAuthorityRequest);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSetIamPolicyRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SetIamPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetIamPolicyRequest(od as api.SetIamPolicyRequest);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      var o = buildStatus();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od as api.Status);
    });
  });

  unittest.group('obj-schema-Subject', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSubject();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Subject.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSubject(od as api.Subject);
    });
  });

  unittest.group('obj-schema-SubjectAltNames', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSubjectAltNames();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SubjectAltNames.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubjectAltNames(od as api.SubjectAltNames);
    });
  });

  unittest.group('obj-schema-SubjectConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSubjectConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SubjectConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubjectConfig(od as api.SubjectConfig);
    });
  });

  unittest.group('obj-schema-SubjectDescription', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSubjectDescription();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SubjectDescription.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubjectDescription(od as api.SubjectDescription);
    });
  });

  unittest.group('obj-schema-SubordinateConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSubordinateConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SubordinateConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubordinateConfig(od as api.SubordinateConfig);
    });
  });

  unittest.group('obj-schema-SubordinateConfigChain', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSubordinateConfigChain();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SubordinateConfigChain.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubordinateConfigChain(od as api.SubordinateConfigChain);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTestIamPermissionsRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.TestIamPermissionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestIamPermissionsRequest(od as api.TestIamPermissionsRequest);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTestIamPermissionsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.TestIamPermissionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestIamPermissionsResponse(od as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('obj-schema-X509Extension', () {
    unittest.test('to-json--from-json', () async {
      var o = buildX509Extension();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.X509Extension.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkX509Extension(od as api.X509Extension);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock).projects.locations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock).projects.locations;
      var arg_name = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListLocationsResponse(response as api.ListLocationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsCertificateAuthoritiesResource',
      () {
    unittest.test('method--activate', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities;
      var arg_request = buildActivateCertificateAuthorityRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ActivateCertificateAuthorityRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkActivateCertificateAuthorityRequest(
            obj as api.ActivateCertificateAuthorityRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.activate(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities;
      var arg_request = buildCertificateAuthority();
      var arg_parent = 'foo';
      var arg_certificateAuthorityId = 'foo';
      var arg_requestId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CertificateAuthority.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCertificateAuthority(obj as api.CertificateAuthority);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["certificateAuthorityId"]!.first,
          unittest.equals(arg_certificateAuthorityId),
        );
        unittest.expect(
          queryMap["requestId"]!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          certificateAuthorityId: arg_certificateAuthorityId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--disable', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities;
      var arg_request = buildDisableCertificateAuthorityRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DisableCertificateAuthorityRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDisableCertificateAuthorityRequest(
            obj as api.DisableCertificateAuthorityRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.disable(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--enable', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities;
      var arg_request = buildEnableCertificateAuthorityRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.EnableCertificateAuthorityRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnableCertificateAuthorityRequest(
            obj as api.EnableCertificateAuthorityRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.enable(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--fetch', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildFetchCertificateAuthorityCsrResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.fetch(arg_name, $fields: arg_$fields);
      checkFetchCertificateAuthorityCsrResponse(
          response as api.FetchCertificateAuthorityCsrResponse);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCertificateAuthority());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCertificateAuthority(response as api.CertificateAuthority);
    });

    unittest.test('method--getIamPolicy', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities;
      var arg_resource = 'foo';
      var arg_options_requestedPolicyVersion = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap["options.requestedPolicyVersion"]!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap["orderBy"]!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildListCertificateAuthoritiesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListCertificateAuthoritiesResponse(
          response as api.ListCertificateAuthoritiesResponse);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities;
      var arg_request = buildCertificateAuthority();
      var arg_name = 'foo';
      var arg_requestId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CertificateAuthority.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCertificateAuthority(obj as api.CertificateAuthority);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["requestId"]!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--restore', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities;
      var arg_request = buildRestoreCertificateAuthorityRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RestoreCertificateAuthorityRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRestoreCertificateAuthorityRequest(
            obj as api.RestoreCertificateAuthorityRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.restore(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--scheduleDelete', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities;
      var arg_request = buildScheduleDeleteCertificateAuthorityRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ScheduleDeleteCertificateAuthorityRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkScheduleDeleteCertificateAuthorityRequest(
            obj as api.ScheduleDeleteCertificateAuthorityRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.scheduleDelete(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj as api.SetIamPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj as api.TestIamPermissionsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsCertificateAuthoritiesCertificateRevocationListsResource',
      () {
    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities
          .certificateRevocationLists;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCertificateRevocationList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCertificateRevocationList(response as api.CertificateRevocationList);
    });

    unittest.test('method--getIamPolicy', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities
          .certificateRevocationLists;
      var arg_resource = 'foo';
      var arg_options_requestedPolicyVersion = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap["options.requestedPolicyVersion"]!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities
          .certificateRevocationLists;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap["orderBy"]!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildListCertificateRevocationListsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListCertificateRevocationListsResponse(
          response as api.ListCertificateRevocationListsResponse);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities
          .certificateRevocationLists;
      var arg_request = buildCertificateRevocationList();
      var arg_name = 'foo';
      var arg_requestId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CertificateRevocationList.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCertificateRevocationList(obj as api.CertificateRevocationList);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["requestId"]!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities
          .certificateRevocationLists;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj as api.SetIamPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities
          .certificateRevocationLists;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj as api.TestIamPermissionsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsCertificateAuthoritiesCertificatesResource',
      () {
    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities
          .certificates;
      var arg_request = buildCertificate();
      var arg_parent = 'foo';
      var arg_certificateId = 'foo';
      var arg_requestId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Certificate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCertificate(obj as api.Certificate);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["certificateId"]!.first,
          unittest.equals(arg_certificateId),
        );
        unittest.expect(
          queryMap["requestId"]!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCertificate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          certificateId: arg_certificateId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkCertificate(response as api.Certificate);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities
          .certificates;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCertificate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCertificate(response as api.Certificate);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities
          .certificates;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap["orderBy"]!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListCertificatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListCertificatesResponse(response as api.ListCertificatesResponse);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities
          .certificates;
      var arg_request = buildCertificate();
      var arg_name = 'foo';
      var arg_requestId = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Certificate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCertificate(obj as api.Certificate);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["requestId"]!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCertificate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkCertificate(response as api.Certificate);
    });

    unittest.test('method--revoke', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .certificateAuthorities
          .certificates;
      var arg_request = buildRevokeCertificateRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RevokeCertificateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRevokeCertificateRequest(obj as api.RevokeCertificateRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCertificate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.revoke(arg_request, arg_name, $fields: arg_$fields);
      checkCertificate(response as api.Certificate);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .operations;
      var arg_request = buildCancelOperationRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelOperationRequest(obj as api.CancelOperationRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .operations;
      var arg_name = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsReusableConfigsResource', () {
    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .reusableConfigs;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildReusableConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkReusableConfig(response as api.ReusableConfig);
    });

    unittest.test('method--getIamPolicy', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .reusableConfigs;
      var arg_resource = 'foo';
      var arg_options_requestedPolicyVersion = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap["options.requestedPolicyVersion"]!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .reusableConfigs;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap["orderBy"]!.first,
          unittest.equals(arg_orderBy),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListReusableConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListReusableConfigsResponse(
          response as api.ListReusableConfigsResponse);
    });

    unittest.test('method--setIamPolicy', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .reusableConfigs;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj as api.SetIamPolicyRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      var mock = HttpServerMock();
      var res = api.CertificateAuthorityServiceApi(mock)
          .projects
          .locations
          .reusableConfigs;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj as api.TestIamPermissionsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });
}
