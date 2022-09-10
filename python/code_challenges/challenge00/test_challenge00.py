# write your test here

from challenge00 import sum


def test_one():
    actual = sum(1, 1)
    expected = 2
    assert actual == expected
