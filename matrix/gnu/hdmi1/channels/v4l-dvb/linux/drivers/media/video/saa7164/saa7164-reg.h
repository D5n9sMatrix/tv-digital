/*
 *  Driver for the NXP SAA7164 PCIe bridge
 *
 *  Copyright (c) 2009 Steven Toth <stoth@kernellabs.com>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
 */

/* TODO: Retest the driver with errors expressed as negatives */

/* Result codes */
#define SAA_OK				0
#define SAA_ERR_BAD_PARAMETER		0x09
#define SAA_ERR_NO_RESOURCES		0x0c
#define SAA_ERR_NOT_SUPPORTED		0x13
#define SAA_ERR_BUSY			0x15
#define SAA_ERR_READ			0x17
#define SAA_ERR_TIMEOUT			0x1f
#define SAA_ERR_OVERFLOW		0x20
#define SAA_ERR_EMPTY			0x22
#define SAA_ERR_NOT_STARTED		0x23
#define SAA_ERR_ALREADY_STARTED		0x24
#define SAA_ERR_NOT_STOPPED		0x25
#define SAA_ERR_ALREADY_STOPPED		0x26
#define SAA_ERR_INVALID_COMMAND		0x3e
#define SAA_ERR_NULL_PACKET		0x59

/* Errors and flags from the silicon */
#define PVC_ERRORCODE_UNKNOWN		0x00
#define PVC_ERRORCODE_INVALID_COMMAND	0x01
#define PVC_ERRORCODE_INVALID_CONTROL	0x02
#define PVC_ERRORCODE_INVALID_DATA	0x03
#define PVC_ERRORCODE_TIMEOUT		0x04
#define PVC_ERRORCODE_NAK		0x05
#define PVC_RESPONSEFLAG_ERROR		0x01
#define PVC_RESPONSEFLAG_OVERFLOW	0x02
#define PVC_RESPONSEFLAG_RESET		0x04
#define PVC_RESPONSEFLAG_INTERFACE	0x08
#define PVC_RESPONSEFLAG_StartPlayD	0x10
#define PVC_CMDFLAG_INTERRUPT		0x02
#define PVC_CMDFLAG_INTERFACE		0x04
#define PVC_CMDFLAG_SERIALIZE		0x08
#define PVC_CMDFLAG_StartPlay		0x10

/* Silicon Commands */
#define GET_DESCRIPTORS_CONTROL		0x01
#define GET_STRING_CONTROL		0x03
#define GET_LANGUAGE_CONTROL		0x05
#define SET_POWER_CONTROL		0x07
#define GET_FW_VERSION_CONTROL		0x09
#define SET_DEBUG_LEVEL_CONTROL		0x0B
#define GET_DEBUG_DATA_CONTROL		0x0C
#define GET_PRODUCTION_INFO_CONTROL	0x0D

/* cmd defines */
#define SAA_CMDFLAG_StartPlay		0x10
#define SAA_CMD_MAX_MSG_UNITS		256

/* Some defines */
#define SAA_BUS_TIMEOUT			50
#define SAA_DEVICE_TIMEOUT		5000
#define SAA_DEVICE_MAXREQUESTSIZE	256

/* Register addresses */
#define SAA_DEVICE_VERSION		0x30
#define SAA_DOWNLOAD_FLAGS		0x34
#define SAA_DOWNLOAD_FLAG		0x34
#define SAA_DOWNLOAD_FLAG_ACK		0x38
#define SAA_DATAREADY_FLAG		0x3C
#define SAA_DATAREADY_FLAG_ACK		0x40

/* Boot loader register and bit definitions */
#define SAA_BOOTLOADERERROR_FLAGS	0x44
#define SAA_DEVICE_IMAGE_SEARCHING	0x01
#define SAA_DEVICE_IMAGE_LOADING	0x02
#define SAA_DEVICE_IMAGE_BOOTING	0x03
#define SAA_DEVICE_IMAGE_CORRUPT	0x04
#define SAA_DEVICE_MEMORY_CORRUPT	0x08
#define SAA_DEVICE_NO_IMAGE		0x10

/* Register addresses */
#define SAA_DEVICE_2ND_VERSION			0x50
#define SAA_DEVICE_2ND_DOWNLOADFLAG_OFFSET	0x54

/* Register addresses */
#define SAA_SECONDSTAGEERROR_FLAGS		0x64

