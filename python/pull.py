# Don't Edit
import subprocess
import sys


var = sys.argv[1]


def main():
    subprocess.run(['echo', "*********************************"])
    subprocess.run(
        ['echo', f"*** Pulling Code Challenge {var} ***"])
    subprocess.run(['echo', "*********************************"])
    subprocess.check_call(['mkdir', f"code_challenges/challenge{var}"])
    subprocess.check_call(
        ['touch', f"code_challenges/challenge{var}/challenge{var}.py"])
    subprocess.check_call(
        ['touch', f"code_challenges/challenge{var}/test_challenge{var}.py"])
    subprocess.Popen(
        ["curl", "-s", f"https://ltuc.github.io/code-challenges-content/python/day{var}/challenge{var}.py", "-o", f"./code_challenges/challenge{var}/challenge{var}.py"], stdout=subprocess.PIPE, shell=False)
    subprocess.Popen(
        ["curl", "-s", f"https://ltuc.github.io/code-challenges-content/python/day{var}/test_challenge{var}.py", "-o", f"./code_challenges/challenge{var}/test_challenge{var}.py"], stdout=subprocess.PIPE, shell=False)


if __name__ == "__main__":
    main()
