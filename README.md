# kubevirt/common-instancetypes

A set of [instance types and preferences](https://kubevirt.io/user-guide/virtual_machines/instancetypes/) to help create [`KubeVirt`](https://kubevirt.io)  [`VirtualMachines`](http://kubevirt.io/api-reference/main/definitions.html#_v1alpha1_virtualmachine).

## Installation

Bundles of pre-generated instance type and preference resources are available within this repository and can be applied
directly to an existing [`Kubernetes`](https://kubernetes.io/) cluster with [`KubeVirt`](https://kubevirt.io) installed using [`kubectl`](https://kubernetes.io/docs/reference/kubectl/):

```
$ kubectl apply -f ./common-instancetypes-all-bundle.yaml
```

Additionally [kustomize](https://kustomize.io/) can be used to generate these resources before applying them to the cluster with [`kubectl`](https://kubernetes.io/docs/reference/kubectl/)

```
$ kustomize build ./ | kubectl apply -f -
```

A number of resource specific [kustomize](https://kustomize.io/) build configs are also provided and allow limited generation, for example the following command will generate and install only the [`VirtualMachineInstancetype`](http://kubevirt.io/api-reference/main/definitions.html#_v1alpha2_virtualmachineinstancetype) resources:

```
$ kustomize build ./VirtualMachineInstancetypes | kubectl apply -f -
```

Additional targets are avilable for [`./VirtualMachineClusterInstancetypes`](http://kubevirt.io/api-reference/main/definitions.html#_v1alpha2_virtualmachineclusterinstancetype), [`./VirtualMachineClusterPreferences`](http://kubevirt.io/api-reference/main/definitions.html#_v1alpha2_virtualmachineclusterpreference) and [`./VirtualMachinePreferences`](http://kubevirt.io/api-reference/main/definitions.html#_v1alpha2_virtualmachinepreference).

## Requirements

The following tools are required by each `Makefile` target:

* `make`
  * `make lint`
    * [yamllint](https://github.com/adrienverge/yamllint)
    * [bashate](https://github.com/openstack/bashate)
  * `make generate`
    * [kustomize](https://kustomize.io/)
  * `make validate`
    * [kustomize](https://kustomize.io/)
    * [kubeconform](https://github.com/yannh/kubeconform)
  * `make readme`
    * [yq](https://github.com/mikefarah/yq)
* `make schema` (optional)
  * [openapi2jsonschema](https://github.com/instrumenta/openapi2jsonschema)

## Running Makefile targets within a container

A [`Dockerfile`](./Dockerfile) is available that provides all of the above dependencies.

To build and use this simply set the `COMMON_INSTANCETYPES_CRI` env variable to `docker` or `podman` before running `make build_image`:

```
$ COMMON_INSTANCETYPES_CRI=docker make build_image
$ COMMON_INSTANCETYPES_CRI=docker make
```

## Resources

The following instance type and preference resources are provided by this project:

```

VirtualMachineClusterInstancetype
highperformance.large
---
VirtualMachineClusterInstancetype
highperformance.medium
---
VirtualMachineClusterInstancetype
highperformance.small
---
VirtualMachineClusterInstancetype
server.large
---
VirtualMachineClusterInstancetype
server.medium
---
VirtualMachineClusterInstancetype
server.small
---
VirtualMachineClusterInstancetype
server.tiny
---
VirtualMachineClusterPreference
alpine
---
VirtualMachineClusterPreference
centos.7
---
VirtualMachineClusterPreference
centos.7.desktop
---
VirtualMachineClusterPreference
centos.8
---
VirtualMachineClusterPreference
centos.8.desktop
---
VirtualMachineClusterPreference
centos.9
---
VirtualMachineClusterPreference
centos.9.desktop
---
VirtualMachineClusterPreference
cirros
---
VirtualMachineClusterPreference
fedora.35
---
VirtualMachineClusterPreference
fedora.36
---
VirtualMachineClusterPreference
rhel.7
---
VirtualMachineClusterPreference
rhel.7.desktop
---
VirtualMachineClusterPreference
rhel.8
---
VirtualMachineClusterPreference
rhel.8.desktop
---
VirtualMachineClusterPreference
rhel.9
---
VirtualMachineClusterPreference
rhel.9.desktop
---
VirtualMachineClusterPreference
ubuntu.18.04
---
VirtualMachineClusterPreference
ubuntu.20.04
---
VirtualMachineClusterPreference
ubuntu.22.04
---
VirtualMachineClusterPreference
windows.10
---
VirtualMachineClusterPreference
windows.10.virtio
---
VirtualMachineClusterPreference
windows.11
---
VirtualMachineClusterPreference
windows.11.virtio
---
VirtualMachineClusterPreference
windows.2k12
---
VirtualMachineClusterPreference
windows.2k12.virtio
---
VirtualMachineClusterPreference
windows.2k16
---
VirtualMachineClusterPreference
windows.2k16.virtio
---
VirtualMachineClusterPreference
windows.2k19
---
VirtualMachineClusterPreference
windows.2k19.virtio
---
VirtualMachineInstancetype
highperformance.large
---
VirtualMachineInstancetype
highperformance.medium
---
VirtualMachineInstancetype
highperformance.small
---
VirtualMachineInstancetype
server.large
---
VirtualMachineInstancetype
server.medium
---
VirtualMachineInstancetype
server.small
---
VirtualMachineInstancetype
server.tiny
---
VirtualMachinePreference
alpine
---
VirtualMachinePreference
centos.7
---
VirtualMachinePreference
centos.7.desktop
---
VirtualMachinePreference
centos.8
---
VirtualMachinePreference
centos.8.desktop
---
VirtualMachinePreference
centos.9
---
VirtualMachinePreference
centos.9.desktop
---
VirtualMachinePreference
cirros
---
VirtualMachinePreference
fedora.35
---
VirtualMachinePreference
fedora.36
---
VirtualMachinePreference
rhel.7
---
VirtualMachinePreference
rhel.7.desktop
---
VirtualMachinePreference
rhel.8
---
VirtualMachinePreference
rhel.8.desktop
---
VirtualMachinePreference
rhel.9
---
VirtualMachinePreference
rhel.9.desktop
---
VirtualMachinePreference
ubuntu.18.04
---
VirtualMachinePreference
ubuntu.20.04
---
VirtualMachinePreference
ubuntu.22.04
---
VirtualMachinePreference
windows.10
---
VirtualMachinePreference
windows.10.virtio
---
VirtualMachinePreference
windows.11
---
VirtualMachinePreference
windows.11.virtio
---
VirtualMachinePreference
windows.2k12
---
VirtualMachinePreference
windows.2k12.virtio
---
VirtualMachinePreference
windows.2k16
---
VirtualMachinePreference
windows.2k16.virtio
---
VirtualMachinePreference
windows.2k19
---
VirtualMachinePreference
windows.2k19.virtio

```
