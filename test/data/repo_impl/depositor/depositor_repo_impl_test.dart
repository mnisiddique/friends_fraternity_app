import 'package:flutter_test/flutter_test.dart';
import 'package:friends_fraternity_app/core/error/exception.dart';
import 'package:friends_fraternity_app/core/network/network_info.dart';
import 'package:friends_fraternity_app/core/params/export_param.dart';
import 'package:friends_fraternity_app/data/data_source/export_datasrc.dart';
import 'package:friends_fraternity_app/data/model/model.dart';
import 'package:friends_fraternity_app/data/repo_impl/export_repo_impl.dart';
import 'package:friends_fraternity_app/domain/repository/export_repo.dart';
import 'package:mockito/mockito.dart';

import '../../../fixture/fixture_reader.dart';

class MockDepositorHistoryRemote extends Mock implements DepositHistoryRemote {}

class MockNetoworkInfo extends Mock implements NetworkInfo {}

void main() {
  late MockDepositorHistoryRemote _mockDepositHistoryRemote;
  late MockNetoworkInfo _mockNetoworkInfo;
  late DepositHistoryRepo _depositorHistoryRepo;

  setUp(() {
    _mockDepositHistoryRemote = MockDepositorHistoryRemote();
    _mockNetoworkInfo = MockNetoworkInfo();
    _depositorHistoryRepo = DepositHistoryRepoImpl(
      depositHistoryRemote: _mockDepositHistoryRemote,
      networkInfo: _mockNetoworkInfo,
    );
  });

  group(_groupOffline, () {
    test("${testCaseNo(1, _testee)} should throw no internet exception",
        () async {
      //arrange
      when(_mockNetoworkInfo.throwIfNoInternet())
          .thenThrow(NoInternetException());

      //act and assert
      expect(() => _depositorHistoryRepo.getPersonDepositHistory(NoParams()),
          throwsA(TypeMatcher<NoInternetException>()));
    });
    test(
        "${testCaseNo(2, _testee)} should not attempt getting person deposit history",
        () async {
      //arrange
      when(_mockNetoworkInfo.throwIfNoInternet())
          .thenThrow(NoInternetException());

      //act
      try {
        await _depositorHistoryRepo.getPersonDepositHistory(NoParams());
      } catch (ex) {}

      //assert
      verifyZeroInteractions(_mockDepositHistoryRemote);
    });
  });

  group("$_groupOnline", () {
    late EachMonthDepositListModel tEmdList;
    late NoParams noParam;
    setUp(() {
      tEmdList = EachMonthDepositListModel.fromJson(
          fixture("each_month_deposit_list.json"));
      noParam = NoParams();
    });
    test(
        "${testCaseNo(3, _testee)} should return a list of EachMonthDepositListModel when call to remote is successfull",
        () async {
      //arrange

      when(_mockNetoworkInfo.throwIfNoInternet())
          .thenAnswer((_) async => Future.value());

      when(_mockDepositHistoryRemote(noParam))
          .thenAnswer((_) async => tEmdList);
      //act
      final result =
          await _depositorHistoryRepo.getPersonDepositHistory(noParam);

      //assert

      verifyInOrder([
        _mockNetoworkInfo.throwIfNoInternet(),
        _mockDepositHistoryRemote(noParam),
      ]);
      expect(result, tEmdList);
    });
    test(
        "${testCaseNo(4, _testee)} should return ServerException when call to remote is failed",
        () async {
      //arrange
      when(_mockDepositHistoryRemote(noParam)).thenThrow(ServerException());
      //act
      Exception? exception;
      try {
        await _depositorHistoryRepo.getPersonDepositHistory(noParam);
      } on Exception catch (e) {
        exception = e;
      }
      //assert
      expect(exception, isA<ServerException>());
    });

    //End of group
  });
}

final String _groupOnline = "While Online ";
final String _groupOffline = "While Offline ";
final String _testee = "DepositHistoryRepo";
