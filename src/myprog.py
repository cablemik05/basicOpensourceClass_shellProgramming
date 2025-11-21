import sys

print("--- Python 프로그램 시작 ---")

# sys.argv[1:] 은 입력된 인자들의 리스트입니다.
for arg in sys.argv[1:]:
    print("받은 인자:", arg)

print("--- Python 프로그램 종료 ---")
