---
title: '#90-Days-of-DevOps-as-a-Learning - Linux Commands for DevOps (Actually everyone) - Day 15'
published: false
description: 90-Days-of-DevOps-as-a-Learning - Linux Commands for DevOps (Actually everyone)
tags: 'devops, 90-Days-of-DevOps-as-a-Learning, learning'
cover_image: null
canonical_url: null
id: 1048834
---

## 데브옵스(실제로는 모든 사용자)를 위한 Linux 명령

[어제](day14.md) 터미널에서 몇 가지 명령을 사용하여 작업을 수행하는 데 많은 시간을 할애하게 될 것이라고 언급했습니다.

또한 vagrant 프로비저닝된 VM을 사용하면 `vagrant ssh`를 사용하여 box에 액세스할 수 있다고도 언급했습니다. 프로비저닝한 디렉토리와 동일한 디렉토리에 있어야 합니다.

SSH의 경우 username과 password는 필요하지 않으며, 가상 box 콘솔에 로그인하려는 경우에만 필요합니다.

아래는 우리가 원하는 위치입니다:

![](/2022/Days/Images/Day15_Linux1.png)

## 명령어들

여기서 다루지 않은 명령어도 있습니다. 이러한 명령어를 다루는 문서 페이지가 있지만, 특정 명령에 대한 옵션을 이해해야 할 때는 `man` 페이지를 사용할 수 있습니다. `man` 페이지를 사용하면 이 글에서 다루는 각 명령어에 대한 더 많은 옵션을 찾을 수 있습니다. `man man`을 실행하면 `man` 페이지에 대한 도움말을 볼 수 있습니다. `Q`를 눌러 매뉴얼 페이지를 종료할 수 있습니다.

![](/2022/Days/Images/Day15_Linux2.png)
![](/2022/Days/Images/Day15_Linux3.png)

Windows에서 `관리자 권한으로 실행`을 마우스 오른쪽 버튼으로 클릭으로 하는 것에 익숙하다면, `sudo` 명령어를 비슷하게 생각할 수 있습니다. 이 명령어를 사용하면 명령을 `root` 권한으로 실행하며, 명령 실행 전에 암호를 입력해야 하는 메시지가 표시됩니다.

![](/2022/Days/Images/Day15_Linux4.png)

일회성 작업이 아니라 여러 작업을 수행하며 일시적으로 `sudo` 권한을 유지하려면 어떻게 해야 할까요? `sudo su`를 사용하면 `sudo`와 동일한 권한을 가질 수 있습니다. 그러나 이 방법은 보안상 위험할 수 있습니다. `root` 권한을 오랜 시간 동안 유지하는 것은 위험하기 때문입니다. 테스트 VM에서는 문제가 되지 않을 수 있지만 실제 서버에서는 위험할 수 있습니다. 따라서 작업을 마치면 `exit`를 입력하여 `root` 권한을 해제해야 합니다.

![](/2022/Days/Images/Day15_Linux5.png)

저는 항상 `clear` 명령어를 사용합니다. 이 명령어는 이전 명령의 출력 화면을 모두 지우고 깔끔한 작업 공간을 제공하기 때문에 프롬프트를 맨 위에 위치시키는 것과 같은 효과를 가집니다. 윈도우 운영체제에서는 이 명령어를 `cls`로 사용할 수 있습니다.

![](/2022/Days/Images/Day15_Linux6.png)

이제 시스템 내에서 무언가를 생성한 후에 터미널에서 시각화할 수 있는 몇 가지 명령어를 살펴보겠습니다. 먼저 `mkdir` 명령어를 사용하여 시스템에 폴더를 생성할 수 있습니다. 예를 들어, 홈 디렉토리에 Day15라는 폴더를 생성하려면 `mkdir Day15` 명령어를 사용하면 됩니다.

![](/2022/Days/Images/Day15_Linux7.png)

`cd`를 사용하면 디렉토리를 변경할 수 있으므로, 새로운 디렉토리로 이동하려면 `cd D`에서 탭을 사용하여 `cd Day15` 같이 가능한 디렉토리를 자동 완성할 수 있습니다. 시작 위치로 돌아가려면 `cd ..`을 사용하면 됩니다.

![](/2022/Days/Images/Day15_Linux8.png)

`rmdir` 명령어를 사용하면 디렉토리를 삭제할 수 있습니다. 예를 들어, `rmdir Day15` 명령어를 실행하면 폴더가 삭제됩니다.(단, 해당 폴더가 비어있을 경우에만 작동합니다.)

