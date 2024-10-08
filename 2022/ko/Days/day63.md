---
title: '#90-Days-of-DevOps-as-a-Learning - The Big Picture: Configuration Management - Day 63'
published: false
description: 90-Days-of-DevOps-as-a-Learning - The Big Picture Configuration Management
tags: 'devops, 90-Days-of-DevOps-as-a-Learning, learning'
cover_image: null
canonical_url: null
id: 1048711
---

## 큰 그림: 구성 관리

IaC를 다루는 섹션의 뒷부분에서 바로 이어서 구성 관리 또는 애플리케이션 구성 관리에 대해 이야기할 때 약간의 교차점이 있을 것입니다.

구성 관리는 애플리케이션, 시스템, 서버를 원하는 상태로 유지하는 프로세스입니다. 인프라스트럭처와 겹치는 부분은 IaC가 인프라가 원하는 상태에 있는지 확인하지만, 그 이후에는 특히 Terraform이 OS 설정이나 애플리케이션의 원하는 상태를 관리하지 않기 때문에 구성 관리 도구가 필요하다는 점입니다. Deane에서 변경 사항이 발생할 때 시스템과 애플리케이션이 예상대로 작동하는지 확인합니다.

구성 관리는 문서화되지 않은 크고 작은 변경을 방지합니다.

### 시나리오: 구성 관리를 사용하려는 이유

구성 관리를 사용하고자 하는 시나리오나 이유를 알기 위해 철수를 만나보세요. 철수는 우리의 시스템 관리자이며, 환경 내의 모든 시스템에서 열심히 일하며 만족하는 사람입니다.

시스템에 장애가 발생하거나 화재가 발생하거나 서버가 다운되면 어떻게 될까요? 철수는 화재가 발생하면 어떻게 해야 하는지 정확히 알고 있기 때문에 쉽게 해결할 수 있지만, 특히 대규모로 확장하는 환경에서 여러 서버가 장애를 일으키기 시작하면 철수에게 구성 관리 도구가 필요한 이유가 바로 여기에 있습니다. 구성 관리 도구는 철수가 각 서버를 빠르고 효과적으로 대규모로 설정하는 방법에 대한 지침을 푸시할 수 있는 올바른 코드를 구성하기만 하면 되는 록스타처럼 보이도록 도와줄 수 있습니다.

### 구성 관리 도구

다양한 구성 관리 도구를 사용할 수 있으며, 각 도구에는 특정 상황에 더 적합한 특정 기능이 있습니다.

![](/2022/Days/Images/Day63_config1.png)

이 단계에서는 위 그림의 옵션을 간략히 살펴본 후 어떤 도구를 사용할지, 왜 사용할지 결정하겠습니다.

- **Chef**
  - Chef는 인프라 자동화를 통해 모든 환경, 모든 규모에서 구성이 일관되게 적용되도록 보장합니다.
  - Chef는 Ruby와 Erlang으로 작성된 OpsCode에서 개발한 오픈 소스 도구입니다.
  - Chef는 이기종 인프라를 보유하고 있으며 성숙한 솔루션을 찾고 있는 조직에 가장 적합합니다.
  - Recipes와 Cookbooks은 시스템의 구성 코드를 결정합니다.
  - 프로 - 방대한 Recipes 컬렉션을 사용할 수 있습니다.
  - 장점 - 강력한 버전 제어를 제공하는 Git과 잘 통합됩니다.
  - 단점 - 학습 곡선이 가파르며 상당한 시간이 필요합니다
  - 단점 - 메인 서버에서 제어할 수 있는 권한이 많지 않습니다.
  - 아키텍처 - 서버/클라이언트
  - 설정 용이성 - 보통
  - 언어 - 절차적 - 작업 수행 방법 지정
- **Puppet**
  - Puppet은 자동 배포를 지원하는 구성 관리 도구입니다.
  - Puppet은 Ruby로 빌드되며 매니페스트 작성에 DSL을 사용합니다.
  - Puppet은 확장성에 중점을 둔 이기종 인프라에서도 잘 작동합니다.
  - 장점 - 지원을 위한 대규모 커뮤니티가 있습니다.
  - 장점 - 잘 발달된 보고 메커니즘입니다.
  - 단점 - 고급 작업을 수행하려면 Ruby 언어에 대한 지식이 필요합니다.
  - 단점 - 메인 서버에 대한 제어 권한이 많지 않습니다.
  - 아키텍처 - 서버/클라이언트
  - 설정 용이성 - 보통
  - 언어 - 선언적 - 수행할 작업만 지정 가능
