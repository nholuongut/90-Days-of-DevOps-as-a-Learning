---
title: '#90-Days-of-DevOps-as-a-Learning - The Big Picture: CI/CD Pipelines - Day 70'
published: false
description: 90-Days-of-DevOps-as-a-Learning - The Big Picture CI/CD Pipelines
tags: 'devops, 90-Days-of-DevOps-as-a-Learning, learning'
cover_image: null
canonical_url: null
id: 1048836
---

## 큰 그림: CI/CD 파이프라인

CI/CD(지속적 통합/지속적 배포) 파이프라인 구현은 최신 DevOps 환경의 중추입니다.

파이프라인은 애플리케이션의 빌드, 테스트 및 배포를 자동화하여 개발과 운영 간의 격차를 해소합니다.

챌린지의 첫 번째 섹션에서 이 중요한 요소에 대해 많이 다루었습니다. 하지만 다시 한번 말씀드리자면:

지속적 통합(CI)은 점진적인 코드 변경을 더 자주 그리고 안정적으로 수행하는 보다 현대적인 소프트웨어 개발 관행입니다. 지속적 통합에 의해 트리거되는 자동화된 빌드 및 테스트 Workflow Step은 리포지토리에 병합되는 코드 변경 사항을 신뢰할 수 있도록 보장합니다.

그런 다음 해당 코드/애플리케이션은 지속적 배포 프로세스의 일부로 신속하고 원활하게 제공됩니다.

### CI/CD의 중요성은?

- 소프트웨어를 빠르고 효율적으로 배포
- 애플리케이션을 최대한 빠르게 시장에 출시하기 위한 효과적인 프로세스를 촉진합니다.
- 버전 릴리스를 위해 몇 달 또는 몇 년을 기다릴 필요 없이 버그 수정 및 새로운 기능을 지속적으로 제공할 수 있습니다.

개발자가 영향력 있는 작은 변경을 정기적으로 수행할 수 있으므로 더 빠른 수정과 더 많은 기능을 더 빨리 얻을 수 있습니다.

### 자, 이게 무슨 뜻인가요?

[Day 5](day05.md)에서 데브옵스에 대한 많은 이론을 다뤘으며, 이미 여기에서 CI/CD 파이프라인이 최신 데브옵스 환경의 핵심이라고 언급했듯이, 이 파이프라인은 최신 데브옵스 환경의 기본입니다.

![데브옵스](/2022/Days/Images/Day5_DevOps8.png)

이제 데브옵스의 기본을 배우는 여정에 조금 더 들어섰으므로 위 이미지의 몇 가지 핵심 사항을 다시 한번 강조하고 싶습니다.

소프트웨어 개발 수명 주기(SDLC)를 언급하고 있습니다.

이 주기는 영원히 반복되는 주기이기 때문에 일반적으로 무한 루프 내에 단계가 기록됩니다.

개발자가 **코드**를 작성하면 **빌드**되거나 모두 컴파일되고, 버그가 있는지 **테스트**되고, 최종 사용자나 고객이 사용하는 프로덕션에 **배포**되고(**운영**), **모니터링** 및 피드백을 수집하고, 마지막으로 해당 피드백을 중심으로 개선 사항을 **계획**하고 반복하는 것이 이 주기의 단계입니다.

### CI/CD에 대해 좀 더 자세히 알아봅시다.

### CI

CI는 개발자가 하루에 여러 번 공유 리포지토리에 코드를 통합해야 하는 개발 관행입니다.

코드가 작성되어 Github 또는 GitLab과 같은 리포지토리에 push되면 마법이 시작됩니다.

![](/2022/Days/Images/Day70_CICD1.png)

자동화된 빌드를 통해 코드가 검증되므로 팀이나 프로젝트 소유자가 문제를 조기에 발견할 수 있습니다.

![](/2022/Days/Images/Day70_CICD2.png)

여기에서 코드를 분석하고 일련의 자동화된 테스트를 수행하는데, 세 가지 예는 다음과 같습니다.

- 단위 테스트는 소스 코드의 개별 단위를 테스트합니다.
- 유효성 검사 테스트는 소프트웨어가 의도된 용도를 충족하거나 적합한지 확인합니다.
- 형식 테스트는 구문 및 기타 형식 지정 오류를 확인합니다.

이러한 테스트는 workflow로 생성된 다음 마스터 브랜치로 push할 때마다 실행되므로 거의 모든 주요 개발팀에는 일종의 CI/CD workflow가 있으며, 개발팀에서는 하루 종일 전 세계의 여러 팀에서 다양한 프로젝트를 진행하는 개발자로부터 새로운 코드가 들어올 수 있으므로 코드가 승인되기 전에 모든 사람이 같은 페이지에 있는지 확인하는 테스트의 자동화된 workflow를 구축하는 것이 더 효율적입니다. 사람이 매번 이 작업을 수행하려면 훨씬 더 오랜 시간이 걸립니다.

![](/2022/Days/Images/Day70_CICD3.png)