![](/2022/Days/Images/Day15_Linux9.png)

가끔 파일 시스템의 깊은 곳에서 디렉토리를 찾았지만, 그 위치를 모르는 경우가 있습니다. `pwd` 명령어는 작업 디렉토리의 경로를 출력해주는데, 비밀번호처럼 보이지만 실제로는 "print working directory"의 약자입니다.

![](/2022/Days/Images/Day15_Linux10.png)

폴더와 디렉토리를 만드는 방법은 알고 있지만, 파일을 만드는 방법은 어떨까요? 파일을 생성하는 방법 중 하나는 `touch` 명령을 사용하는 것입니다. 예를 들어, `touch Day15` 명령을 실행하면 파일이 생성됩니다. `mkdir` 명령은 이후에 살펴볼 예정이므로, 지금은 무시하셔도 됩니다.

![](/2022/Days/Images/Day15_Linux11.png)

현재 디렉토리 내 모든 파일과 폴더를 나열하려면 `ls` 명령을 반복해서 사용해야 할 것입니다. 해당 명령어로 방금 생성한 파일이 있는지 확인해보겠습니다.

![](/2022/Days/Images/Day15_Linux12.png)

우리는 리눅스 시스템에서 어떻게 파일을 찾을 수 있을까요? `locate` 명령어를 사용하면 파일 시스템을 검색할 수 있습니다. 만약 `locate Day15`와 같이 입력하면 해당 파일의 위치를 알려줍니다. 또한, 파일이 존재하는데 검색 결과가 없다면 `sudo updatedb` 명령어를 실행하여 파일 시스템의 모든 파일을 인덱싱한 후 다시 `locate` 명령어를 실행하세요. 만약 `locate` 명령어가 없다면 `sudo apt install mlocate` 명령어를 사용하여 설치할 수 있습니다.

![](/2022/Days/Images/Day15_Linux13.png)

리눅스 시스템에서 파일을 찾으려면 어떻게 해야 할까요? `mv` 명령어를 사용하면 파일을 이동할 수 있습니다. 예를 들어, `mv Day15 90-Days-of-DevOps-as-a-Learning` 명령어는 Day15 파일을 90-Days-of-DevOps-as-a-Learning 폴더로 이동시킵니다.

![](/2022/Days/Images/Day15_Linux14.png)

파일을 옮겼는데, 이름을 변경하고 싶다면 어떻게 해야 할까요? 이름을 변경하려면 `mv` 명령어를 다시 사용하면 됩니다. 예를 들어, 대소문자를 변경하려면 `mv Day15 day15`와 같이 입력하고, 파일 이름을 완전히 바꾸려면 `mv day15 AnotherDay`와 같이 입력하면 됩니다. 변경 후에는 `ls` 명령어를 사용하여 파일이 정상적으로 변경되었는지 확인할 수 있습니다.

![](/2022/Days/Images/Day15_Linux15.png)

이제 파일과 디렉토리가 생성되면 디렉토리를 삭제해 보겠습니다. 파일을 삭제하려면 간단히 `rm AnotherDay` 명령어를 사용할 수 있습니다. 폴더를 재귀적으로(하위 폴더까지) 삭제하려면 `rm -R` 명령어를 사용하는 것이 일반적입니다. 또한, `rm -R -f` 명령어를 사용하여 해당 파일을 강제로 삭제할 수도 있습니다. 시스템과 영원한 작별 인사를 하고 싶다면 `sudo rm -R -f /`를 입력하면 됩니다._(주의: 이 명령어는 시스템을 완전히 삭제합니다. - 옮긴이)_

![](/2022/Days/Images/Day15_Linux16.png)

파일 이동에 대해 살펴봤는데, 한 폴더에서 다른 폴더로 파일을 복사하고 싶을 때는 `mv` 명령어 대신 `cp` 명령어를 사용해야 합니다. 이제 `cp Day15 Desktop`으로 파일을 복사할 수 있습니다.

![](/2022/Days/Images/Day15_Linux17.png)

