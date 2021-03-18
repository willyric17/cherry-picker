import 'package:flutter_app/cherrypick/CherryPickPresenter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("getHashes should returns hashes only as String", () {
    var presenter = CherryPickPresenter();

    expect("12312312", presenter.getHashes("12312312 this is commit message"));
    expect("12312312", presenter.getHashes("12312312 this is commit message\n\n\n"));
    expect("32132132 12312312", presenter.getHashes("12312312 this is commit message\n32132132 this is also commit message"));
    expect("32132132 12312312", presenter.getHashes("12312312 this is commit message\n\n\n32132132 this is also commit message"));
  });
}