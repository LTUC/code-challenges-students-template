import pytest
from code_challenge.sample_challenge import sum


def test_one():
    actual = sum(1,1)
    expected = 2
    assert actual == expected