폴더와 파일을 만들었지만, 폴더에는 아직 내용이 없습니다. 내용을 추가하는 몇 가지 방법이 있지만, 가장 쉬운 방법은 `echo`를 사용하는 것입니다. `echo`를 사용하면 터미널에서 많은 내용을 출력할 수 있습니다. 저는 시스템 변수가 설정되어 있는지를 확인하기 위해 시스템 변수를 출력할 때 echo를 자주 사용합니다. 파일에 내용을 추가하려면 `echo "Hello #90-Days-of-DevOps-as-a-Learning" > Day15`를 사용할 수 있습니다. 또는 `echo "Commands are fun!" >> Day15`를 사용할 수도 있습니다.

![](/2022/Days/Images/Day15_Linux18.png)

`cat`은 매우 자주 사용하는 명령어 중 하나입니다. `cat`은 "concatenate(연결)"의 약어로, `cat Day15` 명령어를 사용하여 파일 내용을 확인할 수 있습니다. 이 명령어는 구성 파일을 빠르게 읽을 때 유용합니다.

![](/2022/Days/Images/Day15_Linux19.png)

복잡한 구성 파일에서 모든 줄을 읽는 대신에, 특정한 단어를 찾고 싶거나 찾아야 하는 경우 `grep`을 사용할 수 있습니다. 예를 들면 `cat Day15 | grep "#90-Days-of-DevOps-as-a-Learning"`를 입력하여 파일에서 원하는 단어를 검색할 수 있습니다. 이렇게 하면 빠르게 결과를 얻을 수 있습니다.

![](/2022/Days/Images/Day15_Linux20.png)

제가 `clear` 명령을 자주 사용하여 이전에 실행한 일부 명령을 놓칠 수 있기 때문에, `history` 명령을 사용하여 이전에 실행한 모든 명령을 찾을 수 있습니다. `history -c` 명령은 기록을 제거합니다.

`history`를 실행하고 특정 명령을 선택하려는 경우 `!3`을 사용하여 목록에서 세 번째 명령을 선택할 수 있습니다.

또한 `history | grep "Command"`를 사용하여 특정 명령을 검색할 수도 있습니다.

서버에서 명령이 언제 실행되었는지 추적하려면 히스토리 파일의 각 명령에 날짜와 시간을 추가할 수도 있습니다.

다음 시스템 변수가 이 동작을 제어합니다:

```
HISTTIMEFORMAT="%d-%m-%Y %T "
```

bash_profile에 쉽게 추가할 수 있습니다:

```bash
echo 'export HISTTIMEFORMAT="%d-%m-%Y %T "' >> ~/.bash_profile
```

히스토리 파일을 더 크게 만들 수도 있습니다:

```bash
echo 'export HISTSIZE=100000' >> ~/.bash_profile
echo 'export HISTFILESIZE=10000000' >> ~/.bash_profile
```

![](/2022/Days/Images/Day15_Linux21.png)

비밀번호를 변경해야 하나요? `passwd` 명령어를 사용하여 비밀번호를 변경할 수 있습니다. 비밀번호가 숨겨져 있을 때는 이 명령어를 실행해도 `history`에 표시되지 않지만, 명령에 `-p PASSWORD`가 포함되면 `history`에 표시됩니다.

![](/2022/Days/Images/Day15_Linux22.png)

새로운 사용자를 시스템에 추가하고 싶을 경우 `sudo` 명령어를 사용하여 `sudo useradd NewUser`를 입력해야 합니다.

![](/2022/Days/Images/Day15_Linux23.png)

그룹을 재생성하려면 `sudo` 권한이 필요합니다. `sudo groupadd DevOps` 명령을 사용하여 새로운 사용자를 해당 그룹에 추가하려면 `sudo usermod -a -G DevOps` 명령을 실행하세요. `-a`는 추가를, `-G`는 그룹 이름을 나타냅니다.

![](/2022/Days/Images/Day15_Linux24.png)

`sudo` 그룹에 새로운 사용자를 추가하는 것은 드물기는 하지만, 이를 위해서는 `usermod -a -G sudo NewUser` 명령어를 입력하면 됩니다.

### 권한

읽기, 쓰기, 실행 권한은 Linux 시스템의 모든 파일과 폴더에 대한 권한입니다.

전체 목록입니다:

- 0 = 없음 `---`
- 1 = 실행만 `--X`
- 2 = 쓰기만 `-W-`
- 3 = 쓰기 및 실행 `-WX`
- 4 = 읽기 전용 `R--`
- 5 = 읽기 & 실행 `R-X`
- 6 = 읽기 및 쓰기 `RW-`
- 7 = 읽기, 쓰기 및 실행 `RWX`

