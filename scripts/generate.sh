#!/bin/bash

if !command -v kustomize &> /dev/null; then
    echo "kustomize is not installed, see https://kubectl.docs.kubernetes.io/installation/kustomize/ for more details."
    exit 1
fi

# yamllint requires the initial `---` in the file but this isn't generated by kustomize
echo "---" > common-instancetypes-all-bundle.yaml
kustomize build >> common-instancetypes-all-bundle.yaml

echo "---" > common-instancetypes-bundle.yaml
kustomize build VirtualMachineInstancetypes >> common-instancetypes-bundle.yaml

echo "---" > common-clusterinstancetypes-bundle.yaml
kustomize build VirtualMachineClusterInstancetypes >> common-clusterinstancetypes-bundle.yaml

echo "---" > common-preferences-bundle.yaml
kustomize build VirtualMachinePreferences >> common-preferences-bundle.yaml

echo "---" > common-clusterpreferences-bundle.yaml
kustomize build VirtualMachineClusterPreferences >> common-clusterpreferences-bundle.yaml
