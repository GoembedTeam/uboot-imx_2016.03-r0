/*
 * Copyright (c) 2015 Google, Inc
 *
 * SPDX-License-Identifier:	GPL-2.0+
 */

#include <common.h>
#include <dm.h>
#include <pci.h>
#include <asm/pci.h>

static const struct dm_pci_ops pci_x86_ops = {
	.read_config	= pci_x86_read_config,
	.write_config	= pci_x86_write_config,
};

static const struct udevice_id pci_x86_ids[] = {
	{ .compatible = "pci-x86" },
	{ }
};

U_BOOT_DRIVER(pci_x86) = {
	.name	= "pci_x86",
	.id	= UCLASS_PCI,
	.of_match = pci_x86_ids,
	.ops	= &pci_x86_ops,
};