테스트가 완료되고 성공하면 컴파일하여 리포지토리로 보낼 수 있습니다. 예를 들어, 저는 DockerHub를 사용하고 있지만 파이프라인의 CD 측면에 활용되는 모든 곳이 될 수 있습니다.

![](/2022/Days/Images/Day70_CICD4.png)

따라서 이 프로세스는 소프트웨어 개발 프로세스와 매우 유사하며, 애플리케이션을 만들고, 버그를 추가하고, 수정한 다음 소스 제어를 업데이트하고, 테스트하면서 버전도 관리합니다.

다음 단계로 넘어가면 CD 요소인데, 일반적으로 상용 소프트웨어에서 볼 수 있는 CD 요소는 점점 더 많아지고 있으며, 오라클이나 Microsoft와 같은 공급업체로부터 소프트웨어를 받으면 DockerHub 유형 리포지토리에서 이를 소비한 다음 CD 파이프라인을 사용하여 환경에 배포하는 추세를 보게 될 것이라고 주장하고 싶습니다.

### CD

이제 테스트된 버전의 코드를 배포할 준비가 되었습니다. 소프트웨어 공급업체가 이 단계를 진행하겠지만, 저는 이것이 앞으로 우리 모두가 필요한 상용 소프트웨어를 배포하는 방식이 될 것이라고 굳게 믿습니다.

이제 코드를 환경에 배포할 차례입니다. 여기에는 프로덕션 환경뿐만 아니라 스테이징과 같은 다른 환경도 포함될 것입니다.

![](/2022/Days/Images/Day70_CICD5.png)

소프트웨어 배포 1일차에서 다음 단계는 올바른 코드 베이스를 올바른 환경으로 가져오고 있는지 확인하는 것입니다. 소프트웨어 리포지토리(DockerHub)에서 요소를 가져올 수도 있지만, 다른 코드 리포지토리에서 추가 구성, 예를 들어 애플리케이션에 대한 구성을 가져올 수도 있습니다. 아래 다이어그램에서는 DockerHub에서 소프트웨어의 최신 릴리스를 가져온 다음 이를 환경에 릴리스하는 동시에 Git 리포지토리에서 구성을 가져올 수 있습니다. CD 도구가 이 작업을 수행하여 모든 것을 환경에 push합니다.

이 작업은 동시에 수행되지 않을 가능성이 높습니다. 즉, 구성이 올바른지 확인하기 위해 스테이징 환경으로 이동하여 이 구성에 대해 실행한 후 테스트를 위한 수동 단계일 수도 있고, 이 코드를 프로덕션에 배포하기 전에 다시 자동화할 수도 있습니다(자동화로 가겠습니다).

![](/2022/Days/Images/Day70_CICD6.png)

그런 다음 애플리케이션의 v2가 나오면 이번에는 단계를 반복하여 애플리케이션 + 구성이 스테이징에 배포되어 모든 것이 정상인지 확인한 다음 프로덕션에 배포합니다.

### CI/CD를 사용하는 이유는 무엇인가요?

이미 여러 번 이점에 대해 설명했지만, 수동으로 수행해야 하는 작업을 자동화하여 작은 문제가 메인 코드 베이스에 들어가기 전에 발견하기 때문입니다. 고객에게 잘못된 코드를 push하면 큰 문제가 발생할 수 있다는 것을 상상할 수 있을 것입니다!

또한 메인 코드 리포지토리는 시간이 지남에 따라 지속적으로 구축되기 때문에 첫날에 수행한 지름길 수정이 몇 년 후 기하급수적으로 더 많은 비용이 드는 수정이 될 수 있다는 생각인 기술 부채를 방지하는 데 도움이 됩니다.

### 도구

다른 섹션과 마찬가지로 CI/CD 파이프라인 프로세스를 달성하는 몇 가지 도구에 대해 실습해 보겠습니다.

모든 도구가 CI와 CD를 모두 수행해야 하는 것은 아니며, 소프트웨어를 Kubernetes 클러스터에 배포하는 데 있어 CD 요소에 능숙한 ArgoCD를 살펴볼 것입니다. 하지만 Jenkins와 같은 것은 다양한 플랫폼에서 작동할 수도 있습니다.

저는 다음을 살펴볼 계획입니다:

- Jenkins
- ArgoCD
- GitHub Actions

## 자료

- [Jenkins is the way to build, test, deploy](https://youtu.be/_MXtbjwsz3A)
- [Introduction to Jenkins](https://www.edx.org/course/introduction-to-jenkins)
- [Jenkins.io](https://www.jenkins.io/)
- [ArgoCD](https://argo-cd.readthedocs.io/en/stable/)
- [ArgoCD Tutorial for Beginners](https://www.youtube.com/watch?v=MeU5_k9ssrs)
- [What is Jenkins?](https://www.youtube.com/watch?v=LFDrDnKPOTg)
- [Complete Jenkins Tutorial](https://www.youtube.com/watch?v=nCKxl7Q_20I&t=3s)
- [GitHub Actions](https://www.youtube.com/watch?v=R8_veQiYBjI)
- [GitHub Actions CI/CD](https://www.youtube.com/watch?v=mFFXuXjVgkU)

[Day 71](day71.md)에서 봐요!
