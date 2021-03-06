Auto-generated Dart libraries for accessing [Google APIs][libs].

## Usage

First, obtain OAuth 2.0 access credentials. This can be done using the
`googleapis_auth` package. Your application can access APIs on behalf of a
user or using a service account.

After obtaining credentials, an API from the `googleapis` package can be
accessed with an authenticated HTTP client.

## Example

The following command line application lists files in Google Drive by using a
service account.

Create a `pubspec.yaml` file with the `googleapis_auth` and `googleapis`
dependencies.

```yaml
...
dependencies:
  googleapis: any
  googleapis_auth: any
```

Create a service account in the Google Cloud Console and save the credential
information.

Then create a Dart application to list files in a specific project. *In the
example below, files from the `dart-on-cloud` project are listed.*

```dart
// bin/list_files.dart

import 'package:googleapis/storage/v1.dart';
import 'package:googleapis_auth/auth_io.dart';

final _credentials = ServiceAccountCredentials.fromJson(r'''
{
  "private_key_id": ...,
  "private_key": ...,
  "client_email": ...,
  "client_id": ...,
  "type": "service_account"
}
''');

const _scopes = [StorageApi.devstorageReadOnlyScope];

Future<void> main() async {
  final httpClient = await clientViaServiceAccount(_credentials, _scopes);
  try {
    final storage = StorageApi(httpClient);

    final buckets = await storage.buckets.list('dart-on-cloud');
    print('Received ${buckets.items.length} bucket names:');
    for (var file in buckets.items) {
      print(file.name);
    }
  } finally {
    httpClient.close();
  }
}
```

[libs]: https://developers.google.com/discovery/libraries/
