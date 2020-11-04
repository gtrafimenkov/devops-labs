# SPDX-License-Identifier: MIT
# Copyright (c) 2020 Gennady Trafimenkov

# Print usage instructions by default
default:
	@echo "Usage:"
	@grep @doc Makefile | grep -v grep | sed 's/# @doc/-/g' | sed s/://g | sed -e 's/^/  /'

k8s-eks-get-config:		# @doc Fetch kubeconfig for the EKS cluster
	aws --region $$AWS_REGION eks update-kubeconfig --name $$EKS_CLUSTER

update-toc:			# @doc Update readme.md table of content
	markdown-toc --min 2 readme.md