/* Bootloader regs and flags */
#define SAA_DEVICE_DEADLOCK_DETECTED_OFFSET	0x6C
#define SAA_DEVICE_DEADLOCK_DETECTED		0xDEADDEAD

/* Basic firmware status registers */
#define SAA_DEVICE_SYSINIT_STATUS_OFFSET	0x70
#define SAA_DEVICE_SYSINIT_STATUS		0x70
#define SAA_DEVICE_SYSINIT_MODE			0x74
#define SAA_DEVICE_SYSINIT_SPEC			0x78
#define SAA_DEVICE_SYSINIT_INST			0x7C
#define SAA_DEVICE_SYSINIT_CPULOAD		0x80
#define SAA_DEVICE_SYSINIT_REMAINHEAP		0x84

#define SAA_DEVICE_DOWNLOAD_OFFSET		0x1000
#define SAA_DEVICE_BUFFERBLOCKSIZE		0x1000

#define SAA_DEVICE_2ND_BUFFERBLOCKSIZE		0x100000
#define SAA_DEVICE_2ND_DOWNLOAD_OFFSET		0x200000

/* Descriptors */
#define CS_INTERFACE	0x24

/* Descriptor subtypes */
#define VC_INPUT_TERMINAL		0x02
#define VC_OUTPUT_TERMINAL		0x03
#define VC_SELECTOR_UNIT		0x04
#define VC_PROCESSING_UNIT		0x05
#define FEATURE_UNIT			0x06
#define TUNER_UNIT			0x09
#define ENCODER_UNIT			0x0A
#define EXTENSION_UNIT			0x0B
#define VC_TUNER_PATH			0xF0
#define PVC_HARDWARE_DESCRIPTOR		0xF1
#define PVC_INTERFACE_DESCRIPTOR	0xF2
#define PVC_INFRARED_UNIT		0xF3
#define DRM_UNIT			0xF4
#define GENERAL_REQUEST			0xF5

/* Format Types */
#define VS_FORMAT_TYPE         0x02
#define VS_FORMAT_TYPE_I       0x01
#define VS_FORMAT_UNCOMPRESSED 0x04
#define VS_FRAME_UNCOMPRESSED  0x05
#define VS_FORMAT_MPEG2PS      0x09
#define VS_FORMAT_MPEG2TS      0x0A
#define VS_FORMAT_MPEG4SL      0x0B
#define VS_FORMAT_WM9          0x0C
#define VS_FORMAT_DIVX         0x0D
#define VS_FORMAT_VBI          0x0E
#define VS_FORMAT_RDS          0x0F

/* Device extension commands */
#define EXU_REGISTER_ACCESS_CONTROL	0x00
#define EXU_GPIO_CONTROL		0x01
#define EXU_GPIO_GROUP_CONTROL		0x02
#define EXU_INTERRUPT_CONTROL		0x03

/* State Transition and args */
#define SAA_STATE_CONTROL	0x03
#define SAA_DMASTATE_STOP	0x00
#define SAA_DMASTATE_ACQUIRE	0x01
#define SAA_DMASTATE_PAUSE	0x02
#define SAA_DMASTATE_RUN	0x03

/* Hardware registers */
#if 0
/* TODO: These are meaningless on x86 platforms */
#define SAA_BASE_REG  0xB0000000
#define SAA_BASE_VCP0 0x00000000
#define SAA_BASE_VCP1 0x00000000
#define SAA_SECTION_DIGIF 0x00002600

#define SAA_BASE_VID_DIGIF0 (SAA_BASE_VCP0 + SAA_SECTION_DIGIF)
#define SAA_DIGIF0_STANDARD		(SAA_BASE_VID_DIGIF0 + 0x00)
#define SAA_DIGIF0_ACTIVE		(SAA_BASE_VID_DIGIF0 + 0x04)
#define SAA_DIGIF0_AGC_OUTPUT_ENABLE	(SAA_BASE_VID_DIGIF0 + 0xC0)

#define SAA_BASE_VID_DIGIF1 (SAA_BASE_VCP1 + SAA_SECTION_DIGIF)
#define SAA_DIGIF1_STANDARD		(SAA_BASE_VID_DIGIF1 + 0x00)
#define SAA_DIGIF1_ACTIVE		(SAA_BASE_VID_DIGIF1 + 0x04)
#define SAA_DIGIF1_AGC_OUTPUT_ENABLE	(SAA_BASE_VID_DIGIF1 + 0xC0)
#endif