- **Ansible**
  - Ansible은 구성 관리, 클라우드 프로비저닝, 배포 및 오케스트레이션을 자동화하는 IT 자동화 도구입니다.
  - Ansible Playbook의 핵심은 YAML로 작성되어 있습니다. (몇 번 본 적이 있으므로 YAML에 대한 섹션을 만들어야 합니다.)
  - Ansible은 빠르게 시작하고 실행하는 데 중점을 두는 환경이 있을 때 잘 작동합니다.
  - 서버에 지침을 제공하는 Playbook에서 작동합니다.
  - 장점 - 원격 노드에 에이전트가 필요하지 않습니다.
  - 장점 - YAML은 배우기 쉽습니다.
  - 단점 - 성능 속도가 다른 도구보다 느린 경우가 많습니다.(철수가 직접 수동으로 수행하는 것보다 빠름)
  - 단점 - YAML은 Ruby만큼 강력하지는 않지만 학습 곡선이 적습니다.
  - 아키텍처 - 클라이언트 전용
  - 설정 용이성 - 매우 쉬움
  - 언어 - 절차적 - 작업 수행 방법 지정
- **SaltStack**
  - SaltStack은 구성 관리와 원격 실행을 자동화하는 CLI 기반 도구입니다.
  - SaltStack은 Python 기반이며, 명령어는 YAML 또는 해당 DSL로 작성됩니다.
  - 확장성과 복원력을 최우선으로 고려하는 환경에 적합합니다.
  - 장점 - 가동 및 실행 시 사용이 간편합니다.
  - 장점 - 우수한 보고 메커니즘입니다.
  - 단점 - 설정 단계가 까다롭습니다.
  - 단점 - 다른 서비스보다 훨씬 덜 개발된 새로운 웹 UI가 있습니다.
  - 아키텍처 - 서버/클라이언트
  - 설정 용이성 - 보통
  - 언어 - 선언적 - 수행할 작업만 지정함

### Ansible과 Terraform 비교

이 섹션에서 사용할 도구는 Ansible입니다. (사용하기 쉽고 언어에 지식이 약간만 필요합니다.)

도구를 좀 더 자세히 살펴보기 전에 Ansible과 Terraform의 몇 가지 차이점을 살펴보는 것이 중요하다고 생각합니다.

|                   | Ansible                                                                                 | Terraform                                                           |
| ----------------- | --------------------------------------------------------------------------------------- | ------------------------------------------------------------------- |
| 유형              | Ansible은 구성 관리 도구입니다.                                                         | Terraform은 오케스트레이션 도구입니다.                              |
| 인프라            | Ansible은 변경 가능한 인프라를 지원하며, Terraform은 변경 불가능한 인프라를 지원합니다. |
| 언어              | Ansible은 절차적 언어를 따르고, Terraform은 선언적 언어를 따릅니다.                     |
| 프로비저닝        | 부분 프로비저닝(VM, 네트워크, 스토리지) 제공합니다.                                     | Terraform은 광범위한 프로비저닝(VM, 네트워크, 스토리지) 제공합니다. |
| 패키징            | 패키징 및 템플릿에 대한 완벽한 지원 제공합니다.                                         | 패키징 및 템플릿에 대한 부분 지원 제공합니다.                       |
| 라이프사이클 관리 | Ansible에는 라이프사이클 관리 기능이 없습니다.                                          | Terraform은 라이프사이클 및 상태 관리에 크게 의존합니다.            |

## 자료

- [What is Ansible](https://www.youtube.com/watch?v=1id6ERvfozo)
- [Ansible 101 - Episode 1 - Introduction to Ansible](https://www.youtube.com/watch?v=goclfp6a2IQ)
- [NetworkChuck - You need to learn Ansible right now!](https://www.youtube.com/watch?v=5hycyr-8EKs&t=955s)

[Day 64](day64.md)에서 봐요!
