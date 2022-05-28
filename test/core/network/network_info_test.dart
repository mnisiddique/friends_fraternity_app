import 'package:flutter_test/flutter_test.dart';
import 'package:friends_fraternity_app/core/error/exception.dart';
import 'package:friends_fraternity_app/core/network/network_info.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mockito/mockito.dart';

import '../../fixture/fixture_reader.dart';

class MockInternetConnectionChecker extends Mock
    implements InternetConnectionChecker {}

void main() {
  late NetworkInfo _networkInfo;
  late MockInternetConnectionChecker _mockInternetConnectionChecker;

  setUp(() {
    _mockInternetConnectionChecker = MockInternetConnectionChecker();
    _networkInfo = NetworkInfoImpl(_mockInternetConnectionChecker);
  });

  group(_groupNetworkInfoTest, () {
    test(
      "${testCaseNo(1, _testee)} should forward the call to InternetConnectionChecker.hasConnection",
      () async {
        //arrange
        final tHasConnection = Future.value(true);
        when(_mockInternetConnectionChecker.hasConnection)
            .thenAnswer((realInvocation) => tHasConnection);

        //act
        try {
          await _networkInfo.throwIfNoInternet();
        } on Exception {}

        //assert
        verify(_mockInternetConnectionChecker.hasConnection);
      },
    );
    test(
      "${testCaseNo(2, _testee)} should throw no internet exception if InternetConnectionChecker.hasConnection returns false",
      () async {
        //arrange
        final tHasConnection = Future.value(false);
        when(_mockInternetConnectionChecker.hasConnection)
            .thenAnswer((realInvocation) => tHasConnection);

        //act
        //assert
        expect(() => _networkInfo.throwIfNoInternet(),
            throwsA(TypeMatcher<NoInternetException>()));
      },
    );
    test(
      "${testCaseNo(3, _testee)} should not throw no internet exception if InternetConnectionChecker.hasConnection returns true",
      () async {
        final tHasConnection = Future.value(true);
        when(_mockInternetConnectionChecker.hasConnection)
            .thenAnswer((realInvocation) => tHasConnection);

        //act
        //assert
        expect(() => _networkInfo.throwIfNoInternet(), returnsNormally);
      },
    );
  });
}

final String _groupNetworkInfoTest = "Network Info: ";
final String _testee = "throwIfNoInternet method";
