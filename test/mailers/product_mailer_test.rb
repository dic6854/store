require "test_helper"

class ProductMailerTest < ActionMailer::TestCase
  test "in_stock" do
    mail = ProductMailer.with(product: products(:tshirt), subscriber: subscribers(:dic104)).in_stock
    assert_equal "In stock", mail.subject
    assert_equal [ "dic104@naver.com" ], mail.to
    assert_equal [ "jns202609@gmail.com" ], mail.from
    assert_match "Good news!", mail.body.encoded
  end
end