또한 `777` 또는 `775`로도 표시되며 이는 위 목록과 동일한 숫자를 나타내지만 각각 **User - Group - Everyone**을 나타냅니다.

파일을 살펴봅시다. `ls -al Day15`를 실행하면 위에서 언급한 3개의 그룹을 볼 수 있으며, 사용자와 그룹은 읽기 및 쓰기 권한을 가지고 있지만 모두 읽기 권한만 있습니다.

![](/2022/Days/Images/Day15_Linux25.png)

시스템에서 많은 양의 바이너리를 생성하고 실행할 수 있는 기능을 제공해야 한다면, `chmod`를 사용하여 해당 바이너리에 대한 권한을 변경할 수 있습니다. 예를 들어, `chmod 750 Day15` 명령어를 실행하면 Day15 파일에 대한 권한을 설정할 수 있으며, `ls -al Day15` 명령어로 권한이 설정되었는지 확인할 수 있습니다. 전체 폴더에 대해 이 작업을 실행하려면 `-R` 옵션을 사용하여 재귀적으로(하위 폴더까지) 설정할 수 있습니다.

![](/2022/Days/Images/Day15_Linux26.png)

파일 소유자를 변경하는 것은 어떨까요? 이 작업에는 `chown`을 사용할 수 있습니다. `Day15`의 소유권을 사용자 `vagrant`에서 `NewUser`로 변경하려면 `sudo chown NewUser Day15`를 다시 `-R`로 실행할 수 있습니다.

![](/2022/Days/Images/Day15_Linux27.png)

특정 데이터만 필요한 출력을 얻을 때, 실제로 사용되는 명령어는 `awk`입니다. 예를 들어, `who`를 실행하면 정보가 포함된 줄을 얻을 수 있지만, 이름만 필요한 경우도 있습니다. 이때는 `who | awk '{print $1}'`를 실행하여 첫 번째 열에 해당하는 이름 목록만 가져올 수 있습니다.

![](/2022/Days/Images/Day15_Linux28.png)

데이터 스트림을 표준 입력에서 읽으려면 커맨드라인을 생성하고 실행해야 합니다. 이렇게 하면 명령의 출력을 가져와 다른 명령의 인수로 전달할 수 있습니다. 이러한 사용 사례에 유용한 도구로 `xargs`가 있습니다. 예를 들어, 실행 가능한 시스템에서 모든 Linux 사용자 계정의 목록을 가져오고 싶다면, `cut -d: -f1 < /etc/passwd`를 실행하면 아래와 같은 긴 목록이 생성됩니다.

![](/2022/Days/Images/Day15_Linux29.png)

이 목록을 압축하려면 `cut -d: -f1 < /etc/passwd | sort | xargs`와 같은 명령을 사용하면 됩니다. `xargs`를 추가로 사용합니다.

![](/2022/Days/Images/Day15_Linux30.png)

이미 언급된 것은 아니지만, `cut` 명령어는 파일에서 각 줄의 섹션을 제거하는 데 사용할 수 있습니다. 이 명령어는 바이트 위치, 문자 또는 필드 단위로 줄의 일부를 잘라내는 데 사용됩니다. 예를 들어, `cut -d " " -f 2 list.txt` 명령어를 사용하면 첫 글자를 제거하고 숫자만 표시할 수 있습니다. 많은 조합이 있기 때문에 수동으로 데이터를 추출하는 것보다 이 명령어를 사용하는 것이 더 빠를 수 있습니다.

![](/2022/Days/Images/Day15_Linux31.png)

명령을 입력을 멈추고 때는 컨트롤 + C를 누르면 해당 줄이 취소되고 새로 시작됩니다.

## 자료

- [Learn the Linux Fundamentals - Part 1](https://www.youtube.com/watch?v=kPylihJRG70)
- [Linux for hackers (don't worry you don't need to be a hacker!)](https://www.youtube.com/watch?v=VbEx7B_PTOE)

[Day 16](day16.md)에서 봐요!

목록이 꽤 길지만, 리눅스 서버를 관리하거나 리눅스 데스크톱에서 작업하는 등 일상에서 이 명령어를 모두 활용한다고 자신 있게 말할 수 있습니다. Windows나 macOS에서는 UI를 탐색하는 것이 간단하지만, 터미널을 통해 모든 것이 이루어지는 Linux 서버에서는 그렇지 않습니다.
